require 'ruble'

bundle 'Appcelerator Titanium Mobile' do |bundle|
  bundle.author = 'Thomas Aylott/Appcelerator'
  bundle.copyright = "Copyright 2011 Thomas Aylott/Appcelerator. Distributed under the MIT license."
  bundle.description = t(:bundle_description)
  bundle.display_name = t(:bundle_name)
  bundle.repository = "git://github.com/appcelerator/titanium_mobile.ruble.git"

  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.command t(:developer_center)
    main_menu.command 'Ti.API.debug'
    main_menu.command 'Ti.API.info'
    main_menu.command 'Ti.API.log'
    main_menu.command 'Ti.App.fireEvent'
    main_menu.command 'Ti.App.addEventListener'
    
    main_menu.command 'createAnimation'
    main_menu.command 'createAudioPlayer'
    main_menu.command 'createButton'
    main_menu.command 'createCamera'
    main_menu.command 'createContact'
    main_menu.command 'createHttpClientBinary'
    main_menu.command 'createHttpClientXml'
    main_menu.command 'createImageView'
    main_menu.command 'createLabel'
    main_menu.command 'createPickerMulti'
    main_menu.command 'createPickerSimple'
    main_menu.command 'createProgressBar'
    main_menu.command 'createSlider'
    main_menu.command 'createSound'
    main_menu.command 'createSwitch'
    main_menu.command 'createTabbedBar'
    main_menu.command 'createTableView'
    main_menu.command 'createTextField'
    main_menu.command 'createWebView'
    
    main_menu.command 'appBadge'
    main_menu.command 'base64'
    main_menu.command 'clipboard'
    main_menu.command 'md5'
    main_menu.command 'properties'
    main_menu.command 'tabBadge'
    main_menu.command 'vibrate'
  end
  
  project_template t(:single_window_application) do |t|
    t.type = :titanium_mobile
    t.location = "staging/SingleWindow.zip"
    t.description = t(:single_window_application_desc)
    t.tags = ['Classic']
    t.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_single_window.png"
  end

  project_template t(:master_detail_application) do |t|
    t.type = :titanium_mobile
    t.location = "staging/MasterDetail.zip"
    t.description = t(:master_detail_application_desc)
    t.tags = ['Classic']
    t.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_detail.png"
  end

  project_template t(:tabbed_application) do |t|
    t.type = :titanium_mobile
    t.location = "staging/Tabbed.zip"
    t.description = t(:tabbed_application_desc)
    t.tags = ['Classic']
    t.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_tabbed.png"
  end

  project_template t(:html_application) do |t|
    t.type = :titanium_mobile
    t.location = "staging/HTML.zip"
    t.description = t(:html_application_desc)
    t.tags = ['Classic']
    t.icon = "http://preview.appcelerator.com/dashboard/img/icons/icon_html.png" 
  end
  
end
