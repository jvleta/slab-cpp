const { runSlab } = require("./slabbath");

test("run slabbath", () => {
  expect(runSlab()).toBe("This function will execute Slab someday.");
});
