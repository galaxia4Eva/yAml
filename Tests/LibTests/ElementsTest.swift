import XCTest
import Nimble
@testable import yAml

final class ElementsTest: XCTestCase {
    
    func testParsesBlockElementStart() throws {
        let input = "- "
        let result = try BlockElementStart.parse(input[...])
        expect(result).to(equal(Elements.blockStart))
    }

    func testParseMappingMarker() throws {
        let input = ": "
        let result = try MappingMarker.parse(input[...])
        expect(result).to(equal(Elements.mappingMarker))
    }

    func testCommentStart() throws {
        let input = "#"
        let result = try CommentStart.parse(input)
        expect(result).to(equal(Elements.commentStart))
    }

    func testSeparatorMarker() throws {
        let input = "---"
        let result = try SeparatorMarker.parse(input)
        expect(result).to(equal(Elements.separatorMarker))
    }

    func testEndOfDocumentMarker() throws {
        let input = "..."
        let result = try EndOfDocumentMarker.parse(input)
        expect(result).to(equal(Elements.endOfDocumentMarker))
    }

    func testAnchorMarker() throws {
        let input = "&"
        let result = try AnchorMarker.parse(input)
        expect(result).to(equal(Elements.anchorMarker))
    }

    func testComplexMappingStart() throws {
        let input = "? "
        let result = try ComplexMappingStart.parse(input)
        expect(result).to(equal(Elements.complexMappingStart))
    }

    func testLiteralStyleMarker() throws {
        let input = "|"
        let result = try LiteralStyleMarker.parse(input[...])
        expect(result).to(equal(Elements.literalStyleMarker))
    }

    func testFoldedStyleMarker() throws {
        let input = ">"
        let result = try FoldedStyleMarker.parse(input[...])
        expect(result).to(equal(Elements.foldedStyleMarker))
    }

    func testTagMarker() throws {
        let input = "!"
        let result = try TagMarker.parse(input[...])
        expect(result).to(equal(Elements.tagMarker))
    }
}
