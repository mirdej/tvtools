(function(){
Template.__checkName("member_crop");
Template["member_crop"] = new Template("Template.member_crop", (function() {
  var view = this;
  return [ HTML.Raw('<button class="snap"><i class="fa fa-camera-retro fa-2x"></i></button>\n \n <label class="btn btn-primary" for="inputImage" title="Upload image file">\n              <input class="hide" id="inputImage" name="file" type="file" accept="image/*">\n              <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="Import image with FileReader">\n                <span class="glyphicon glyphicon-upload"></span>\n              </span>\n            </label>\n            \n\n'), HTML.H2("Crop id ", Blaze.View("lookup:edit", function() {
    return Spacebars.mustache(view.lookup("edit"));
  })), "\n   ", HTML.DIV(HTML.FORM({
    "class": "cropper"
  }, HTML.DIV({
    "class": "img-container"
  }, "\n", HTML.IMG({
    src: function() {
      return Spacebars.mustache(view.lookup("pic"));
    },
    width: "320"
  })), "\n", HTML.Raw('<button class="save">Save</button>'), HTML.Raw('<button class="cancel">Cancel</button>'), HTML.Raw('<button class="reset">Reset</button>'))) ];
}));

})();
