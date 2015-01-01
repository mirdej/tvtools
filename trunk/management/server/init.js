
//file:/server/init.js
Meteor.startup(function () {

  UploadServer.init({
    tmpDir: process.env.PWD + '/.uploads/tmp',
    uploadDir: process.env.PWD + '/.uploads/',
    getFileName: function(file, formData) {
        var items = file.split('.');
        return Meteor.uuid()+'.'+file;},
     imageVersions:  {thumbnailBig: {width: 400, height: 300}, thumbnailSmall: {width: 200, height: 100}}
  })
});


