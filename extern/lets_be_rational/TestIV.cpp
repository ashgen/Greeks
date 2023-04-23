//
// Created by ashish on 5/9/17.
//
#include "catboost-cxx/include/catboost.hpp"
#include "catboostModel.h"
#include "csv.h"
#include "emaFeatures.h"
#include "linearRegression.h"
#include "temaN.h"
#include "json/json.h"
#include <algorithm>
#include <armadillo>
#include <climits>
#include <cmath>
#include <ctime>
#include <iostream>
#include <map>
#include <numeric>
#include <queue>
#include <random>
#include <set>
#include <stats/include/stats.hpp>
#include <string>
#include <unordered_map>
#include <vector>
#include "reckless/file_writer.hpp"
#include "reckless/severity_log.hpp"
#include "NanoLog.hpp"
using log_t =
reckless::severity_log<reckless::indent<4>, ',', reckless::severity_field>;

using log_s =
reckless::severity_log<reckless::indent<4>, ',', reckless::severity_field, reckless::timestamp_field>;

reckless::file_writer writer("summary.log");
log_s slogger(&writer,8*4096*4096,8*4096*4096);
void stick_this_thread_to_core(std::thread& _thread,int core_id) {
  cpu_set_t cpuset;
  CPU_ZERO(&cpuset);
  CPU_SET(core_id, &cpuset);
  int rc=pthread_setaffinity_np(_thread.native_handle(), sizeof(cpu_set_t), &cpuset);
  if (rc != 0) {
    std::cerr << "Error calling pthread_setaffinity_np: " << rc << "\n";
  }
}
using namespace std;
struct X {
  int _pos;
  int _val;
  X() : _pos(0), _val(0) {
  }
  X(int pos, int val) : _pos(pos), _val(val) {
  }
  bool operator()(const X &i, const X &j) {
    return i._val < j._val;
  }
};
vector<int> maxSlidingWindow(vector<int> &nums, int k) {
  priority_queue<X, vector<X>, X> test;
  vector<int> result;
  for (int i = 0; i < nums.size(); i++) {
    X p(i, nums[i]);
    test.push(p);
    if (i >= k - 1) {
      int j = i - k + 1;
      auto k = test.top();
      while (k._pos < j) {
        test.pop();
        k = test.top();
      }
      result.push_back(k._val);
    }
  }
  return move(result);
};
int helper(vector<int> &X, int first, int last) {
  auto p = X[last], i = first - 1;
  for (int j = first; j < last; j++) {
    if (X[j] < p) {
      i++;
      auto temp = X[i];
      X[i] = X[j];
      X[j] = temp;
    }
  }
  auto temp = X[last];
  X[last] = X[i + 1];
  X[i + 1] = temp;
  return i;
}
int klargestElementInArray(vector<int> &X, int first, int last, int k) {
  auto p = helper(X, first, last);
  if (p == k)
    return X[p];
  //Arrange the Array so that elements less than k are in
  if (p > k)
    return klargestElementInArray(X, first, p, k);
  return klargestElementInArray(X, p, last, k);
}
int searchTarget(vector<int> &A, int first, int last, int target) {
  int N = (first + last) / 2;
  if (target == A[N])
    return N;
  if (first == last)
    return first;
  if (last == first + 1)
    return last;
  if (target > A[N])
    return searchTarget(A, N, last, target);
  return searchTarget(A, first, N, target);
}
int kadaneAlgo(const vector<int> &X) {
  int maxSum = 0, maxSumLast = 0;
  for (auto &x : X) {
    maxSum += x;
    if (maxSum < 0) {
      maxSum = 0;
      maxSumLast = 0;
    } else {
      if (maxSum > maxSumLast) {
        maxSumLast = maxSum;
      }
    }
  }
  return maxSumLast;
}
int maxDistance(vector<vector<int>> &arrays) {
  multiset<int> res;
  for (auto &k : arrays) {
    res.insert(k[0]);
    res.insert(k[k.size() - 1]);
  }
  auto first = *res.begin();
  auto last = *res.rbegin();
  return last - first;
}
void test() {
  temaN<2> c({5, 10}, 1e9);
  io::CSVReader<4> in("/home/ashish/datax.csv");
  in.read_header(io::ignore_extra_column, "time", "ti", "ti5", "ti10");
  double f1 = 0, f2 = 0, f3 = 0, f4 = 0;
  uint64_t time;
  cout << "time,ti5,ti10,ti5x,ti10x" << endl;
  while (in.read_row(time, f1, f2, f3)) {
    c.update(f1, time);
    cout << time << "," << f2 << "," << f3 << "," << c.get()[0] << "," << c.get()[1] << endl;
    //cout << time << "," << f1 << "," << f2 << "," << c.get()<< endl;
  }
}
/*
void testFeature() {
  emaFeatures<3, 3, 3, 15> test({2.0, 5.0, 10.0}, {2.0, 5.0, 10.0}, {2.0, 5.0, 10.0});
  std::vector<double> input(8);
  std::fill(input.begin(), input.end(), 10);
  const int n = 100000;
  for (int i = 0; i < n; i++) {
    test.updateFeaturesOnQuote(input, 0.5);
    test.updateOnQuote();
    std::cout << test.getArmaFeaturesString() << endl;
  }
}*/
const arma::vec slice(const arma::vec &test, arma::uvec &p) {
  return test(p);
}
int main(int argc, char **argv) {
  modelPrediction<catboostModel> cat_model(argv[1]);
  nanolog::initialize(nanolog::GuaranteedLogger(), "/tmp/", "nanolog", 1);
  int N = 1000000;
  arma::uvec indices = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  arma::fvec::fixed<10> test;
  arma::uvec pp(1);
  pp[0] = 0;
  emaFeatures<6, 3, 3, 15> _features;
  stick_this_thread_to_core(slogger.worker_thread(),0);
  typedef std::chrono::high_resolution_clock Clock;
  for (int i = 0; i < N; i++) {
    arma::fvec features(9, arma::fill::randn);
    arma::fvec test(26, arma::fill::randn);
    _features.updateOnQuote({features[0], features[1], features[2], features[3], features[4], features[5], features[6],features[7]},features[8]);
    auto begin = Clock::now();
    cat_model.predict(_features.getArmaSelectedFeatures(indices));
    auto end = Clock::now();
    /*
    slogger.info("%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,"
                 "%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f",test[0],test[1],test[2],test[3],test[4],
                 test[5],test[6],test[7],test[8],test[9],test[10],test[11],test[12],test[13],test[14],test[15],test[16],test[17],test[18],test[19],
                 test[20],test[21],test[22],test[23],test[24],test[25],test[0],test[1],test[2],test[3],test[4],
        test[5],test[6],test[7],test[8],test[9],test[10],test[11],test[12],test[13],test[14],test[15],test[16],test[17],test[18],test[19],
        test[20],test[21],test[22],test[23],test[24],test[25]);
    */
    std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(end - begin).count() << endl;
  }

  return 0;
}
