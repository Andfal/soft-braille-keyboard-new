require "import"
import "android.widget.*"
import "android.view.*"
activity.setContentView("layout.edit")

function edit(t,c,i)
  title.Text=t
  content.Text=c
  id=i
end
function onCreateOptionsMenu(menu)
  menu.add("保存").setShowAsAction(1)
end
function onOptionsItemSelected(item)
  activity.result{title.Text,content.Text,id}
end