require "import"
import "android.widget.*"
import "android.view.*"
function to(text)
    local bb = {}
    local bs = { "{\n{" }
    local s = [["%s",]]
    for l in text:gmatch("%C*") do
        if l == "" or l == "|" or l == "||" then
            table.insert(bs, "};\n{")
        elseif l:find("^}+$") then
            table.insert(bs, l .. ";\n")
        elseif l:find("^{+$") then
            table.insert(bs, l)
        elseif l:find(">") or l:find("<") or l:find("%$") or l:find("%%") then
            table.insert(bs, string.format(s, l))
        else
            table.insert(bs, string.format(s, l .. ">15"))
        end
    end
    table.insert(bs, "},\n}")
    local ss = [[
return service.click(%s) 
]]

    local f, s = loadstring(string.format(ss, table.concat(bs)))

    if f then
        return f()
    else
        print(s)
    end
end

path = ...
function read(path)
    local f = io.open(path)
    if f==nil
        return path
    end
    local s = f:read("a")
    f:close()
    return s
end

to(read(path))
