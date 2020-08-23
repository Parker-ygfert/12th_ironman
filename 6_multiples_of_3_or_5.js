// https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby

/*
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
*/



function solution(number) {
  let arr = []
  for (let i = 0; i < number; i++) {
    arr.push(i);
  }

  total = 0
  arr.filter(n => {
    if ((n % 3 === 0) || (n % 5 === 0)) {
      total += n;
    }
  })

  return total;
}