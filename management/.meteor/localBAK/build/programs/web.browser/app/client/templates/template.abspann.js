(function(){
Template.__checkName("abspann");
Template["abspann"] = new Template("Template.abspann", (function() {
  var view = this;
  return HTML.DIV({
    "class": "abspann"
  }, "\n", HTML.H2({
    style: "display:block;width:300px;"
  }, Blaze.View("lookup:vorlauf", function() {
    return Spacebars.mustache(view.lookup("vorlauf"));
  })), HTML.Raw("\n<br>\n <h3>Mit</h3>\n    "), Blaze.Each(function() {
    return Spacebars.call(view.lookup("all"));
  }, function() {
    return [ "  ", HTML.CharRef({
      html: "&nbsp;",
      str: " "
    }), "\n", Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), HTML.BR() ];
  }), HTML.Raw("\n\n <br>\n <h3>Leitung</h3>\n "), Blaze.Each(function() {
    return Spacebars.call(view.lookup("leitung"));
  }, function() {
    return [ "\n", HTML.CharRef({
      html: "&nbsp;",
      str: " "
    }), Blaze.View("lookup:name", function() {
      return Spacebars.mustache(view.lookup("name"));
    }), HTML.BR(), "\n" ];
  }), "\n \n", Spacebars.include(view.lookupTemplate("postenliste")), HTML.Raw("\n<br>\n<h3>Mit einem<br>&nbsp;&nbsp;Dankeschön an</h3>\n"), Blaze.Each(function() {
    return Spacebars.call(view.lookup("danke"));
  }, function() {
    return [ "\n", HTML.CharRef({
      html: "&nbsp;",
      str: " "
    }), Blaze.View("lookup:name", function() {
      return Spacebars.mustache(view.lookup("name"));
    }), HTML.BR(), "\n" ];
  }), "\n", HTML.P({
    id: "copyright"
  }, "(cc) ", Blaze.View("lookup:year", function() {
    return Spacebars.mustache(view.lookup("year"));
  }), "\n [ a n y m a ]"), "\n");
}));

Template.__checkName("postenliste");
Template["postenliste"] = new Template("Template.postenliste", (function() {
  var view = this;
  return Blaze.Each(function() {
    return Spacebars.call(view.lookup("entries"));
  }, function() {
    return [ "\n", HTML.BR(), "\n  ", HTML.H3(Blaze.View("lookup:job", function() {
      return Spacebars.mustache(view.lookup("job"));
    })), "\n    ", Blaze.Each(function() {
      return Spacebars.call(view.lookup("members"));
    }, function() {
      return [ "  ", HTML.CharRef({
        html: "&nbsp;",
        str: " "
      }), "\n", Blaze.View("lookup:first", function() {
        return Spacebars.mustache(view.lookup("first"));
      }), HTML.BR() ];
    }), "\n" ];
  });
}));

Template.__checkName("spick");
Template["spick"] = new Template("Template.spick", (function() {
  var view = this;
  return HTML.DIV({
    "class": "spick"
  }, "\n ", HTML.DIV({
    id: "posten",
    style: "position:absolute;left:1cm;top:1cm;"
  }, Spacebars.include(view.lookupTemplate("postenliste")), "\n"), HTML.Raw("\n<p>&nbsp;</p>\n\n  "), HTML.DIV({
    id: "posten1",
    style: "position:absolute;left:7cm;top:1cm;"
  }, Spacebars.include(view.lookupTemplate("postenliste")), "\n"), HTML.Raw("\n<p>&nbsp;</p>\n\n  "), HTML.DIV({
    id: "posten2",
    style: "position:absolute;left:13cm;top:1cm;"
  }, Spacebars.include(view.lookupTemplate("postenliste")), "\n"), HTML.Raw("\n<p>&nbsp;</p>\n"));
}));

})();
