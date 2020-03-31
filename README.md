# CommonMarkExample

C functions caller in Swift.

`let str = markdownToHTML(input: String)`

This function is calling the C `cmark_markdown_to_html` function behind the scenes.

`print(str) // ///<p><em>Hello World</em></p>`
