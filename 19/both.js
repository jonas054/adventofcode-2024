EXAMPLE = `
  r, wr, b, g, bwu, rb, gb, br

  brwrr
  bggr
  gbbr
  rrbgbr
  ubwu
  bwurrg
  brgr
  bbrgwb
`

const fs = require('fs');

let patterns;
let cache;

function main(heading, input) {
  const lines = input.match(/[^\r\n]+/g).map(line => line.trim());
  patterns = lines[0].split(/, */);
  cache = {}
  const solutions = lines.slice(1).map(design => search(design));
  console.log(heading);
  console.log(`  Part 1: ${solutions.filter(s => s > 0).length}`); // (6) 315
  console.log(`  Part 2: ${solutions.reduce((acc, s) => acc + s)}`); // (16) 625108891232249
}

function search(design) {
  if (!(design in cache)) {
    if (design.length !== 0)
      cache[design] = patterns.filter(p => design.startsWith(p))
                              .reduce((acc, p2) => acc + search(design.slice(p2.length)), 0);
    else
      cache[design] = 1
  }
  return cache[design];
}

main('Example', EXAMPLE)
main('Puzzle input', fs.readFileSync('./input.txt', { encoding: 'utf8', flag: 'r' }))
