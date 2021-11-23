/* Create a function named divisors/Divisors that takes an integer n > 1 
   and returns an array with all of the integer's divisors
   (except for 1 and the number itself), from smallest to largest. 
   If the number is prime return the string '(integer) is prime' */

//divisors(12); should return [2,3,4,6]
//divisors(25); should return [5]
//divisors(13); should return "13 is prime"

function divisors(n) {
    const res = Array.from(new Array(n - 2), (x, i) => 2 + i) //Array from 2 to n or [] (n > 1)
        .filter(div => (n % div) === 0);
    return res.length === 0 ? `${n} is prime` : res;
}
