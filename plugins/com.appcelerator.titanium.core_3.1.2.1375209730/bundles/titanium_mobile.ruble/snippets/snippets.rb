with_defaults :scope => 'meta.project.com.appcelerator.titanium.mobile source.js' do  
  snippet 'Ti.API.debug' do |s|
    s.trigger = 'd'
    s.expansion = 'Ti.API.debug(${0:${TM_SELECTED_TEXT}})'
  end
  
  snippet 'Ti.API.info' do |s|
    s.trigger = 'info'
    s.expansion = 'Ti.API.info(\'${0:log}\')'
  end
  
  snippet 'Ti.API.log' do |s|
    s.trigger = 'l'
    s.expansion = 'Ti.API.log(\'${1:info}\',${0:${TM_SELECTED_TEXT}})'
  end
  
  snippet 'Ti.App.addEventListener' do |s|
    s.trigger = 'ae'
    s.expansion = 'Ti.App.addEventListener(\'${1:event}\', $0);'
  end
  
  snippet 'Ti.App.fireEvent' do |s|
    s.trigger = 'fe'
    s.expansion = 'Ti.App.fireEvent(\'${1:event}\'$0)'
  end
  
  snippet 'createButton' do |s|
    s.trigger = 'button'
    s.expansion = 
"
// Create a Button.
var ${1:aButton} = Ti.UI.createButton({
\ttitle : '${1:aButton}',
\theight : ${2:myHeight},
\twidth : ${3:myWidth},
\ttop : ${4:myTop},
\tleft : ${5:myLeft}
});

// Listen for click events.
${1:aButton}.addEventListener('click', function() {
\talert('\\'${1:aButton}\\' was clicked!');
});

// Add to the parent view.
${6:parentView}.add(${1:aButton});
"
  end
  
  snippet 'createLabel' do |s|
    s.trigger = 'label'
    s.expansion = 
"
// Create a Label.
var ${1:aLabel} = Ti.UI.createLabel({
\ttext : '${1:aLabel}',
\tcolor : '\#${2:textColor}',
\tfont : {fontSize:${3:myFontSize}},
\theight : ${4:myHeight},
\twidth : ${5:myWidth},
\ttop : ${6:myTop},
\tleft : ${7:myLeft},
\ttextAlign : 'center'
});

// Add to the parent view.
${8:parentView}.add(${1:aLabel});
"
  end
  
  snippet 'createImageView' do |s|
    s.trigger = 'imageview'
    s.expansion = 
"
// Create an ImageView.
var ${1:anImageView} = Ti.UI.createImageView({
\timage : '${2:location}',
\twidth : ${3:myWidth},
\theight : ${4:myHeight},
\ttop : ${5:myTop},
\tleft : ${6:myLeft}
});
${1:anImageView}.addEventListener('load', function() {
\tTi.API.info('Image loaded!');
});

// Add to the parent view.
${7:parentView}.add(${1:anImageView});
"
  end
  
  snippet 'createPickerSimple' do |s|
    s.trigger = 'pickersimple'
    s.expansion = 
"
// Create a Picker.
var ${1:aPicker} = Ti.UI.createPicker({
\tselectionIndicator : true
});

// Add data to the Picker.
var data = [];
data[0] = Ti.UI.createPickerRow({title:'Bananas', custom_item:'b'});
data[1] = Ti.UI.createPickerRow({title:'Strawberries', custom_item:'s'});
data[2] = Ti.UI.createPickerRow({title:'Mangos', custom_item:'m'});
data[3] = Ti.UI.createPickerRow({title:'Grapes', custom_item:'g'});
${1:aPicker}.add(data);

// Listen for change events.
${1:aPicker}.addEventListener('change', function(e) {
\talert('You selected: row:' + e.row.title + ', column: ' + e.column + ', custom_item: ' + e.row.custom_item);
});

// Add to the parent view.
${2:parentView}.add(${1:aPicker});
"
  end
  
  snippet 'createPickerMulti' do |s|
    s.trigger = 'pickermulti'
    s.expansion = 
"
// Create a Picker.
var ${1:aPicker} = Ti.UI.createPicker({
\tselectionIndicator : true
});

// Add data to the Picker.
var column1 = Ti.UI.createPickerColumn();
column1.addRow(Ti.UI.createPickerRow({title:'Bananas', custom_item:'bna'}));
column1.addRow(Ti.UI.createPickerRow({title:'Strawberries', custom_item:'str', selected:true}));
column1.addRow(Ti.UI.createPickerRow({title:'Mangos', custom_item:'mng'}));
column1.addRow(Ti.UI.createPickerRow({title:'Grapes', custom_item:'grp'}));

