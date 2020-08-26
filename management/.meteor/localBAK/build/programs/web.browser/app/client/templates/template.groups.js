(function(){
Template.__checkName("groups");
Template["groups"] = new Template("Template.groups", (function() {
  var view = this;
  return HTML.DIV({
    "class": "row"
  }, "\n	", HTML.DIV({
    "class": "col-xs-8"
  }, "\n		", HTML.Raw("<h2>\n			Teams \n		</h2>"), "\n		", HTML.UL({
    "class": "grouplist"
  }, "\n		", Blaze.Each(function() {
    return Spacebars.call(view.lookup("thegroups"));
  }, function() {
    return Spacebars.include(view.lookupTemplate("group"));
  }), " \n		"), "\n		", HTML.Raw('<div class="newGroup">\n			<form class="newGroup">\n				<input id="f" type="text" placeholder="Thema"> \n				<input type="submit" value="Neu"> \n			</form>\n		</div>'), "\n	"), "\n	", HTML.DIV({
    "class": "col-xs-4"
  }, "\n	", HTML.Raw("<h2>&nbsp;</h2>"), "\n		", Spacebars.include(view.lookupTemplate("memberchooser")), " ", Spacebars.include(view.lookupTemplate("cams")), " \n	"), "\n");
}));

Template.__checkName("group");
Template["group"] = new Template("Template.group", (function() {
  var view = this;
  return HTML.LI({
    "class": "group cameradrop",
    id: function() {
      return Spacebars.mustache(view.lookup("_id"));
    }
  }, HTML.Raw('\n	<button class="close delete"> &times; </button>\n	'), HTML.SPAN({
    "class": function() {
      return [ "title cam_", Spacebars.mustache(view.lookup("camera")) ];
    },
    style: function() {
      return Spacebars.mustache(view.lookup("styling"));
    }
  }, "\n			", Blaze.If(function() {
    return Spacebars.call(view.lookup("doedit"));
  }, function() {
    return [ "\n			", HTML.FORM({
      "class": "title"
    }, HTML.INPUT({
      type: "text",
      name: "title",
      "class": "input-sm",
      value: function() {
        return Spacebars.mustache(view.lookup("title"));
      }
    }), HTML.INPUT({
      type: "submit",
      "class": "hidden"
    })), "\n			" ];
  }, function() {
    return [ "\n			", HTML.H4({
      "class": "title"
    }, "\n				", Blaze.View("lookup:title", function() {
      return Spacebars.mustache(view.lookup("title"));
    }), HTML.BR(), "\n				", HTML.SMALL(Blaze.View("lookup:camera", function() {
      return Spacebars.mustache(view.lookup("camera"));
    })), "\n			"), "\n			" ];
  }), "\n	"), "\n	", HTML.SPAN({
    "class": "info"
  }, "\n	", HTML.UL({
    "class": "list-inline members",
    id: function() {
      return [ "group_", Spacebars.mustache(view.lookup("_id")) ];
    },
    sytle: "margin-left:30px;"
  }, "\n		", Blaze.Each(function() {
    return Spacebars.call(view.lookup("members"));
  }, function() {
    return [ " \n		", HTML.LI({
      id: function() {
        return [ "member_", Spacebars.mustache(view.lookup("_id")) ];
      },
      "class": function() {
        return [ "mem ", Spacebars.mustache(view.lookup("gender")) ];
      }
    }, HTML.IMG({
      src: function() {
        return Spacebars.mustache(view.lookup("thumb"));
      },
      height: "36",
      style: "float:left"
    }), HTML.BUTTON({
      "class": "close removeMember"
    }, " ", HTML.CharRef({
      html: "&times;",
      str: "×"
    }), " "), HTML.BR(), HTML.LABEL({
      style: "float:left;"
    }, " ", Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), HTML.BR(), HTML.SPAN({
      style: "font-weight:normal;font-size:9px;"
    }, Blaze.View("lookup:tel", function() {
      return Spacebars.mustache(view.lookup("tel"));
    }), HTML.CharRef({
      html: "&nbsp;",
      str: " "
    }))), "\n"), "\n		" ];
  }), " \n	"), "\n	"), "\n	", HTML.SPAN({
    "class": "info description"
  }, "\n		", Blaze.If(function() {
    return Spacebars.call(view.lookup("bodyedit"));
  }, function() {
    return [ "\n			", HTML.FORM({
      "class": "description"
    }, HTML.TEXTAREA({
      type: "text",
      name: "description",
      "class": "input-sm",
      value: function() {
        return Spacebars.mustache(view.lookup("description"));
      }
    }), HTML.INPUT({
      type: "submit",
      value: "save"
    })), "\n		" ];
  }, function() {
    return [ "\n		", HTML.SMALL(Blaze.View("lookup:description", function() {
      return Spacebars.mustache(view.lookup("description"));
    })), "\n		" ];
  }), "\n	"), "\n\n\n");
}));

Template.__checkName("memberchooser");
Template["memberchooser"] = new Template("Template.memberchooser", (function() {
  var view = this;
  return HTML.DIV({
    "class": "memberchooser panel panel-default"
  }, HTML.Raw('\n\n<!-- Default panel contents -->\n	<div class="panel-heading">\n		Mitarbeiter <span class="caret"></span> \n	</div>\n\n<!-- List group -->\n	'), HTML.UL({
    id: "memberlist",
    "class": "list-group members",
    style: "display:none;"
  }, "\n		", Blaze.Each(function() {
    return Spacebars.call(view.lookup("members"));
  }, function() {
    return [ " \n		", HTML.LI({
      id: function() {
        return [ "member_", Spacebars.mustache(view.lookup("_id")) ];
      },
      "class": function() {
        return [ "list-group-item mem ", Spacebars.mustache(view.lookup("gender")) ];
      },
      style: "padding:2px 10px;margin:0px;"
    }, " ", HTML.IMG({
      src: function() {
        return Spacebars.mustache(view.lookup("thumb"));
      },
      height: "20"
    }), HTML.LABEL(" ", Blaze.View("lookup:first", function() {
      return Spacebars.mustache(view.lookup("first"));
    }), " ", Blaze.View("lookup:last", function() {
      return Spacebars.mustache(view.lookup("last"));
    }), " ")), "\n		" ];
  }), " \n	"), "\n	", Blaze.View("lookup:done", function() {
    return Spacebars.mustache(view.lookup("done"));
  }), "\n");
}));

Template.__checkName("cams");
Template["cams"] = new Template("Template.cams", (function() {
  var view = this;
  return HTML.DIV({
    "class": "camerachooser panel panel-default"
  }, HTML.Raw('\n	<div class="panel-heading">\n		Kameras <span class="caret"></span> \n	</div>\n	'), HTML.UL({
    id: "cameralist",
    "class": "list-group cameras",
    style: "display:none;"
  }, "\n		", Blaze.Each(function() {
    return Spacebars.call(view.lookup("cams"));
  }, function() {
    return [ " \n		", HTML.LI({
      id: function() {
        return [ "camera_", Spacebars.mustache(view.lookup("name")) ];
      },
      "class": "list-group-item cam",
      style: function() {
        return [ "color:", Spacebars.mustache(view.lookup("textcolor")), ";background-color:", Spacebars.mustache(view.lookup("color")) ];
      }
    }, " ", Blaze.View("lookup:name", function() {
      return Spacebars.mustache(view.lookup("name"));
    }), " "), "\n		" ];
  }), " \n	"), "\n");
}));

})();
