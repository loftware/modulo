import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LoftNumerics_ModuloTests.allTests),
    ]
}
#endif
