(function(){
Template.__checkName("ablauf");
Template["ablauf"] = new Template("Template.ablauf", (function() {
  var view = this;
  return HTML.DIV("\n	", HTML.H2("\n		Sendung vom ", Blaze.View("lookup:sendungsDate", function() {
    return Spacebars.mustache(view.lookup("sendungsDate"));
  }), " \n	"), "\n	", HTML.P("\n		Dauer ca ", Blaze.View("lookup:totalTime", function() {
    return Spacebars.mustache(view.lookup("totalTime"));
  }), " \n	"), "\n	", HTML.OL({
    "class": "ablauf",
    id: "sortable"
  }, "\n		", HTML.Raw('<li> <span class="title"> \n\n			Jingle \n		</span> <span class="duration">0:45</span> </li>'), "\n		", Blaze.Each(function() {
    return Spacebars.call(view.lookup("thegroups"));
  }, function() {
    return [ " \n		", HTML.LI({
      "class": function() {
        return Blaze.If(function() {
          return Spacebars.call(view.lookup("isLive"));
        }, function() {
          return "live";
        });
      }
    }, " ", HTML.SPAN({
      "class": "title"
    }, " \n\n			", Blaze.If(function() {
      return Spacebars.call(view.lookup("isLive"));
    }, function() {
      return "LIVE: ";
    }), Blaze.View("lookup:title", function() {
      return Spacebars.mustache(view.lookup("title"));
    }), " \n\n		"), " ", HTML.SPAN({
      "class": "info"
    }, Blaze.Unless(function() {
      return Spacebars.call(view.lookup("noDescription"));
    }, function() {
      return Blaze.View("lookup:description", function() {
        return Spacebars.mustache(view.lookup("description"));
      });
    }), " \n		", HTML.UL({
      "class": "comma-list",
      style: "display:inline;margin: 0px 10px;padding:0px;"
    }, "\n			", Blaze.Each(function() {
      return Spacebars.call(view.lookup("members"));
    }, function() {
      return [ " \n			", HTML.LI(" ", Blaze.View("lookup:first", function() {
        return Spacebars.mustache(view.lookup("first"));
      })), "\n			" ];
    }), " \n		"), "\n		"), " ", HTML.SPAN({
      "class": "duration"
    }, " ", Blaze.If(function() {
      return Spacebars.call(view.lookup("currentUser"));
    }, function() {
      return [ " \n		", HTML.INPUT({
        type: "time",
        "class": "dauer",
        placeholder: "Dauer",
        value: function() {
          return Spacebars.mustache(view.lookup("niceDuration"));
        }
      }), "\n		" ];
    }, function() {
      return [ " \n		", HTML.P("\n			", Blaze.View("lookup:niceDuration", function() {
        return Spacebars.mustache(view.lookup("niceDuration"));
      }), " \n		"), "\n		" ];
    }), " "), " "), "\n		" ];
  }), " \n		", HTML.Raw('<li> <span class="title"> \n\n			Abpann \n		</span> <span class="duration">0:45</span> </li>'), "\n	"), "\n	", Blaze.If(function() {
    return Spacebars.call(view.lookup("currentUser"));
  }, function() {
    return [ " \n	", HTML.DIV({
      "class": "panel newGroup dontPrint"
    }, "\n		", HTML.FORM({
      "class": "newGroup"
    }, "\n			", HTML.INPUT({
      id: "f",
      type: "text",
      placeholder: "Livegast"
    }), " \n			", HTML.INPUT({
      type: "submit",
      value: "Neu"
    }), " \n		"), "\n	"), "\n	", HTML.BUTTON({
      "class": "btn btn-primary alpha dontPrint"
    }, "Alphabetisch"), " " ];
  }), " \n");
}));

})();
