//////////////////////////////////////////////////////////////////////////
//                                                                      //
// This is a generated file. You can view the original                  //
// source in your browser if your browser supports source maps.         //
//                                                                      //
// If you are using Chrome, open the Developer Tools and click the gear //
// icon in its lower right corner. In the General Settings panel, turn  //
// on 'Enable source maps'.                                             //
//                                                                      //
// If you are using Firefox 23, go to `about:config` and set the        //
// `devtools.debugger.source-maps-enabled` preference to true.          //
// (The preference should be on by default in Firefox 24; versions      //
// older than 23 do not support source maps.)                           //
//                                                                      //
//////////////////////////////////////////////////////////////////////////


(function () {

/* Imports */
var Meteor = Package.meteor.Meteor;
var Template = Package.templating.Template;
var Session = Package.session.Session;
var Blaze = Package.blaze.Blaze;
var UI = Package.blaze.UI;
var Handlebars = Package.blaze.Handlebars;
var ReactiveVar = Package['reactive-var'].ReactiveVar;
var HTML = Package.htmljs.HTML;

/* Package-scope variables */
var MeteorCamera, desiredHeight, desiredWidth;

(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                              //
// packages/mdg:camera/template.photo.js                                                                        //
//                                                                                                              //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                //
                                                                                                                // 1
Template.__checkName("camera");                                                                                 // 2
Template["camera"] = new Template("Template.camera", (function() {                                              // 3
  var view = this;                                                                                              // 4
  return [ HTML.Raw('<div class="camera-overlay">\n    \n  </div>\n\n  '), HTML.DIV({                           // 5
    "class": function() {                                                                                       // 6
      return [ "camera-popup ", Blaze.If(function() {                                                           // 7
        return Spacebars.call(view.lookup("permissionDeniedError"));                                            // 8
      }, function() {                                                                                           // 9
        return "camera-popup-wide";                                                                             // 10
      }) ];                                                                                                     // 11
    }                                                                                                           // 12
  }, "\n    ", Blaze.If(function() {                                                                            // 13
    return Spacebars.call(view.lookup("error"));                                                                // 14
  }, function() {                                                                                               // 15
    return [ "\n      ", Blaze.If(function() {                                                                  // 16
      return Spacebars.call(view.lookup("permissionDeniedError"));                                              // 17
    }, function() {                                                                                             // 18
      return [ "\n        ", Spacebars.include(view.lookupTemplate("permissionDenied")), "\n      " ];          // 19
    }, function() {                                                                                             // 20
      return [ "\n        ", Blaze.If(function() {                                                              // 21
        return Spacebars.call(view.lookup("browserNotSupportedError"));                                         // 22
      }, function() {                                                                                           // 23
        return [ "\n          ", Blaze._TemplateWith(function() {                                               // 24
          return {                                                                                              // 25
            message: Spacebars.call("Sorry, this browser is currently not supported for camera functionality.") // 26
          };                                                                                                    // 27
        }, function() {                                                                                         // 28
          return Spacebars.include(view.lookupTemplate("genericError"));                                        // 29
        }), "\n        " ];                                                                                     // 30
      }, function() {                                                                                           // 31
        return [ "\n          ", Blaze._TemplateWith(function() {                                               // 32
          return {                                                                                              // 33
            message: Spacebars.call("There was an error accessing the camera.")                                 // 34
          };                                                                                                    // 35
        }, function() {                                                                                         // 36
          return Spacebars.include(view.lookupTemplate("genericError"));                                        // 37
        }), "\n        " ];                                                                                     // 38
      }), "\n      " ];                                                                                         // 39
    }), "\n    " ];                                                                                             // 40
  }, function() {                                                                                               // 41
    return [ "\n      ", Blaze.If(function() {                                                                  // 42
      return Spacebars.call(view.lookup("photo"));                                                              // 43
    }, function() {                                                                                             // 44
      return [ "\n        ", HTML.DIV({                                                                         // 45
        "class": "center"                                                                                       // 46
      }, "\n          ", HTML.IMG({                                                                             // 47
        src: function() {                                                                                       // 48
          return Spacebars.mustache(view.lookup("photo"));                                                      // 49
        },                                                                                                      // 50
        "class": "photo-preview"                                                                                // 51
      }), "\n          ", HTML.DIV("\n            ", HTML.BUTTON({                                              // 52
        "class": "button use-photo"                                                                             // 53
      }, "Use Photo"), "\n            ", HTML.BUTTON({                                                          // 54
        "class": "button new-photo"                                                                             // 55
      }, "Take New Photo"), "\n          "), "\n        "), "\n      " ];                                       // 56
    }, function() {                                                                                             // 57
      return [ "\n        ", Spacebars.include(view.lookupTemplate("viewfinder")), "\n      " ];                // 58
    }), "\n    " ];                                                                                             // 59
  }), "\n  ") ];                                                                                                // 60
}));                                                                                                            // 61
                                                                                                                // 62
Template.__checkName("viewfinder");                                                                             // 63
Template["viewfinder"] = new Template("Template.viewfinder", (function() {                                      // 64
  var view = this;                                                                                              // 65
  return [ HTML.DIV({                                                                                           // 66
    "class": "viewfinder"                                                                                       // 67
  }, "\n    ", HTML.VIDEO({                                                                                     // 68
    id: "video",                                                                                                // 69
    "class": function() {                                                                                       // 70
      return Blaze.If(function() {                                                                              // 71
        return Spacebars.call(view.lookup("waitingForPermission"));                                             // 72
      }, function() {                                                                                           // 73
        return "hidden";                                                                                        // 74
      });                                                                                                       // 75
    }                                                                                                           // 76
  }, "\n      "), "\n    \n    ", HTML.DIV("\n      ", Blaze.If(function() {                                    // 77
    return Spacebars.call(view.lookup("waitingForPermission"));                                                 // 78
  }, function() {                                                                                               // 79
    return [ "\n        ", HTML.P("Waiting for camera permissions..."), "\n      " ];                           // 80
  }, function() {                                                                                               // 81
    return [ "\n        ", HTML.BUTTON({                                                                        // 82
      "class": "button shutter"                                                                                 // 83
    }, "Take Photo"), "\n      " ];                                                                             // 84
  }), "\n      ", HTML.Raw('<button class="button cancel">Cancel</button>'), "\n    "), "\n  "), HTML.Raw('\n\n  <canvas id="canvas" style="visibility: hidden"></canvas>') ];
}));                                                                                                            // 86
                                                                                                                // 87
Template.__checkName("genericError");                                                                           // 88
Template["genericError"] = new Template("Template.genericError", (function() {                                  // 89
  var view = this;                                                                                              // 90
  return HTML.DIV({                                                                                             // 91
    "class": "generic-error"                                                                                    // 92
  }, "\n    ", HTML.P(Blaze.View(function() {                                                                   // 93
    return Spacebars.mustache(view.lookup("message"));                                                          // 94
  })), HTML.Raw('\n    <button class="button cancel">Close Popup</button>\n  '));                               // 95
}));                                                                                                            // 96
                                                                                                                // 97
Template.__checkName("permissionDenied");                                                                       // 98
Template["permissionDenied"] = new Template("Template.permissionDenied", (function() {                          // 99
  var view = this;                                                                                              // 100
  return HTML.Raw('<div class="permission-denied-error">\n    <h2>Camera Permissions Denied</h2>\n\n    <p>\n      You have denied this app permission to use your camera.\n      If you would like to allow permissions, follow the directions for your\n      browser below.\n    </p>\n\n    <dl class="permissions-howto">\n      <dt>Google Chrome</dt>\n        <dd>Go to Settings > "Show advanced settings..." >\n          "Content settings..." > Media heading > "Manage exceptions...",\n          then find this website in the list and allow video capture.</dd>\n      <dt>Mozilla Firefox</dt>\n        <dd>Reload the page and try again.</dd>\n      <dt>Opera</dt>\n        <dd>Go to Preferences > Websites > Media heading >\n          "Manage exceptions...", then find this website in the list and\n          allow video capture.</dd>\n    </dl>\n\n    <button class="button cancel">Close Popup</button>\n  </div>');
}));                                                                                                            // 102
                                                                                                                // 103
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                              //
// packages/mdg:camera/photo.js                                                                                 //
//                                                                                                              //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                //
MeteorCamera = {};                                                                                              // 1
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                              //
// packages/mdg:camera/photo-browser.js                                                                         //
//                                                                                                              //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                //
var stream;                                                                                                     // 1
var closeAndCallback;                                                                                           // 2
                                                                                                                // 3
var photo = new ReactiveVar(null);                                                                              // 4
var error = new ReactiveVar(null);                                                                              // 5
var waitingForPermission = new ReactiveVar(null);                                                               // 6
                                                                                                                // 7
var canvasWidth = 0;                                                                                            // 8
var canvasHeight = 0;                                                                                           // 9
                                                                                                                // 10
var quality = 80;                                                                                               // 11
                                                                                                                // 12
Template.viewfinder.rendered = function() {                                                                     // 13
  var template = this;                                                                                          // 14
                                                                                                                // 15
  waitingForPermission.set(true);                                                                               // 16
                                                                                                                // 17
  var video = template.find("video");                                                                           // 18
                                                                                                                // 19
  // stream webcam video to the <video> element                                                                 // 20
  var success = function(newStream) {                                                                           // 21
    stream = newStream;                                                                                         // 22
                                                                                                                // 23
    if (navigator.mozGetUserMedia) {                                                                            // 24
      video.mozSrcObject = stream;                                                                              // 25
    } else {                                                                                                    // 26
      var vendorURL = window.URL || window.webkitURL;                                                           // 27
      video.src = vendorURL.createObjectURL(stream);                                                            // 28
    }                                                                                                           // 29
    video.play();                                                                                               // 30
                                                                                                                // 31
    waitingForPermission.set(false);                                                                            // 32
  };                                                                                                            // 33
                                                                                                                // 34
  // user declined or there was some other error                                                                // 35
  var failure = function(err) {                                                                                 // 36
    error.set(err);                                                                                             // 37
  };                                                                                                            // 38
                                                                                                                // 39
  // tons of different browser prefixes                                                                         // 40
  navigator.getUserMedia = (                                                                                    // 41
    navigator.getUserMedia ||                                                                                   // 42
    navigator.webkitGetUserMedia ||                                                                             // 43
    navigator.mozGetUserMedia ||                                                                                // 44
    navigator.msGetUserMedia                                                                                    // 45
  );                                                                                                            // 46
                                                                                                                // 47
  if (! navigator.getUserMedia) {                                                                               // 48
    // no browser support, sorry                                                                                // 49
    failure("BROWSER_NOT_SUPPORTED");                                                                           // 50
    return;                                                                                                     // 51
  }                                                                                                             // 52
                                                                                                                // 53
  // initiate request for webcam                                                                                // 54
  navigator.getUserMedia({                                                                                      // 55
      video: true,                                                                                              // 56
      audio: false                                                                                              // 57
  }, success, failure);                                                                                         // 58
                                                                                                                // 59
  // resize viewfinder to a reasonable size, not necessarily photo size                                         // 60
  var viewfinderWidth = 320;                                                                                    // 61
  var viewfinderHeight = 240;                                                                                   // 62
  var resized = false;                                                                                          // 63
  video.addEventListener('canplay', function() {                                                                // 64
    if (! resized) {                                                                                            // 65
      viewfinderHeight = video.videoHeight / (video.videoWidth / viewfinderWidth);                              // 66
      video.setAttribute('width', viewfinderWidth);                                                             // 67
      video.setAttribute('height', viewfinderHeight);                                                           // 68
      resized = true;                                                                                           // 69
    }                                                                                                           // 70
  }, false);                                                                                                    // 71
};                                                                                                              // 72
                                                                                                                // 73
// is the current error a permission denied error?                                                              // 74
var permissionDeniedError = function () {                                                                       // 75
  return error.get() && (                                                                                       // 76
    error.get().name === "PermissionDeniedError" || // Chrome and Opera                                         // 77
    error.get() === "PERMISSION_DENIED" // Firefox                                                              // 78
  );                                                                                                            // 79
};                                                                                                              // 80
                                                                                                                // 81
// is the current error a browser not supported error?                                                          // 82
var browserNotSupportedError = function () {                                                                    // 83
  return error.get() && error.get() === "BROWSER_NOT_SUPPORTED";                                                // 84
};                                                                                                              // 85
                                                                                                                // 86
Template.camera.helpers({                                                                                       // 87
  photo: function () {                                                                                          // 88
    return photo.get();                                                                                         // 89
  },                                                                                                            // 90
  error: function () {                                                                                          // 91
    return error.get();                                                                                         // 92
  },                                                                                                            // 93
  permissionDeniedError: permissionDeniedError,                                                                 // 94
  browserNotSupportedError: browserNotSupportedError                                                            // 95
});                                                                                                             // 96
                                                                                                                // 97
Template.camera.events({                                                                                        // 98
  "click .use-photo": function () {                                                                             // 99
    closeAndCallback(null, photo.get());                                                                        // 100
  },                                                                                                            // 101
  "click .new-photo": function () {                                                                             // 102
    photo.set(null);                                                                                            // 103
  },                                                                                                            // 104
  "click .cancel": function () {                                                                                // 105
    if (permissionDeniedError()) {                                                                              // 106
      closeAndCallback(new Meteor.Error("permissionDenied", "Camera permissions were denied."));                // 107
    } else if (browserNotSupportedError()) {                                                                    // 108
      closeAndCallback(new Meteor.Error("browserNotSupported", "This browser isn't supported."));               // 109
    } else if (error.get()) {                                                                                   // 110
      closeAndCallback(new Meteor.Error("unknownError", "There was an error while accessing the camera."));     // 111
    } else {                                                                                                    // 112
      closeAndCallback(new Meteor.Error("cancel", "Photo taking was cancelled."));                              // 113
    }                                                                                                           // 114
                                                                                                                // 115
    if (stream) {                                                                                               // 116
      stream.stop();                                                                                            // 117
    }                                                                                                           // 118
  }                                                                                                             // 119
});                                                                                                             // 120
                                                                                                                // 121
Template.viewfinder.events({                                                                                    // 122
  'click .shutter': function (event, template) {                                                                // 123
    var video = template.find("video");                                                                         // 124
    var canvas = template.find("canvas");                                                                       // 125
                                                                                                                // 126
    canvas.width = canvasWidth;                                                                                 // 127
    canvas.height = canvasHeight;                                                                               // 128
    canvas.getContext('2d').drawImage(video, 0, 0, canvasWidth, canvasHeight);                                  // 129
    var data = canvas.toDataURL('image/jpeg', quality);                                                         // 130
    photo.set(data);                                                                                            // 131
    stream.stop();                                                                                              // 132
  }                                                                                                             // 133
});                                                                                                             // 134
                                                                                                                // 135
Template.viewfinder.helpers({                                                                                   // 136
  "waitingForPermission": function () {                                                                         // 137
    return waitingForPermission.get();                                                                          // 138
  }                                                                                                             // 139
});                                                                                                             // 140
                                                                                                                // 141
/**                                                                                                             // 142
 * @summary Get a picture from the device's default camera.                                                     // 143
 * @param  {Object}   options  Options                                                                          // 144
 * @param {Number} options.height The minimum height of the image                                               // 145
 * @param {Number} options.width The minimum width of the image                                                 // 146
 * @param {Number} options.quality [description]                                                                // 147
 * @param  {Function} callback A callback that is called with two arguments:                                    // 148
 * 1. error, an object that contains error.message and possibly other properties                                // 149
 * depending on platform                                                                                        // 150
 * 2. data, a Data URI string with the image encoded in JPEG format, ready to                                   // 151
 * use as the `src` attribute on an `<img />` tag.                                                              // 152
 */                                                                                                             // 153
MeteorCamera.getPicture = function (options, callback) {                                                        // 154
  // if options are not passed                                                                                  // 155
  if (! callback) {                                                                                             // 156
    callback = options;                                                                                         // 157
    options = {};                                                                                               // 158
  }                                                                                                             // 159
                                                                                                                // 160
  desiredHeight = options.height || 640;                                                                        // 161
  desiredWidth = options.width || 480;                                                                          // 162
                                                                                                                // 163
  // Canvas#toDataURL takes the quality as a 0-1 value, not a percentage                                        // 164
  quality = (options.quality || 49) / 100;                                                                      // 165
                                                                                                                // 166
  if (desiredHeight * 4 / 3 > desiredWidth) {                                                                   // 167
    canvasWidth = desiredHeight * 4 / 3;                                                                        // 168
    canvasHeight = desiredHeight;                                                                               // 169
  } else {                                                                                                      // 170
    canvasHeight = desiredWidth * 3 / 4;                                                                        // 171
    canvasWidth = desiredWidth;                                                                                 // 172
  }                                                                                                             // 173
                                                                                                                // 174
  canvasWidth = Math.round(canvasWidth);                                                                        // 175
  canvasHeight = Math.round(canvasHeight);                                                                      // 176
                                                                                                                // 177
  var view;                                                                                                     // 178
                                                                                                                // 179
  closeAndCallback = function () {                                                                              // 180
    var originalArgs = arguments;                                                                               // 181
    UI.remove(view);                                                                                            // 182
    photo.set(null);                                                                                            // 183
    callback.apply(null, originalArgs);                                                                         // 184
  };                                                                                                            // 185
                                                                                                                // 186
  view = UI.renderWithData(Template.camera);                                                                    // 187
  UI.insert(view, document.body);                                                                               // 188
};                                                                                                              // 189
                                                                                                                // 190
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);


/* Exports */
if (typeof Package === 'undefined') Package = {};
Package['mdg:camera'] = {
  MeteorCamera: MeteorCamera
};

})();
