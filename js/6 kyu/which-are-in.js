/* Given two arrays of strings a1 and a2 return a sorted array r 
 * in lexicographical order of the strings of a1 
 * which are substrings of strings of a2. */

// a1 = ["arp", "live", "strong"]
// a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
// => ["arp", "live", "strong"]
//
// a1 = ["tarp", "mice", "bull"]
// a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
// => []

function inArray(array1, array2) {
    return array1.filter(s1 => {
      return array2.some(s2 => {
        return s2.includes(s1);
      });
    }).sort();
}