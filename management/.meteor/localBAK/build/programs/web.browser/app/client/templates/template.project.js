(function(){
Template.__checkName("project");
Template["project"] = new Template("Template.project", (function() {
  var view = this;
  return Spacebars.With(function() {
    return Spacebars.call(view.lookup("currentProject"));
  }, function() {
    return [ "\n", HTML.FORM({
      "class": "form-horizontal"
    }, "\n\n", HTML.DIV({
      "class": "panel"
    }, "\n  ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Id"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.INPUT({
      type: "text",
      "class": "form-control",
      id: "id",
      placeholder: "Id",
      value: function() {
        return Spacebars.mustache(view.lookup("id"));
      }
    }), "\n    "), "\n  "), "\n  \n  ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Name"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.INPUT({
      type: "text",
      "class": "form-control",
      id: "name",
      placeholder: "Name",
      value: function() {
        return Spacebars.mustache(view.lookup("name"));
      }
    }), "\n    "), "\n  "), "\n\n  ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Logo"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.INPUT({
      type: "text",
      "class": "form-control",
      id: "logo",
      placeholder: "Logo",
      value: function() {
        return Spacebars.mustache(view.lookup("logo"));
      }
    }), "\n    "), "\n  "), "\n\n  ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Badge"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.INPUT({
      type: "text",
      "class": "form-control",
      id: "badge",
      placeholder: "Badge",
      value: function() {
        return Spacebars.mustache(view.lookup("badge"));
      }
    }), "\n    "), "\n  "), "\n\n  ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Start"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.INPUT({
      type: "date",
      "class": "form-control",
      id: "begin",
      placeholder: "Start Datum",
      value: function() {
        return Spacebars.mustache(view.lookup("begin"));
      }
    }), "\n    "), "\n  "), "\n  \n ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Ende"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.INPUT({
      type: "date",
      "class": "form-control",
      id: "end",
      placeholder: "Ende",
      value: function() {
        return Spacebars.mustache(view.lookup("end"));
      }
    }), "\n    "), "\n  "), "\n\n"), "\n", HTML.H3("Abspann"), "\n", HTML.DIV({
      "class": "panel"
    }, "\n ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Vorlauf"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.TEXTAREA({
      type: "date",
      "class": "form-control",
      id: "abspannVorlauf",
      rows: "3",
      placeholder: "Abspann Vorlauf",
      value: function() {
        return Spacebars.mustache(view.lookup("abspannVorlauf"));
      }
    }), "\n    "), "\n  "), "\n  \n  ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Leitung"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.TEXTAREA({
      type: "date",
      "class": "form-control",
      id: "leitung",
      rows: "3",
      placeholder: "Leitung",
      value: function() {
        return Spacebars.mustache(view.lookup("leitung"));
      }
    }), "\n    "), "\n  "), "\n\n  ", HTML.DIV({
      "class": "form-group"
    }, "\n    ", HTML.LABEL({
      "for": "id",
      "class": "col-sm-2 control-label"
    }, "Danke"), "\n    ", HTML.DIV({
      "class": "col-sm-10"
    }, "\n      ", HTML.TEXTAREA({
      type: "date",
      "class": "form-control",
      id: "danke",
      rows: "3",
      placeholder: "Danke",
      value: function() {
        return Spacebars.mustache(view.lookup("danke"));
      }
    }), "\n    "), "\n  "), "\n\n\n"), "\n  ", HTML.INPUT({
      type: "submit",
      "class": "submit btn",
      value: "Sichern"
    }), "\n\n"), "\n" ];
  });
}));

})();
