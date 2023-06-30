// The Swift Programming Language
// https://docs.swift.org/swift-book
import Parsing

enum Elements {
    case blockStart
    case mappingMarker
    case commentStart
    case separatorMarker
    case endOfDocumentMarker
    case anchorMarker
    case aliasMarker
    case complexMappingStart
    case literalStyleMarker
    case foldedStyleMarker
    case tagMarker
}

let BlockElementStart = Parse { "- " }.map { Elements.blockStart }

let MappingMarker = Parse { ": " }.map { Elements.mappingMarker }

let CommentStart = Parse { "#" }.map { Elements.commentStart }

let SeparatorMarker = Parse { "---" }.map { Elements.separatorMarker }

let EndOfDocumentMarker = Parse { "..." }.map { Elements.endOfDocumentMarker }

let AnchorMarker = Parse { "&" }.map { Elements.anchorMarker }

let AliasMarker = Parse { "*" }.map { Elements.aliasMarker }

let ComplexMappingStart = Parse { "? " }.map { Elements.complexMappingStart }

let LiteralStyleMarker = Parse { "|" }.map { Elements.literalStyleMarker }

let FoldedStyleMarker = Parse { ">" }.map { Elements.foldedStyleMarker }

let TagMarker = Parse { "!" }.map { Elements.tagMarker }
