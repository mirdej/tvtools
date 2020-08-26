(function(){
Template.__checkName("member_new");
Template["member_new"] = new Template("Template.member_new", (function() {
  var view = this;
  return [ HTML.Raw('<button class="snap"><i class="fa fa-camera-retro fa-2x"></i></button>\n\n\n  '), Blaze.If(function() {
    return Spacebars.call(view.lookup("photo"));
  }, function() {
    return [ "\n    ", HTML.DIV("\n      ", HTML.IMG({
      src: function() {
        return Spacebars.mustache(view.lookup("photo"));
      },
      height: "360"
    }), "\n    "), "\n  " ];
  }), HTML.Raw('\n <form class="member_new" style="margin-top:20px;border 1px solid #666;">\n  <input id="f" type="text" name="first" placeholder="Vorname">\n<input id="l" type="text" name="last" placeholder="Nachname">\n<input id="n" type="text" name="tel" placeholder="Mobil Nummer">\n<input type="submit" value="Sichern"></form><form class="cancel"><button class="cancel">Annullieren</button>\n</form>') ];
}));

})();
