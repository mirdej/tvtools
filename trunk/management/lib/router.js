Router.configure({ layoutTemplate: 'ApplicationLayout'});

Router.route('/', 					function () {this.render( 'home' );});
Router.route('/mitarbeiter',		function () {this.render( 'memberlist' );});
Router.route('/mitarbeiter/neu', 	function () {this.render( 'member_new');});
Router.route('/mitarbeiter/crop', 	function () {this.render( 'member_crop');});
Router.route('/mitarbeiter/lernen', function () {this.render( 'learn');});
Router.route('/mitarbeiter/ausweis', function () {this.render( 'badge');});
Router.route('/gruppen', 			function () {this.render( 'groups');});
Router.route('/lueste', 			function () {this.render( 'lueste');});
Router.route('/jobverteilung', 		function () {this.render( 'posten');});

Router.route('/abspann', 			function () {this.render( 'abspann');});
Router.route('/spick', 			function () {this.render( 'spick');});


Router.route('/ablauf', 			function () {this.render( 'ablauf');});


Router.route('/login', 			function () {this.render( 'login', {to: 'loginYield'});  });



Router.route('/import');
Router.route('/test')