var column2 = Ti.UI.createPickerColumn();
column2.addRow(Ti.UI.createPickerRow({title: 'red'}));
column2.addRow(Ti.UI.createPickerRow({title: 'green'}));
column2.addRow(Ti.UI.createPickerRow({title: 'blue'}));
column2.addRow(Ti.UI.createPickerRow({title: 'orange'}));
${1:aPicker}.add([column1,column2]);

// Listen for change events.
${1:aPicker}.addEventListener('change', function(e) {
\talert('You selected: row:' + e.row.title + ', column: ' + e.column + ', custom_item: ' + e.row.custom_item);
});

// Add to the parent view.
${2:parentView}.add(${1:aPicker});
"
  end
  
  snippet 'createSwitch' do |s|
    s.trigger = 'switch'
    s.expansion = 
"
// Create a Switch.
var ${1:aSwitch} = Ti.UI.createSwitch({
\tvalue : false,
\ttop : ${2:myTop},
\tleft : ${3:myLeft}
});

// Listen for change events.
${1:aSwitch}.addEventListener('change', function(e) {
\tTi.API.info('Event value: ' + e.value + ', switch value: ' + ${1:aSwitch}.value);
});

// Add to the parent view.
${4:parentView}.add(${1:aSwitch});
"
end

  snippet 'appBadge' do |s|
    s.trigger = 'appbadge'
    s.expansion = 
"
// Create a Button to toggle the App Badge.
var appBadgeToggleButton = Ti.UI.createButton({
\ttitle : 'Toggle App Badge',
\twidth : 200,
\theight : 40,
\ttop : 10
});
var badgeVal = 0;

// Listen for click events.
appBadgeToggleButton.addEventListener('click', function() {
\tif (!Ti.UI.iPhone.appBadge) {
\t\tTi.UI.iPhone.appBadge = ++badgeVal;
\t\tTi.API.info('The App badge has the value: ' + badgeVal);
\t} else {
\t\tTi.UI.iPhone.appBadge = null;
\t\tTi.API.info('The App badge has been removed');
\t}
});

// Add to the parent view.
${1:parentView}.add(appBadgeToggleButton);
"
  end
  
  snippet 'createHttpClientBinary' do |s|
    s.trigger = 'httpclientbinary'
    s.expansion = 
"
// Create a Label to show our status.
var statusLabel = Ti.UI.createLabel({
\ttext:'Downloading image ...', top:10, left:10, width:300, height:40, color:'#000'
});
var imageView = Ti.UI.createImageView({
\ttop:50, left:10, height:89, width:125, borderWidth:3, borderColor:'#ee0'
});

// Handle a failure.
function fail(status) {
\timageView.borderColor = '#f00';
\tstatusLabel.text = 'Download failed! status=' + status;
}

// Create an HTTPClient.
var ${1:anXhr} = Ti.Network.createHTTPClient();
${1:anXhr}.setTimeout(10000);

// Define the HTTPClient callbacks.
${1:anXhr}.onload = function() {
\tif (this.status === 200) {
\t\tvar f = Ti.Filesystem.getFile(Ti.Filesystem.applicationDataDirectory, 'ti.png');
\t\tf.write(this.responseData);
\t\timageView.image = f.nativePath;
\t\timageView.borderColor = '#0f0';
\t\tstatusLabel.text = 'Image downloaded!';
\t} else {
\t\tfail(this.status);
\t}
};
${1:anXhr}.onerror = function() {
\tfail(this.status);
}

${2:parentView}.add(statusLabel);
${2:parentView}.add(imageView);

// Send the request for binary data.
${1:anXhr}.open('GET', 'https://www.appcelerator.com/wp-content/uploads/2009/06/titanium_desk.png');
${1:anXhr}.send();
"
  end
  
  snippet 'createHttpClientXml' do |s|
    s.trigger = 'httpclientxml'
    s.expansion = 
"
// Create an HTTPClient.
var ${1:anXhr} = Ti.Network.createHTTPClient();
${1:anXhr}.setTimeout(10000);

