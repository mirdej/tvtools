(function(){
Template.__checkName("import");
Template["import"] = new Template("Template.import", (function() {
  var view = this;
  return HTML.DIV({
    "class": "container-fluid"
  }, "\n ", HTML.DIV({
    "class": "panel"
  }, "\n ", HTML.FORM({
    "class": "import"
  }, "\n ", HTML.Raw('<input type="submit" class="btn btn-primary" value="import">'), "\n ", HTML.TEXTAREA({
    id: "f",
    "class": "form-control",
    rows: "24",
    value: "Paste here.."
  }), "\n "), "\n "), "\n");
}));

})();
