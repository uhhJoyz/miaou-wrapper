vim.api.nvim_create_autocmd("FileType",{
  pattern = "typst",
  callback = function ()
    local ls = require "luasnip"
    local s = ls.snippet
    local sn = ls.snippet_node
    local t = ls.text_node
    local d = ls.dynamic_node
    local i = ls.insert_node
    local f = ls.function_node
    local l = require("luasnip.extras").lambda
    local fmt = require("luasnip.extras.fmt").fmt
    local postfix = require("luasnip.extras.postfix").postfix

    -- insert autosnippets here
    ls.add_snippets("typst", { s("mk", { t "$", i(0), t "$" }) }, { type = "autosnippets", key = "single_math" })
    ls.add_snippets("typst", { s("dlm", { t "$ ", i(0), t " $" }) }, { type = "autosnippets", key = "single_math_big" })

    -- insert non-expanded snippets here
    -- ls.add_snippets(
    --     "typst",
    --     { s("dm", { t { "$", "\t" }, i(0), t { "", "$" } }) },
    --     { type = "snippets", key = "math_environment" }
    -- )
    ls.add_snippets(
        "typst",
        { s("proof", { t { "#proof[", "\t" }, i(0), t { "", "]" } }) },
        { type = "snippets", key = "proof" }
    )
    ls.add_snippets(
        "typst",
        { s("thm", { t { "#theorem[", "\t" }, i(0), t { "", "]" } }) },
        { type = "snippets", key = "thm" }
    )

    ls.add_snippets(
        "typst",
        { s("def", { t { "#definition[", "\t" }, i(0), t { "", "]" } }) },
        { type = "snippets", key = "definition" }
    )

    ls.add_snippets("typst", {
        postfix(";cb", {
            f(function(_, parent)
                return parent.snippet.env.POSTFIX_MATCH .. "^3"
            end, {}),
        }),
    }, { type = "autosnippets", key = "cubed" })

    ls.add_snippets("typst", {
        postfix(";sr", {
            f(function(_, parent)
                return parent.snippet.env.POSTFIX_MATCH .. "^2"
            end, {}),
        }),
    }, { type = "autosnippets", key = "squared" })

    ls.add_snippets("typst", {
        postfix(";rd", {
            d(1, function(_, parent)
                return sn(
                    1,
                    fmt(parent.snippet.env.POSTFIX_MATCH .. "^({})", {
                        i(1, "power"),
                    })
                )
            end, {}),
        }),
    }, { type = "autosnippets", key = "raise_to_power" })

    ls.add_snippets("typst", {
        postfix(";env", {
            d(1, function(_, parent)
                return sn(
                    1,
                    fmt("#" .. parent.snippet.env.POSTFIX_MATCH .. "[\n\t{}\n]", {
                        i(1, "content"),
                    })
                )
            end, {}),
        }),
    }, { type = "autosnippets", key = "make_word_into_environment" })

    ls.add_snippets("typst", {
        postfix(";br", {
            f(function(_, parent)
                return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
            end, {}),
        }),
    }, { type = "autosnippets", key = "brackets_around" })

    ls.add_snippets("typst", {
        postfix(";wf", {
            d(1, function(_, parent)
                return sn(
                    1,
                    fmt("{}(" .. parent.snippet.env.POSTFIX_MATCH .. ")", {
                        i(1, "function_name")
                    })
                )
            end, {}),
        }),
    }, { type = "autosnippets", key = "wrap_with_function" })

    local abbrev = {
        -- trigger, expansion, key
        { ";;a", { t "alpha" },                            "alpha_expansion" },
        { ";;b", { t "beta" },                             "beta_expansion" },
        { ";;d", { t "delta" },                            "delta_expansion" },
        { ";;e", { t "epsilon" },                          "epsilon_expansion" },
        { ";;l", { t "lambda" },                           "lambda_expansion" },
        { ";;p", { t "phi" },                              "phi_expansion" },
        { ";;s", { t "psi" },                              "psi_expansion" },
        { ";;r", { t "rho" },                              "rho_expansion" },
        { ";;t", { t "tau" },                              "tau_expansion" },
        { ";rd", { t "^(", i(0), t ")" },                  "raise_to_power_eow" },
        { ";sr", { t "^2" },                               "square_eow" },
        { ";cb", { t "^3" },                               "cube_eow" },
        { ";uu", { t "_(", i(0), t ")" },                  "subscript_eow" },
        { ";dm", { t { "$", "\t" }, i(0), t { "", "$" } }, "large_math_enter" },
    }

    for _, mapping in ipairs(abbrev) do
        ls.add_snippets("typst", { s(mapping[1], mapping[2]) }, { type = "autosnippets", key = mapping[3] })
    end
  end,
})
require('luasnip.loaders.from_lua').lazy_load('./snippets/')
