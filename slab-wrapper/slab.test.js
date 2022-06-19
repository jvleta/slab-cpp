const { runSlab } = require("./slab");

test("run slabbath", () => {
  expect(runSlab()).toBe("This function will execute Slab someday.");
});
