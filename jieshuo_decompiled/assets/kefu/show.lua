require "import"
import "android.widget.*"
import "android.view.*"
import "android.content.Intent"
import "android.net.Uri"

base="https://jieshuo.ltd/download/ads/"
ads=...
activity.title=ads
item1={TextView,
  id="tv",
  layout_width="fill",
  textSize="20"
}

item2={
  ImageView,
  layout_width="fill",
  id="img"
}
list=ListView(activity)
adapter=LuaMultiAdapter(activity,{item1,item2,item1,item1,item1})
activity.setContentView(list)

function read(p)
  local f=io.open(p)
  local s=f:read("a")
  f:close()
  return s
end

Http.get(base..ads..".txt",function(c,t)
  --print(t)
  for l in t:gmatch("[^\n]+") do
    if l:find("^#img=") then
      adapter.add{
        __type=2,
        img=base..l:sub(6),
      }
    elseif l:find("^#tel=") then
      adapter.add{
        __type=3,
        tv="电话:"..l:sub(6),
        tel=l:sub(6)
      }
    elseif l:find("^#qq=") then
      adapter.add{
        __type=4,
        tv="QQ:"..l:sub(5),
        qq=l:sub(5),
      }
    elseif l:find("^#url=") then
      adapter.add{
        __type=5,
        tv="网址:"..l:sub(6),
        url=l:sub(6),
      }
    else
      adapter.add{
        __type=1,
        tv=l,
      }
    end
  end
  list.adapter=adapter
end)
function phone(n)
  local data = Uri.parse("tel:"..n);
  local intent = Intent(Intent.ACTION_DIAL,data);
  activity.startActivity(intent);
end
function save(data)
  name=data:match("[^/]+$")
  Http.download(data,"/sdcard/download/"..name,function()
    print("已保存")
  end)
end
function qq(q)
  url="mqqwpa://im/chat?chat_type=wpa&uin="..q
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end

function open(url)
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end

list.onItemClick=function(t,v,p,i)
  local data=adapter.data[i]
  if data.__type==3 then
    phone(data.tel)
  elseif data.__type==2 then
    save(data.img)
  elseif data.__type==4 then
    qq(data.qq)
  elseif data.__type==5 then
    open(data.url) 
  end
end