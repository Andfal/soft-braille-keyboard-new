require "import"
import "android.widget.*"
import "android.view.*"
activity.setContentView("layout.show")

function show(t,c,i)
  title.Text=t
  content.Text=c
  id=i
end
function onCreateOptionsMenu(menu)
  menu.add("返回").setShowAsAction(1)
end
function onOptionsItemSelected(item)
  activity.finish()
end