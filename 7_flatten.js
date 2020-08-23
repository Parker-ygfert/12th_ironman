// https://www.codewars.com/kata/5250a89b1625e5decd000413/train/ruby

/*
Write a function that flattens an Array of Array objects into a flat Array. Your function must only do one level of flattening.

flatten [1,2,3] # => [1,2,3]
flatten [[1,2,3],["a","b","c"],[1,2,3]]  # => [1,2,3,"a","b","c",1,2,3]
flatten [[[1,2,3]]] # => [[1,2,3]]
*/

var flatten = function (array){
  // return [].concat.apply([], array);
  return Array.prototype.concat.apply([], array);
  //! ???看不懂
}

console.log(flatten([[1, 2, 3], ["a", "b", "c"], [1, 2, 3]]));