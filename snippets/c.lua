local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("main", {
    t({ "#include <stdio.h>", "", "int main() {" }),
    t({ "  " }),
    i(1, "// code here"),
    t({ "", "  return 0;", "}" }),
  }),
}
