(function(){
Template.__checkName("posten");
Template["posten"] = new Template("Template.posten", (function() {
  var view = this;
  return [ HTML.Raw("<h2>Jobverteilung</h2>\n"), HTML.TABLE({
    "class": "table table-condensed listederlueste"
  }, "\n\n", Blaze.Each(function() {
    return Spacebars.call(view.lookup("members"));
  }, function() {
    return [ "\n", HTML.TR({
      id: function() {
        return Spacebars.mustache(view.lookup("_id"));
      }
    }, "\n   ", HTML.TH({
      "class": function() {
        return Spacebars.mustache(view.lookup("isSet"));
      }
    }, Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), " ", Blaze.View("lookup:last", function() {
      return Spacebars.mustache(view.lookup("last"));
    })), "\n\n\n   ", Blaze.Each(function() {
      return Spacebars.call(view.lookup("jobs"));
    }, function() {
      return [ "\n         ", HTML.TD({
        "class": function() {
          return [ "job ", Spacebars.mustache(view.lookup("lustClass"), view.lookup("..")), " ", Spacebars.mustache(view.lookup("hasJob"), view.lookup("..")) ];
        }
      }, Blaze.View("lookup:job", function() {
        return Spacebars.mustache(view.lookup("job"));
      })), "\n   " ];
    }), "\n"), "\n" ];
  }), "\n"), HTML.Raw('\n<button class="clear">Clear</button>') ];
}));

})();
