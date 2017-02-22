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


function isPrime(n) {
  if (n < 2 ) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0 ) {
      return false;
    }
  }

  return true;
}

function sumOfNPrimes (n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n ) {
    if (isPrime(i)) {
      sum += 1;
      countPrimes++;
    }
    i++;
  }
  return sum;
}


function titleize(names, callback) {
  let titleized = names.map( name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
}

titleize(["Mary", "Brian", "Leo"], (names) => {
  names. forEach (name => console.log(name));
});


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.protoype.trumpet = function() {
  console.log(`${this.name} the elephant is happy`);
};

Elephant.protoype.grows = function() {
  console.log(`The elephant is ${this.height} height`);
};

Elephant.protoype.trick = function() {
  console.log(`The elephants favorite trick is ${this.trick}`);
};


function dinerBreakfast() {
  let order = "I'd like a breakfast burrito please";
  order = console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
}
