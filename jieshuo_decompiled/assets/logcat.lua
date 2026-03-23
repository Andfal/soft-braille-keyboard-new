require "import"
import "android.widget.*"
activity.setTitle("发送日志")
function readlog(s)
  p=io.popen("logcat -d -v long "..s)
  local s=p:read("*a")
  p:close()
  s=s:gsub("%-+ beginning of[^\n]*\n","")
  if #s==0 then
    s="<run the app to see its log output>"
  end
  return s
end

function clearlog()
  p=io.popen("logcat -c")
  local s=p:read("*a")
  p:close()
  return s
end
--service=activity
func={}
func.All=function()
  task(readlog,"",show)
end

func.Clear=function()
  task(clearlog,show)
end

scroll=ListView(activity)

scroll.FastScrollEnabled=true
logview=TextView(activity)
logview.TextIsSelectable=true
--scroll.addView(logview)
--scroll.addHeaderView(logview)
local r="%[ *%d+%-%d+ *%d+:%d+:%d+%.%d+ *%d+: *%d+ *%a/[^ ]+ *%]"

function show(s)
  local a=LuaArrayAdapter(activity,{TextView,
    textIsSelectable=true,
    textSize="18sp",
    })
  local l=1
  for i in s:gfind(r) do
    if l~=1 then
     a.add(s:sub(l,i-1))
     end
     l=i
    end
       a.add(s:sub(l))

   scroll.Adapter=a
end
activity.setContentView(scroll)

function share(s)
  local path=activity.getLuaExtPath("log.txt")
  local f=io.open(path,"w")
  f:write(s)
  f:close()
  import "android.content.Intent"
  import "android.net.Uri"
  import "java.io.File"
  share=Intent(Intent.ACTION_SEND); 
  share.setType("text/plain");
  share.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
  share.putExtra(Intent.EXTRA_STREAM,activity.getUriForFile(File(path)))
  activity.startActivity(Intent.createChooser(share,"发送日志"));
  activity.debug=false
  show(s)
end
task(readlog,"",share)
