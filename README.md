---
status: WIP
language: swift
topics: [ "swift", "yaml", "yaml-parser", "parser-combinators" ]
---
# yAml is an educational attempt to implement yaml parsing
Let's see how would it be to create a [yaml][spec] parser in swift with [parser combinators][parser-combinators] framework.

# Reading spec
## Chapter 2
### Explicit and global tags
- [ ] Clarify: _Why is there two exclamation points in a row at at some explicit typing tags, while there's only one exclamation point at others?_
> **Example 2.23 Various Explicit Tags**: 
> ```yaml
> ---
> not-date: !!str 2002-04-28
> 
> picture: !!binary |
>  R0lGODlhDAAMAIQAAP//9/X
>  17unp5WZmZgAAAOfn515eXv
>  Pz7Y6OjuDg4J+fn5OTk6enp
>  56enmleECcgggoBADs=
> 
> application specific tag: !something |
>  The semantics of the tag
>  above may be different for
>  different documents.
> ```
>
> **Example 2.24 Global Tags:**
> ```yaml
> %TAG ! tag:clarkevans.com,2002:
> --- !shape
> # Use the ! handle for presenting
> # tag:clarkevans.com,2002:circle
> - !circle
>   center: &ORIGIN {x: 73, y: 129}
>   radius: 7
> - !line
>   start: *ORIGIN
>   finish: { x: 89, y: 102 }
> - !label
>   start: *ORIGIN
>   color: 0xFFEEBB
>   text: Pretty vector drawing.
> ```

[spec]: https://yaml.org/spec/1.2.2/
[parser-combinators]: https://pointfreeco.github.io/swift-parsing/main/documentation/parsing
