require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
s, helps=pcall(require,"helps")
if not s then
helps={}
end
activity.setTitle('常见问题')
activity.setContentView("layout.main")
function save()
  local s=dump(helps)
  local f=io.open(activity.getLuaDir().."/helps.lua","w")
  f:write("return ")
  f:write(s)
  f:close()
end

function show()
  local adp=ArrayListAdapter(activity)
  for k,v in ipairs(helps) do
    adp.add(k.." "..v.title)
  end
  list.Adapter=adp
end
show()
list.onItemClick=function(l,v,p,i)
  activity.newActivity("show",{helps[p+1].title,helps[p+1].content,p})
end
--[[
list.onItemLongClick=function(l,v,p,i)
  activity.newActivity("edit",{helps[p+1].title,helps[p+1].content,p})
  return true
end

function onCreateOptionsMenu(menu)
  menu.add("新建").setShowAsAction(1)
end
function onOptionsItemSelected(item)
  table.insert(helps,{title="标题",content="内容"})
  save()
  show()
end

function onTransResult(name,title,content,id)
  helps[id+1]={title=title,content=content}
  save()
  show()
end]]
