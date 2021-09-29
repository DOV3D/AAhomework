// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping1();

// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping2();

// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping3();

// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping4();

// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

// mysteryScoping5();

function MadLib(verb, adjective, noun) {
     console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`)
}

// MadLib('make', 'best', 'guac');

function isSubstring(searchString, subString) {
    console.log(searchString.includes(subString))
}

// isSubstring("time to program", "time");
// isSubstring("Jump for joy", "joys");

function fizzBuzz(array) {
    let result = [];
    for(let i = 0; i < array.length; i++) {
        if ((array[i] % 3 === 0) && (array[i] % 5 !== 0)) {
            result.push(array[i]);
        }
        if ((array[i] % 5 === 0) && (array[i] % 3 !== 0)) {
            result.push(array[i]);
        }
    }
    console.log(result)
}

// fizzBuzz([3,5,6,7,8,9,10]);

function isPrime(number) {
    if (number < 2) {
        return false;
    }
    for(let i = 2; i < number; i++) {
        if (number % i === 0) {
            console.log(false) 
            return;
        }
    }
    console.log(true)
}
// isPrime(2);
// isPrime(10);
// isPrime(15485863);
// isPrime(3548563);

function sumOfNPrimes(n) {
    let sum = 0;
    let countPrimes = 0;
    let i = 2;

    while (countPrimes < n) {
        if (isPrime(i)) {
            sum += i;
            countPrimes++;
        }
        i++;
    }

    return sum;
}

// sumOfNPrimes(0);
// sumOfNPrimes(1);
// sumOfNPrimes(4);
