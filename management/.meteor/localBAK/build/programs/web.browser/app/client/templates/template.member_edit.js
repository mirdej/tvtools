(function(){
Template.__checkName("member_edit");
Template["member_edit"] = new Template("Template.member_edit", (function() {
  var view = this;
  return HTML.DIV("\n      ", Blaze.Each(function() {
    return Spacebars.call(view.lookup("editmembers"));
  }, function() {
    return [ " ", Spacebars.include(view.lookupTemplate("editmemberform")), " " ];
  }), " \n	");
}));

Template.__checkName("editmemberform");
Template["editmemberform"] = new Template("Template.editmemberform", (function() {
  var view = this;
  return HTML.DIV(HTML.FORM(HTML.DIV({
    "class": "img-container"
  }, "\n", HTML.IMG({
    src: function() {
      return Spacebars.mustache(view.lookup("pic"));
    },
    width: "320"
  })), "\n\n", HTML.INPUT({
    type: "text",
    name: "up_first",
    value: function() {
      return Spacebars.mustache(view.lookup("first"));
    }
  }), "\n ", HTML.INPUT({
    type: "text",
    name: "up_last",
    value: function() {
      return Spacebars.mustache(view.lookup("last"));
    }
  }), "\n ", HTML.INPUT({
    type: "text",
    name: "up_tel",
    value: function() {
      return Spacebars.mustache(view.lookup("tel"));
    }
  }), "\n", HTML.Raw('<input type="submit" class="save">'), HTML.Raw('<button class="cancel">Cancel</button>')));
}));

})();
