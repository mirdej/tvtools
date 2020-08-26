(function(){
Template.__checkName("lueste");
Template["lueste"] = new Template("Template.lueste", (function() {
  var view = this;
  return [ HTML.Raw("<h2>Liste der Lüste</h2>\n"), HTML.TABLE({
    "class": "table table-condensed listederlueste"
  }, "\n\n", Blaze.Each(function() {
    return Spacebars.call(view.lookup("members"));
  }, function() {
    return [ "\n", HTML.TR({
      id: function() {
        return Spacebars.mustache(view.lookup("_id"));
      }
    }, "\n   ", HTML.TH(Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), " ", Blaze.View("lookup:last", function() {
      return Spacebars.mustache(view.lookup("last"));
    })), "\n\n\n   ", Blaze.Each(function() {
      return Spacebars.call(view.lookup("jobs"));
    }, function() {
      return [ "\n         ", HTML.TD({
        "class": function() {
          return [ "job ", Spacebars.mustache(view.lookup("lustClass"), view.lookup("..")) ];
        }
      }, Blaze.View("lookup:job", function() {
        return Spacebars.mustache(view.lookup("job"));
      })), "\n   " ];
    }), "\n"), "\n" ];
  }), "\n") ];
}));

})();