// Define the callback.
${1:anXhr}.onload = function() {
\t// Handle the XML data.
\tvar doc = this.responseXML.documentElement;
\tvar elements = doc.getElementsByTagName('screen_name');
\tvar screenName = elements.item(0);

\tvar label = Ti.UI.createLabel({textAlign:'center', height:'auto', width:'auto', top:20, text:screenName.text});
\t${2:parentView}.add(label);
  
\tvar textArea = Ti.UI.createTextArea({borderRadius:5, borderWidth:2, borderColor:'#999', backgroundColor:'#111', color:'yellow', bottom:10, left:10, right:10, height:300, font:{fontSize:10}});
\ttextArea.value = this.responseText;
\t${2:parentView}.add(textArea);
};
${1:anXhr}.onerror = function() {
\talert('The HTTP request failed');
}

// Send the request data.
${1:anXhr}.open('GET','http://twitter.com/statuses/show/123.xml');
${1:anXhr}.send();
"
  end
  
  snippet 'createWebView' do |s|
    s.trigger = 'webview'
    s.expansion = 
"
// Create a WebView
var ${1:aWebView} = Ti.UI.createWebView({
\turl : 'http://developer.appcelerator.com'
});
${1:aWebView}.addEventListener('load', function(e) {
\tTi.API.info('webview loaded: '+ e.url);
});

// Add to the parent view.
${2:parentView}.add(${1:aWebView});
"
  end
  
  snippet 'createTabbedBar' do |s|
    s.trigger = 'tabbedbar'
    s.expansion = 
"
// Create a TabbedBar.
var ${1:aTabbedBar} = Ti.UI.createTabbedBar({
\tlabels : ['One', 'Two', 'Three', 'Four', 'Five'],
\tbackgroundColor : '#555',
\tindex : 2
});
var flexSpace = Ti.UI.createButton({
\tsystemButton : Ti.UI.iPhone.SystemButton.FLEXIBLE_SPACE
});
${2:parentView}.setToolbar([flexSpace, ${1:aTabbedBar}, flexSpace]);

// Listen for click events.
${1:aTabbedBar}.addEventListener('click', function(e) {
\talert('You clicked index = ' + e.index);
});
"
  end
  
  snippet 'createTextField' do |s|
    s.trigger = 'textfield'
    s.expansion = 
"
// Create a TextField.
var ${1:aTextField} = Ti.UI.createTextField({
\theight : 35,
\ttop : 10,
\tleft : 40,
\twidth : 240,
\thintText : 'This is hint text',
\tsoftKeyboardOnFocus : Ti.UI.Android.SOFT_KEYBOARD_DEFAULT_ON_FOCUS, // Android only
\tkeyboardType : Ti.UI.KEYBOARD_DEFAULT,
\treturnKeyType : Ti.UI.RETURNKEY_DEFAULT,
\tborderStyle : Ti.UI.INPUT_BORDERSTYLE_ROUNDED
});

// Listen for return events.
${1:aTextField}.addEventListener('return', function(e) {
\t${1:aTextField}.blur();
\talert('Input was: ' + ${1:aTextField}.value);
});

// Add to the parent view.
${2:parentView}.add(${1:aTextField});
"
  end
  
  snippet 'vibrate' do |s|
    s.trigger = 'vibrate'
    s.expansion = 
"
// Play a device vibration.
Ti.Media.vibrate();
"
  end
  
  snippet 'createTableView' do |s|
    s.trigger = 'tableview'
    s.expansion = 
"
// Create a TableView.
var ${1:aTableView} = Ti.UI.createTableView();

// Populate the TableView data.
var data = [
\t{title:'Row 1', hasChild:true, color:'red', header:'First'},
\t{title:'Row 2', hasDetail:true, color:'green'},
\t{title:'Row 3', hasCheck:true, color:'blue', header:'Second'},
\t{title:'Row 4', color:'orange'}
];
${1:aTableView}.setData(data);

// Listen for click events.
${1:aTableView}.addEventListener('click', function(e) {
\talert('title: \\'' + e.row.title + '\\', section: \\'' + e.section.headerTitle + '\\', index: ' + e.index);
});

// Add to the parent view.
${2:parentView}.add(${1:aTableView});
"
  end
  
  snippet 'base64' do |s|
    s.trigger = 'base64'
    s.expansion = 
"
var original = 'Appcelerator';
var encoded = Ti.Utils.base64encode(original);
var decoded = Ti.Utils.base64decode(encoded);
Ti.UI.createAlertDialog({
\ttitle : 'Base64 Encoding',
\tmessage : 'original: ' + original + '\\nencoded: ' + encoded + '\\ndecoded: ' + decoded
}).show();
"
  end
  
  snippet 'md5' do |s|
    s.trigger = 'md5'
    s.expansion = 
