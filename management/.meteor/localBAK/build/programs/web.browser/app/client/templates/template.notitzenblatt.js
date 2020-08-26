(function(){
Template.__checkName("notizenblatt");
Template["notizenblatt"] = new Template("Template.notizenblatt", (function() {
  var view = this;
  return Blaze.Each(function() {
    return Spacebars.call(view.lookup("groups"));
  }, function() {
    return [ " \n	", HTML.HR(), "\n\n	", HTML.SPAN({
      "class": function() {
        return [ "title cam_", Spacebars.mustache(view.lookup("camera")) ];
      },
      style: function() {
        return Spacebars.mustache(view.lookup("styling"));
      }
    }, "\n			", HTML.H4({
      "class": "title"
    }, "\n				", Blaze.View("lookup:camera", function() {
      return Spacebars.mustache(view.lookup("camera"));
    }), HTML.BR(), "\n				", HTML.SMALL(Blaze.View("lookup:title", function() {
      return Spacebars.mustache(view.lookup("title"));
    })), "\n			"), "\n	"), "\n	\n	" ];
  });
}));

Template.__checkName("namenliste");
Template["namenliste"] = new Template("Template.namenliste", (function() {
  var view = this;
  return [ HTML.Raw('<div style="height:4em;">&nbsp;</div>\n'), Blaze.Each(function() {
    return Spacebars.call(view.lookup("members"));
  }, function() {
    return [ "\n", HTML.DIV({
      style: "height:3em;border-top:1px solid black;"
    }, "\n", Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), " ", Blaze.View("lookup:last", function() {
      return Spacebars.mustache(view.lookup("last"));
    }), "\n"), "\n" ];
  }) ];
}));

})();
