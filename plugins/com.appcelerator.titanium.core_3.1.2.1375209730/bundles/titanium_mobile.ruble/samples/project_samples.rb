require 'ruble'

project_sample t(:geocoder) do |s|
  s.id = "com.appcelerator.titanium.mobile.samples.mapping"
  s.category = "com.appcelerator.titanium.mobile.samples.category"
  s.location = "git://github.com/appcelerator-developer-relations/Sample.Mapping.git"
  s.description = t(:geocoder_description)
  s.natures = ["com.appcelerator.titanium.mobile.nature", "com.aptana.projects.webnature"]
  s.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_geo.png"
end

project_sample t(:rss_reader) do |s|
  s.id = "com.appcelerator.titanium.mobile.samples.rss"
  s.category = "com.appcelerator.titanium.mobile.samples.category"
  s.location = "git://github.com/appcelerator-developer-relations/Sample.RSS.git"
  s.description = t(:rss_reader_description)
  s.natures = ["com.appcelerator.titanium.mobile.nature", "com.aptana.projects.webnature"]
  s.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_rss.png"
end

project_sample t(:todo_list) do |s|
  s.id = "com.appcelerator.titanium.mobile.samples.todo"
  s.category = "com.appcelerator.titanium.mobile.samples.category"
  s.location = "git://github.com/appcelerator-developer-relations/Sample.Todo.git"
  s.description = t(:todo_list_description)
  s.natures = ["com.appcelerator.titanium.mobile.nature", "com.aptana.projects.webnature"]
  s.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_to_do_list.png"
end

project_sample t(:kitchen_sink) do |s|
  s.id = "com.appcelerator.titanium.mobile.samples.kitchensink"
  s.category = "com.appcelerator.titanium.mobile.samples.category"
  s.location = "git://github.com/appcelerator/KitchenSink.git"
  s.description = t(:kitchen_sink_description)
  s.natures = ["com.appcelerator.titanium.mobile.nature", "com.aptana.projects.webnature"]
  s.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_kitchen_sink.png"
end

project_sample t(:kitchen_sink_nook) do |s|
  s.id = "com.appcelerator.titanium.mobile.samples.kitchensink.nook"
  s.category = "com.appcelerator.titanium.mobile.samples.category"
  s.location = "git://github.com/appcelerator/KitchenSinkNook.git"
  s.description = t(:kitchen_sink_nook_description)
  s.natures = ["com.appcelerator.titanium.mobile.nature", "com.aptana.projects.webnature"]
  s.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_kitchen_sink.png"
end
