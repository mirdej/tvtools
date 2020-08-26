(function(){
Template.__checkName("navbar");
Template["navbar"] = new Template("Template.navbar", (function() {
  var view = this;
  return HTML.NAV({
    "class": "navbar navbar-default navbar-fixed-top",
    role: "navigation"
  }, " \n", HTML.DIV({
    "class": "container"
  }, "\n	", HTML.DIV({
    "class": "navbar-header"
  }, "\n		", HTML.Raw('<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>'), " ", HTML.Raw('<a class="navbar-brand" href="/">[ a n y m a | tv - management system v3.0 ]</a>'), " ", Blaze.View("lookup:current_project.name", function() {
    return Spacebars.mustache(Spacebars.dot(view.lookup("current_project"), "name"));
  }), " \n	"), "\n	", HTML.DIV({
    id: "navbar",
    "class": "navbar-collapse collapse"
  }, "\n		", HTML.UL({
    "class": "nav navbar-nav"
  }, "\n			", HTML.Raw('<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Projekt <span class="caret"></span></a> \n			<ul class="dropdown-menu" role="menu">\n				<li><a href="#"><i class="fa fa-cog"></i> Einstellungen</a></li>\n				<li><a href="#"><i class="fa fa-rss"></i> Sendungen</a></li>\n				<li class="divider"></li>\n				<li><a href="#"><i class="fa fa-files-o"></i> Alle Projekte</a></li>\n			</ul>\n			</li>'), "\n			", HTML.Raw('<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sendung <span class="caret"></span></a> \n			<ul class="dropdown-menu" role="menu">\n				<li><a href="/ablauf"><i class="fa fa-list-ul"></i> Ablauf</a></li>\n				<li><a href="/abspann"><i class="fa fa-bars"></i> Abspann</a></li>\n				<li><a href="/spick"><i class="fa fa-list-alt"></i> Moderatorenspick</a></li>\n				<li><a href="/klappentext"><i class="fa fa-columns"></i> Klappentext</a></li>\n			</ul>\n			</li>'), "\n			", HTML.Raw('<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Mitarbeiter <span class="caret"></span></a> \n			<ul class="dropdown-menu" role="menu">\n				<li> <a href="/mitarbeiter/neu"> <i class="fa fa-male"></i> Neu </a> </li>\n				<li> <a href="/mitarbeiter"> <i class="fa fa-group"></i> Liste </a> </li>\n				<li> <a href="/gruppen"> <i class="fa fa-sitemap"></i> Gruppen </a> </li>\n				<li> <a href="/mitarbeiter/lernen"> <i class="fa fa-graduation-cap "></i> Namenlernen </a> </li>\n				<li> <a href="/mitarbeiter/ausweis"> <i class="fa fa-credit-card "></i> Ausweise </a> </li>\n				<li> <a href="/lueste"> <i class="fa fa-tasks"></i> Liste der Lüste </a> </li>\n				<li> <a href="/jobverteilung"> <i class="fa fa-trophy"></i> Jobverteilung </a> </li>\n			</ul>\n			</li>'), "\n			", HTML.LI({
    "class": "dropdown"
  }, HTML.Raw('<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Login <span class="caret"></span></a>'), " \n			", HTML.UL({
    "class": "dropdown-menu",
    role: "menu"
  }, "\n				", HTML.LI(" ", Spacebars.include(view.lookupTemplate("loginButtons")), " "), "\n			"), "\n			"), "\n		"), "\n	"), "\n\n", HTML.Raw("<!--/.nav-collapse -->"), "\n"), "\n");
}));

})();
