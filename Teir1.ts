

function returnType(p1) {
  return typeof p1;
}


console.log('Type of: ' + returnType(1));
console.log('Type of: ' + returnType('word'));


function varibaleargs(...argument) {
  var product = 1;
  for (var i = 1; i < arguments.length; i++) {
    product = arguments[i] * product;
  }
  return product;
}


console.log('The product is: ' + varibaleargs(1, 2, 3, 4));


function numsum(num: number[]) {
  var sum = 0;
  for (var i = 0; i < num.length; i++) {
    sum = num[i] + sum;
  }
  return sum;
}


console.log('The sum is: ' + numsum([1, 2, 3, 4]));

function power(num: number) {
  var pow = num.toString().split('');
var sum = 0;
  for (var i = 0; i < pow.length; i++) {
    var charnum =  parseInt(pow[i]);
    sum = sum + Math.pow(charnum,pow.length)

  }


if(sum == num){
  return true;
}
else{
  return false;
}
}

console.log('It is: ' + power(1));
console.log('It is: ' + power(10));