// http://docs.meteor.com/#/full/mobileconfigjs

// generate sizes --> http://ticons.fokkezb.nl/

// This section sets up some basic app metadata,
// the entire section is optional.
App.info({
  id: 'com.roborally',
  name: 'RoboRally',
  description: 'You are brilliant. You are powerful. You are sophisticated. You are BORED. Play RoboRally online!',
  author: 'Marcel Panse',
  email: 'info@roborally.com',
  website: 'http://www.roborally.com'
});

// Set PhoneGap/Cordova preferences
App.setPreference('BackgroundColor', '0xffffffff');
App.setPreference('HideKeyboardFormAccessoryBar', true);
App.setPreference('Fullscreen', true);
App.setPreference('Orientation', "landscape");
