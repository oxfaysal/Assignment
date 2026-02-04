void main() {

  // Assignment: Working with Sets in Dart

  Set<int> A = {1, 2, 3, 4, 5};
  Set<int> B = {4, 5, 6, 7, 8};

  for(int result in A.union(B)){
    print(result);
  }


}