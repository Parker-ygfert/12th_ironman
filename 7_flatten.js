// https://www.codewars.com/kata/5250a89b1625e5decd000413/train/ruby

/*
Write a function that flattens an Array of Array objects into a flat Array. Your function must only do one level of flattening.

flatten [1,2,3] # => [1,2,3]
flatten [[1,2,3],["a","b","c"],[1,2,3]]  # => [1,2,3,"a","b","c",1,2,3]
flatten [[[1,2,3]]] # => [[1,2,3]]
*/

let flatten = function (array){
  // return [].concat.apply([], array);
  //! ???看不懂
  let arr = [];
  array.forEach(el => {
    // console.log(el);
    arr = arr.concat(el);
  });
  // console.log(arr);
  return arr
}

console.log(flatten([[1, 2, 3], ["a", "b", "c"], [1, 2, 3]]));
// console.log(flatten([[[1,2,3]]]));

