#include <iostream>
#include <algorithm>
#include <cstdlib>
#include <cstdio>
#include <ctime>
#include <cstdlib>
#include <string>
#include <memory>

/* Instead of just calling the OpenMP functions, e can first check whetehr _OPENMP is defined. */


/*

|---------------------------------|
|OpenMP - "Open multi processing" |
|---------------------------------|

OpenMP (Open multi-processing), on the other hand, sometimes allows the programmer 
to simply state that a block fo code should be exectuted in parallel, and the precise 
determination of the takes and which thread should execute them is left to the compiler and 
the run-time system.

OpenMP is a way to program shared memory devices. This means that the parellism occurs where every parallel thread has access 
to all your data 

Example:

You can think of it as: parallelism can appen during the execution of a specific for loop by splittig up the loop
among the different threads.

OpenMP provides hat's known as a "directives-based" shared memory API. In C and C++, this means that there are speciial preprocessor 
instructions known as pragmas. Pragmas are typcailyl added to a system to allow behaviours that aren't part of the basic C specification

*/

#ifndef _OPENMP_
#include <omp.h>

#endif

// Main header to include 
#include "openmp1.hpp"

/* CPPunit tests */

#include <cppunit/extensions/TestFactoryRegistry.h>
#include <cppunit/CompilerOutputter.h>
#include <cppunit/ui/text/TestRunner.h>
#include <cppunit/TestFixture.h>
#include <cppunit/extensions/HelperMacros.h>

/*

For every class, we need to define these properly 

T::T() - one or more constructors, perhaps with arguments

T::~T() - the destructor 

T::T(const T&) - the copy constructor

T::operator=() - the assignment operator

*/

int RandomNumber() {
  return (std::rand() % 100);
}

template <class T> void Vec<T>::create() {
  data = avail = limit = 0;
}

template <class T> void Vec<T>::create(size_type n, const T& val) {
  data = alloc.allocate(n);
  limit = avail  = data + n;
  std::uninitialized_fill(data, limit, val);
}

template <class T>
void Vec<T>::create(const_iterator i, const_iterator j) {
  data = alloc.allocate(j - i);
  limit = avail = std::uninitialized_copy(i,j,data); // allocate additional space at the end of the vector
}

template <class T> void Vec<T>::uncreate() {
  if (data) { // If data exists
    iterator it = avail;
    while (it != data){
      alloc.destroy(--it);
    }
    // Return all the space that was deallocated
    alloc.deallocate(data, limit-data); 
  }
  
  data = limit = avail = 0;
}

template <class T> void Vec<T>::grow() {
  // when growing, allocate twice as much space as currently in use
  size_type new_size = max(2 * (limit - data), ptrdiff_t(1));
  // allocate new space and copy existing elements to the new space
  iterator new_data = alloc.allocate(new_size);
  //iterator new_avail
}


explicit OMP::OMP(int N) {
  thread_count = N;
  my_rank = omp_get_thread_num();
  n = omp_get_num_threads();
} // Constructor 

OMP::OMP(const OMP& ref) {  
} // Reference allocator 

OMP::~OMP() {
} // Destructor 

}
void OMP::add(int a) {
  val += a;
}

void OMP::addup() {
  global_result = 0.0;
#pragma omp parallel num_threads(thread_count) reduction(+:val) // In OpenMP it may be possible to spcift that th result of a reduction is a reduction variable.
  this->add(3); // Use the function that has already been allocated onto this class 
#pragma omp critical
  global_result = val;
}

int OMP::Linear_search(int key, int* A, int n) {
  int i;  
  // thread count is global
# pragma omp parallel for num_threads(thread_count)
  for (int i = 0; i < n; i++) {
    if (A[i] == key) {
      return i;
    }
    else {
      return -1;
    }
  }
}

void OMP::pi() {
  double factor = 1.0;
  double sum = 0.0;
  
# pragma omp parallel for num_threads(thread_count) reduction(+:sum) private(factor)
  for (int k = 0; k < n; k++) {
    if (k % 2 == 0) {
      factor = 1.0;
    } else {
      factor = -1.0;
    }
    sum += factor / (2*k + 1);
  }
}


