require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "java.io.File"
import "layout"
--activity.setTitle('AndroLua+')
--activity.setTheme(android.R.style.Theme_Holo_Light)

activity.setContentView(layout)
adapter=list.adapter
adir=activity.getLuaDir("ads").."/"
--ads=luajava.astable(File(adir).list())
url="https://jieshuo.ltd/download/ads.php"

Http.get(url,function(c,t)
  adapter.clear()
  local ret={}
  for v in t:gmatch("%C+") do
    if v:find("%.txt$") then
      table.insert(ret,v:sub(1,-5))
      --adapter.add(v:sub(1,-5))
    end
  end
  table.sort(ret)
  adapter.addAll(ret)
end)
list.onItemClick=function(l,v)
  if v.text:find("%d") then
    activity.newActivity("show",{v.text})
  end
end