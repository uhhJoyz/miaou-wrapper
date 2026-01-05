local replace_words = function(lines, word)
  local tab = {}
  for _, in_line in ipairs(lines) do
    local l = ""
    for token in in_line:gmatch("%S+") do
      local t = token:gsub("%a+", word)

      if l ~= "" then
        l = l .. " " .. t
      else
        l = t
      end
    end
    table.insert(tab, l)
  end
  return tab
end

require("yop").op_map({ "n", "v" }, "<C-m>", function(lines, info)
  return replace_words(lines, "meow")
end)
require("yop").op_map({ "n", "v" }, "<C-S-m>", function(lines, info)
  return replace_words(lines, "MEOW")
end)
