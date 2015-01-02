Router.configure({
  layoutTemplate: 'ApplicationLayout'
});

Router.route('/', function () {
   this.render('home');
});

Router.route('/mitarbeiter', function () {
   this.render('memberlist');
});
