(function(){
Template.body.addContent((function() {
  var view = this;
  return "";
}));
Meteor.startup(Template.body.renderToDocument);

Template.__checkName("ApplicationLayout");
Template["ApplicationLayout"] = new Template("Template.ApplicationLayout", (function() {
  var view = this;
  return Blaze.If(function() {
    return Spacebars.call(view.lookup("currentUser"));
  }, function() {
    return [ "\n  ", Spacebars.include(view.lookupTemplate("navbar")), "\n  ", Spacebars.include(view.lookupTemplate("branding")), "\n      ", HTML.DIV({
      "class": "container-fluid"
    }, "\n          ", Spacebars.include(view.lookupTemplate("yield")), "\n      "), "\n" ];
  }, function() {
    return [ "\n  ", Blaze._TemplateWith(function() {
      return "loginYield";
    }, function() {
      return Spacebars.include(view.lookupTemplate("yield"));
    }), "\n  ", Spacebars.include(view.lookupTemplate("branding")), "\n  ", Spacebars.include(view.lookupTemplate("ablauf")), "\n" ];
  });
}));

Template.__checkName("branding");
Template["branding"] = new Template("Template.branding", (function() {
  var view = this;
  return HTML.DIV({
    id: "branding"
  }, HTML.IMG({
    src: function() {
      return Spacebars.mustache(view.lookup("project_logo"));
    },
    width: "100",
    "class": function() {
      return Spacebars.mustache(view.lookup("doPrint"));
    }
  }));
}));

Template.__checkName("login");
Template["login"] = new Template("Template.login", (function() {
  var view = this;
  return HTML.DIV({
    "class": "container-fluid"
  }, "\n                ", HTML.DIV({
    "class": "panel"
  }, "\n\n   ", Spacebars.include(view.lookupTemplate("loginButtons"))), "\n      ");
}));

})();
