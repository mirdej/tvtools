(function(){
Template.__checkName("klappentext");
Template["klappentext"] = new Template("Template.klappentext", (function() {
  var view = this;
  return HTML.DIV({
    "class": "klappentext"
  }, "\n\n", HTML.DIV({
    "class": "spalte",
    id: "namenliste"
  }, "\n", Spacebars.include(view.lookupTemplate("klappentextpostenliste")), "\n"), "\n\n\n", HTML.DIV({
    "class": "spalte"
  }, "\n  ", HTML.Raw("<h3>Leitung</h3>"), "\n ", HTML.UL(Blaze.Each(function() {
    return Spacebars.call(view.lookup("leitung"));
  }, function() {
    return [ "\n", HTML.LI(Blaze.View("lookup:name", function() {
      return Spacebars.mustache(view.lookup("name"));
    })), "\n" ];
  }), "\n "), "\n \n", HTML.Raw("<h3>Mit einem<br>&nbsp;&nbsp;Dankeschön an</h3>"), "\n", HTML.UL("\n", Blaze.Each(function() {
    return Spacebars.call(view.lookup("danke"));
  }, function() {
    return [ "\n", HTML.LI(Blaze.View("lookup:name", function() {
      return Spacebars.mustache(view.lookup("name"));
    })), "\n" ];
  }), "\n"), "\n"), "\n");
}));

Template.__checkName("klappentextpostenliste");
Template["klappentextpostenliste"] = new Template("Template.klappentextpostenliste", (function() {
  var view = this;
  return Blaze.Each(function() {
    return Spacebars.call(view.lookup("entries"));
  }, function() {
    return [ "\n\n  ", HTML.H3(Blaze.View("lookup:job", function() {
      return Spacebars.mustache(view.lookup("job"));
    })), "\n   ", HTML.UL("\n   ", Blaze.Each(function() {
      return Spacebars.call(view.lookup("members"));
    }, function() {
      return [ "\n      ", HTML.LI(Blaze.View("lookup:first", function() {
        return Spacebars.mustache(view.lookup("first"));
      }), " ", Blaze.View("lookup:last", function() {
        return Spacebars.mustache(view.lookup("last"));
      })), "\n    " ];
    }), "\n   "), "\n" ];
  });
}));

})();
