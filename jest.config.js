module.exports = {
  testEnvironment: "node",
  testRegex: ".*test.ts$",
  transform: { "^.+\\.ts?$": "ts-jest" },
  moduleFileExtensions: ["ts", "js", "json"],
  roots: ["<rootDir>/src/"],
  collectCoverage: false,
  coverageDirectory: "<rootDir>/../coverage",
  testPathIgnorePatterns: ["/node_modules/"],
}
