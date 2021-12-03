/* Write an algorithm that takes an array and moves all of the zeros to the end, 
 * preserving the order of the other elements. */

// moveZeros([false,1,0,1,2,0,1,3,"a"]) // returns[false,1,1,2,1,3,"a",0,0]

var moveZeros = function (arr) {
  let res = arr.filter((e) => {
    return e !== 0;
  });
  let diff = arr.length - res.length;
  for(let i = 0; i < diff; i++) {
    res.push(0);
  }
  return res
}
