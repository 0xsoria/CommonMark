import Ccmark

let markdown = "*Hello World"
let cString = cmark_markdown_to_html(markdown, markdown.utf8.count, 0)!
defer { free(cString) }
let html = String(cString: cString)
print(html)

func markdownToHTML(input: String) -> String {
    let outString = cmark_markdown_to_html(input, input.utf8.count, 0)!
    defer { free(outString) }
    return String(cString: outString)
}
