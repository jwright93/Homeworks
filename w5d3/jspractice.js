function madlib(verb, adjective, noun){
  let upverb = verb.toUpperCase();
  let upadjective = adjective.toUpperCase();
  let upnoun = noun.toUpperCase();
console.log(`We shall ${upverb} the ${upadjective} ${upnoun}`);
}


function isSubstring(searchString, subString){
  // let string = searchString.split(" ");
  console.log(searchString.includes(subString));
}


function fizzBuzz (array){
  const fizzBuzzArr = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      fizzBuzzArr.push(el);
    }
  });

  return fizzBuzzArr;
}