"
var original = 'Appcelerator';
var md5 = Ti.Utils.md5HexDigest(original);
var expected = 'b51747a51f685cfb684cf3e20918edeb';
Ti.UI.createAlertDialog({
\ttitle : 'md5',
\tmessage : 'original: ' + original + '\\nmd5: ' + md5 + '\\nexpected: ' + expected
}).show();
"
  end
  
  snippet 'createSound' do |s|
    s.trigger = 'sound'
    s.expansion = 
"
Ti.Media.audioSessionMode = Ti.Media.AUDIO_SESSION_MODE_AMBIENT;
var sound = Ti.Media.createSound({url : '../cricket.wav'});
sound.play();
"
  end
  
  snippet 'createCamera' do |s|
    s.trigger = 'camera'
    s.expansion = 
"
Ti.Media.showCamera({
\tsuccess : function(event) {
\t\talert('Your photo was saved to the Photo Gallery');
\t},
\tcancel : function() {
\t},
\terror : function(error) {
\t\tvar message;
\t\tif (error.code == Ti.Media.NO_CAMERA) {
\t\t\tmessage = 'Device does not have video recording capabilities';
\t\t} else {
\t\t\tmessage = 'Unexpected error: ' + error.code;
\t\t}

\t\tTi.UI.createAlertDialog({
\t\t\ttitle : 'Camera',
\t\t\tmessage : message
\t\t}).show();
\t},
\tsaveToPhotoGallery : true,
\tallowEditing : true,
\tmediaTypes : [Ti.Media.MEDIA_TYPE_VIDEO,Ti.Media.MEDIA_TYPE_PHOTO]
});
"
  end
  
  snippet 'createContact' do |s|
    s.trigger = 'contact'
    s.expansion = 
"
var ${1:aContact} = Ti.Contacts.createPerson({
\tfirstName : 'John',
\tlastName : 'Smith',
\tkind : Ti.Contacts.CONTACTS_KIND_PERSON,
\tURL : {
\t\t'homepage' : ['http://example.com'],
\t\t'url' : ['http://example.com']
\t},
\tphone : {
\t\t'work' : ['18885551212'],
\t\t'home' : ['18885551212'],
\t\t'mobile' : ['18885551212'],
\t\t'other' : ['18885551212']
\t},
\temail : {
\t\t'work' : ['jsmith@example.com'],
\t\t'home' : ['jsmith@example.com']
\t},
\taddress : {
\t\t'work' : [{
\t\t\t'Street' : '123 Main',
\t\t\t'City' : 'Boston',
\t\t\t'State' : 'MA',
\t\t\t'ZIP' : '02134',
\t\t\t'Country' : 'United States'
\t\t}],
\t\t'home' : [{
\t\t\t'Street' : '456 North',
\t\t\t'City' : 'Boston',
\t\t\t'State' : 'MA',
\t\t\t'ZIP' : '02134',
\t\t\t'Country' : 'United States'
\t\t}]
\t}
});
"
  end
  
  snippet 'createProgressBar' do |s|
    s.trigger = 'progressbar'
    s.expansion = 
"
// Create a ProgressBar.
var ${1:aProgressBar} = Ti.UI.createProgressBar({
\tmin : 0,
\tmax : 10,
\tvalue : 0,
\twidth : 200,
\theight : 70,
\tcolor : '#444',
\tmessage : 'Measuring Progress',
\tfont : {fontSize:14, fontWeight:'bold'},
\tstyle : Ti.UI.iPhone.ProgressBarStyle.PLAIN,
\ttop : 60
});

// Add to the parent view.
${2:parentView}.add(${1:aProgressBar});
${1:aProgressBar}.show();

// Sample timer to demonstrate ProgressBar functionality.
var val = 0;
var interval = setInterval(function() {
\tif (val <= 10) {
\t\t${1:aProgressBar}.value = val;
\t\t${1:aProgressBar}.message = 'Progress: ' + val + ' of 10';
\t\tval++;
\t} else {
\t\t${1:aProgressBar}.message = 'Progress complete!';
\t\tclearInterval(interval);
\t}
}, 500);
"
  end
  
  snippet 'createSlider' do |s|
    s.trigger = 'slider'
    s.expansion = 
"
// Create a Slider.
var ${1:aSlider} = Titanium.UI.createSlider({
\tmin : 0,
\tmax : 100,
\tvalue : 25,
\twidth : 200,
\theight : 'auto',
\ttop : 30
});

// Listen for change events.
${1:aSlider}.addEventListener('change', function(e) {
\tTi.API.info('Slider value: ' + Math.round(e.value) + ' (actual: ' + Math.round(${1:aSlider}.value) + ')');
});

