// The Swift Programming Language
// https://docs.swift.org/swift-book
import Parsing

let Block = Parse { "- " }

let Mapping = Parse { ": " }

let Comment = Parse { "#" }

let Separator = Parse { "---" }

let EndOfDocument = Parse { "..." }

let Anchor = Parse { "&" }

let Alias = Parse { "*" }

let ComplexMapping = Parse { "? " }

let LiteralStyle = Parse { "|" }

let FoldedStyle = Parse { ">" }

let Tag = { "!" }
