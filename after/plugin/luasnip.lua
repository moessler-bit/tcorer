local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets(nil, {
    all = {
        ls.parser.parse_snippet("test", "--test")
    },
    rust = {
        ls.parser.parse_snippet("pl", "println!(\"{}\", $1);$0"),
        ls.parser.parse_snippet("pld", "println!(\"{:?}\", $1);$0"),
    }
})
