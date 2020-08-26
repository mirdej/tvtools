(function () {

/* Imports */
var Meteor = Package.meteor.Meteor;

/* Package-scope variables */
var Imagemagick;

(function () {

//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// packages/classcraft:imagemagick/classcraft:imagemagick.js                    //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
                                                                                //
var Future = Npm.require("fibers/future");                                      // 1
var im = Npm.require("imagemagick");                                            // 2
                                                                                // 3
Imagemagick = {};                                                               // 4
                                                                                // 5
["identify", "readMetadata", "convert", "resize", "crop"].forEach(function(fn){ // 6
    Imagemagick[fn] = function(args){                                           // 7
        var future = new Future();                                              // 8
        var cb = future.resolver();                                             // 9
                                                                                // 10
        im[fn](args, cb);                                                       // 11
                                                                                // 12
        return future.wait();                                                   // 13
    };                                                                          // 14
});                                                                             // 15
                                                                                // 16
//////////////////////////////////////////////////////////////////////////////////

}).call(this);


/* Exports */
if (typeof Package === 'undefined') Package = {};
Package['classcraft:imagemagick'] = {
  Imagemagick: Imagemagick
};

})();

//# sourceMappingURL=classcraft_imagemagick.js.map
