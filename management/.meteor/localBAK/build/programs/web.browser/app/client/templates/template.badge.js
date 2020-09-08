(function(){
Template.__checkName("badge");
Template["badge"] = new Template("Template.badge", (function() {
  var view = this;
  return [ Blaze.Each(function() {
    return Spacebars.call(view.lookup("members"));
  }, function() {
    return [ "\n", HTML.DIV({
      "class": "ausweis",
      style: "clear:both;position:relative;width:86mm;height:54.7mm;margin:0mm;padding:0mm;"
    }, "\n", HTML.Comment('<input type="checkbox" class="doPrint" checked="checked" style="position:absolute;left:9cm;top:1cm;">'), "\n", HTML.IMG({
      "class": "card",
      src: function() {
        return Spacebars.mustache(view.lookup("bg"));
      },
      style: "width:86mm;height:54.7mm;"
    }), "\n", HTML.IMG({
      src: function() {
        return Spacebars.mustache(view.lookup("pic"));
      },
      style: "width:2.17cm;height:2.8cm;position:absolute;right:3mm;top:2mm;"
    }), "\n", HTML.DIV({
      "class": "name",
      style: "position:absolute;width:52mm;height:11mm;left:2.5mm;vertical-align:bottom;top:16mm;font-size:1.5em;font-weight:bold;line-height: 90%;"
    }, HTML.SPAN({
      style: "position:absolute;bottom:0mm;left:0mm;"
    }, Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), " ", Blaze.View("lookup:last", function() {
      return Spacebars.mustache(view.lookup("last"));
    }))), "\n", HTML.DIV({
      "class": "valid",
      style: "position:absolute; left:22mm; bottom:3mm;color:white;"
    }, Blaze.View("lookup:valid", function() {
      return Spacebars.mustache(view.lookup("valid"));
    })), "\n", HTML.DIV({
      "class": "project",
      style: "position:absolute; left:2.5mm; top:9mm;color:#fafafa;"
    }, Blaze.View("lookup:project", function() {
      return Spacebars.mustache(view.lookup("project"));
    })), "\n"), "\n\n" ];
  }), HTML.Raw('\n\n<button class="btn btn-primary alpha showAll dontPrint">Alle zeigen</button>') ];
}));

})();
