(function(){
Template.__checkName("home");
Template["home"] = new Template("Template.home", (function() {
  var view = this;
  return HTML.Raw('<hr>\n<h2>\n	Sendung\n</h2>\n<ul class="home">\n	<li> <a href="/ablauf"> <i class="fa fa-list-ul fa-5x"></i><br>Ablauf </a> </li>\n	<li> <a href="/abspann"> <i class="fa fa-bars fa-5x"></i><br>Abspann </a> </li>\n	<li> <a href="/spick"> <i class="fa fa-list-alt fa-5x"></i><br>Moderatorenspick </a> </li>\n	<li> <a href="/klappentext"> <i class="fa fa-columns fa-5x"></i><br>Klappentext </a> </li>\n</ul>\n<hr>\n<h2>\n	Mitarbeiter\n</h2>\n<ul class="home">\n	<li> <a href="/mitarbeiter/neu"> <i class="fa fa-male fa-5x"></i><br>Neu </a> </li>\n	<li> <a href="/mitarbeiter"> <i class="fa fa-group fa-5x"></i><br>Liste </a> </li>\n	<li> <a href="/gruppen"> <i class="fa fa-sitemap fa-5x"></i><br>Gruppen </a> </li>\n	<li> <a href="/mitarbeiter/lernen"> <i class="fa fa-graduation-cap  fa-5x"></i><br>Namenlernen </a> </li>\n	<li> <a href="/mitarbeiter/ausweis"> <i class="fa fa-credit-card  fa-5x"></i><br>Ausweise </a> </li>\n	<li> <a href="/lueste"> <i class="fa fa-tasks fa-5x"></i><br>Liste der Lüste </a> </li>\n	<li> <a href="/jobverteilung"> <i class="fa fa-trophy fa-5x"></i><br>Jobverteilung </a> </li>\n</ul>\n<hr>\n<h2>Allgemein</h2>\n<ul class="home">\n	<li> <a href="#"> <i class="fa fa-cog fa-5x"></i><br>Einstellungen </a> </li>\n	<li> <a href="#"> <i class="fa fa-rss fa-5x"></i><br>Sendungen </a> </li>\n	<li> <a href="#"> <i class="fa fa-files-o fa-5x"></i><br>Alle Projekte </a> </li>\n</ul>');
}));

})();
