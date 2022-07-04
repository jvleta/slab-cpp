const fs = require('fs');

test('example 1', () => {
  const output = fs.readFileSync('./OUTPR1').toString();
  console.log(output);
  expect(output).toMatchSnapshot();
});

test('example 2', () => {
  const output = fs.readFileSync('./OUTPR2').toString();
  console.log(output);
  expect(output).toMatchSnapshot();
});

test('example 3', () => {
  const output = fs.readFileSync('./OUTPR3').toString();
  console.log(output);
  expect(output).toMatchSnapshot();
});

test('example 4', () => {
const output = fs.readFileSync('./OUTPR4').toString();
  console.log(output);
  expect(output).toMatchSnapshot();
});