// Add to the parent view.
${2:parentView}.add(${1:aSlider});
${1:aSlider}.show();
"
  end
  
  snippet 'properties' do |s|
    s.trigger = 'properties'
    s.expansion = 
"
// Add some Properties.
Ti.App.Properties.setString('String', 'Appcelerator');
Ti.App.Properties.setInt('Int', 10);
Ti.App.Properties.setBool('Bool', true);
Ti.App.Properties.setDouble('Double', 10.6);
Ti.App.Properties.setList('List', [{name:'One', address:'1 Main St'}, {name:'Two', address:'2 Main St'}]);

// Retrieve the Properties.
Ti.API.info('String: ' + Ti.App.Properties.getString('String'));
Ti.API.info('Int: ' + Ti.App.Properties.getInt('Int'));
Ti.API.info('Bool: ' + Ti.App.Properties.getBool('Bool'));
Ti.API.info('Double: ' + Ti.App.Properties.getDouble('Double'));
Ti.API.info('List: ' + JSON.stringify(Ti.App.Properties.getList('List')));

// Remove the Properties.
Ti.App.Properties.removeProperty('String');
Ti.App.Properties.removeProperty('Int');
Ti.App.Properties.removeProperty('Bool');
Ti.App.Properties.removeProperty('Double');
Ti.App.Properties.removeProperty('List');
"
  end
  
  snippet 'createAnimation' do |s|
    s.trigger = 'animation'
    s.expansion = 
"
// Create an object to animate.
var animatedView = Ti.UI.createView({top:20, left:20, height:40, width:200, backgroundColor:'#36a'});
${1:parentView}.add(animatedView);

// Create some Animations.
var firstMove = Ti.UI.createAnimation({duration:700, top:120, left:250, height:200, width:20, backgroundColor:'#a36'});
var secondMove = Ti.UI.createAnimation({duration:1000, top:20, left:20, height:40, width:200, backgroundColor:'#36a'});

// Start the Animation.
animatedView.animate(firstMove);

// Listen for start and complete events.
firstMove.addEventListener('start', function() {
\tTi.API.info('Animation 1 started');
});
firstMove.addEventListener('complete', function() {
\tTi.API.info('Animation 1 completed');
\tanimatedView.animate(secondMove);
});
secondMove.addEventListener('start', function() {
\tTi.API.info('Animation 2 started');
});
secondMove.addEventListener('complete', function() {
\tTi.API.info('Animation 2 completed');
});
"
  end
  
  snippet 'clipboard' do |s|
    s.trigger = 'clipboard'
    s.expansion = 
"
// Save some text to the Clipboard.
Ti.UI.Clipboard.setText('Appcelerator Titanium');

// Fetch the contents of the Clipboard.
if (Ti.UI.Clipboard.hasText()) {
\talert('Clipboard: ' + Ti.UI.Clipboard.getText());
} else {
\talert('No text on Clipboard.');
}

// Clear the Clipboard.
Ti.UI.Clipboard.clearText();
"
  end

  snippet 'tabBadge' do |s|
    s.trigger = 'tabbadge'
    s.expansion = 
"
// Create a Button to toggle the Tab Badge.
var tabBadgeToggleButton = Ti.UI.createButton({
\ttitle : 'Toggle Tab Badge',
\twidth : 200,
\theight : 40,
\ttop : 10
});
var badgeVal = 0;

// Listen for click events.
tabBadgeToggleButton.addEventListener('click', function() {
\tif (!${1:aTab}.badge) {
\t\t${1:aTab}.badge = ++badgeVal;
\t\tTi.API.info('The Tab badge has the value: ' + badgeVal);
\t} else {
\t\t${1:aTab}.badge = null;
\t\tTi.API.info('The Tab badge has been removed');
\t}
});

// Add to the parent view.
${2:parentView}.add(tabBadgeToggleButton);
"
  end

  snippet 'createAudioPlayer' do |s|
    s.trigger = 'audioplayer'
    s.expansion = 
"
// Create an AudioPlayer.
var ${1:anAudioPlayer} = Ti.Media.createAudioPlayer({
\turl : 'http://example.com/somefile.mp3'
});
${1:anAudioPlayer}.start();

// Listen for application pause and resume events.
Ti.App.addEventListener('pause', function(e) {
\t${1:anAudioPlayer}.setPaused(true);
});
Ti.App.addEventListener('resume', function(e) {
\t${1:anAudioPlayer}.setPaused(false);
});
"
  end
  
end