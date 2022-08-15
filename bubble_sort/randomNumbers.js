let randomNumberArray = []

for(let i = 0; i < 41; i++) {
    randomNumberArray += Math.floor(Math.random() * 200) + ", "
}

console.log(randomNumberArray)