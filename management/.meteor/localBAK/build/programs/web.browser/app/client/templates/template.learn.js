(function(){
Template.__checkName("learn");
Template["learn"] = new Template("Template.learn", (function() {
  var view = this;
  return Blaze.Each(function() {
    return Spacebars.call(view.lookup("members"));
  }, function() {
    return [ "\n", Blaze.If(function() {
      return Spacebars.call(view.lookup("showmember"));
    }, function() {
      return [ "\n", HTML.DIV({
        "class": "panel panel-default"
      }, "\n  ", HTML.DIV({
        "class": "panel-body"
      }, "\n  ", HTML.TABLE(HTML.TR(HTML.TD(HTML.IMG({
        src: function() {
          return Spacebars.mustache(view.lookup("pic"));
        },
        height: "600"
      })), HTML.TD({
        style: "padding:20px;"
      }, Blaze.If(function() {
        return Spacebars.call(view.lookup("showname"));
      }, function() {
        return HTML.H1({
          style: "font-size:8em;"
        }, " ", Blaze.View("lookup:first", function() {
          return Spacebars.mustache(view.lookup("first"));
        }), " ");
      })))), " "), "\n"), "\n" ];
    }), "\n" ];
  });
}));

})();
