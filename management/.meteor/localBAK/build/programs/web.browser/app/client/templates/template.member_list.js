(function(){
Template.__checkName("memberlist");
Template["memberlist"] = new Template("Template.memberlist", (function() {
  var view = this;
  return Blaze.If(function() {
    return Spacebars.call(view.lookup("docrop"));
  }, function() {
    return [ Spacebars.include(view.lookupTemplate("member_crop")), " " ];
  }, function() {
    return [ " \n", HTML.H2({
      "class": "sub-header"
    }, "\n	Mitarbeiter ", HTML.SPAN({
      "class": "badge"
    }, Blaze.View("lookup:member_count", function() {
      return Spacebars.mustache(view.lookup("member_count"));
    })), " ", HTML.LABEL({
      "class": "showall"
    }, " Show All \n	", HTML.INPUT({
      type: "checkbox",
      "data-toggle": "toggle",
      checked: function() {
        return Spacebars.mustache(view.lookup("show_all"));
      }
    }), "\n	"), " \n"), "\n", HTML.DIV({
      "class": "table-responsive"
    }, "\n	", HTML.FORM({
      "class": "new-member"
    }, "\n		", HTML.TABLE({
      "class": "table .table-condensed"
    }, "\n			", HTML.THEAD("\n				", HTML.TR("\n					", HTML.TH(" Photo "), "\n					", HTML.TH(" Vorname "), "\n					", HTML.TH(" Name "), "\n					", HTML.TH(" Mobile "), "\n					", HTML.TH(" Gruppe "), "\n				"), "\n			"), "\n			", HTML.TBODY("\n				", Blaze.Each(function() {
      return Spacebars.call(view.lookup("members"));
    }, function() {
      return [ " ", Spacebars.include(view.lookupTemplate("memberlist_row")), " " ];
    }), " \n			"), "\n		"), "\n	"), "\n"), "\n", HTML.A({
      "class": "btn btn-default",
      href: "/vcard",
      role: "button"
    }, "Download vCard"), "\n\n" ];
  });
}));

Template.__checkName("memberlist_row");
Template["memberlist_row"] = new Template("Template.memberlist_row", (function() {
  var view = this;
  return HTML.TR({
    "class": function() {
      return Spacebars.mustache(view.lookup("gender"));
    },
    id: function() {
      return Spacebars.mustache(view.lookup("_id"));
    }
  }, "\n	", HTML.TD({
    "class": "crop"
  }, " ", HTML.IMG({
    src: function() {
      return Spacebars.mustache(view.lookup("thumb"));
    },
    height: "90"
  }), " "), "\n\n	", Blaze.If(function() {
    return Spacebars.call(view.lookup("doedit"));
  }, function() {
    return [ " \n	", HTML.TD(" \n	", HTML.INPUT({
      type: "text",
      "class": "form-control firstname",
      value: function() {
        return Spacebars.mustache(view.lookup("first"));
      }
    }), "\n	"), "\n	", HTML.TD(" \n	", HTML.INPUT({
      type: "text",
      "class": "form-control lastname",
      value: function() {
        return Spacebars.mustache(view.lookup("last"));
      }
    }), "\n	"), "\n	", HTML.TD(" \n	", HTML.INPUT({
      type: "text",
      "class": "form-control phone",
      value: function() {
        return Spacebars.mustache(view.lookup("tel"));
      }
    }), "\n	"), "\n	\n	\n	", HTML.TD({
      "class": "smalltext"
    }, " ", Blaze.View("lookup:group", function() {
      return Spacebars.mustache(view.lookup("group"));
    }), "\n	   ", Blaze.If(function() {
      return Spacebars.call(view.lookup("show_all"));
    }, function() {
      return [ " | \n	       ", HTML.INPUT({
        type: "text",
        "class": "form-control project",
        value: function() {
          return Spacebars.mustache(view.lookup("project"));
        }
      }), "\n	   " ];
    }), " \n	"), "\n	", HTML.TD(HTML.BUTTON({
      "class": "delete"
    }, " ", HTML.CharRef({
      html: "&times;",
      str: "×"
    }), " "), " ", HTML.BUTTON({
      "class": "save"
    }, HTML.I({
      "class": "fa fa-save"
    })), " "), "\n	" ];
  }, function() {
    return [ " \n	", HTML.TD(" ", Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), " "), "\n	", HTML.TD(" ", Blaze.View("lookup:last", function() {
      return Spacebars.mustache(view.lookup("last"));
    }), " "), "\n	", HTML.TD(" ", Blaze.View("lookup:tel", function() {
      return Spacebars.mustache(view.lookup("tel"));
    }), " "), "\n	", HTML.TD({
      "class": "smalltext"
    }, " ", HTML.UL({
      style: "list-style-type:none"
    }, Blaze.Each(function() {
      return Spacebars.call(view.lookup("groupNames"));
    }, function() {
      return [ "\n	", HTML.LI({
        style: "padding:2px"
      }, HTML.SPAN({
        "class": "badge"
      }, Blaze.View("lookup:title", function() {
        return Spacebars.mustache(view.lookup("title"));
      }))), "\n	" ];
    }), "\n	"), "\n	", Blaze.If(function() {
      return Spacebars.call(view.lookup("show_all"));
    }, function() {
      return [ " | ", Blaze.View("lookup:project", function() {
        return Spacebars.mustache(view.lookup("project"));
      }), " " ];
    })), "\n	", HTML.TD(HTML.BUTTON({
      "class": "setFemale"
    }, HTML.I({
      "class": "fa fa-female"
    })), " ", HTML.BUTTON({
      "class": "setMale"
    }, HTML.I({
      "class": "fa fa-male"
    })), " ", HTML.BUTTON({
      "class": "delete"
    }, " ", HTML.CharRef({
      html: "&times;",
      str: "×"
    }), " "), " ", HTML.BUTTON({
      "class": "edit"
    }, HTML.I({
      "class": "fa fa-edit"
    })), " "), "\n	" ];
  }), " \n");
}));

})();
