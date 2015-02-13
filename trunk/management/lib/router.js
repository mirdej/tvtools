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
Router.route('/klappentext', 			function () {this.render( 'klappentext');});
Router.route('/spick', 			function () {this.render( 'spick');});


Router.route('/ablauf', 			function () {this.render( 'ablauf');});


Router.route('/login', 			function () {this.render( 'login', {to: 'loginYield'});  });


Router.route('/projekt',       function () {this.render( 'project');});

Router.route('/import');

Router.route('/notizenblatt', {
  data: function() {
    templateData = { groups: Groups.find({project:Session.get("Project").id}, {sort: {camera:1,title: 1}}) };
    return templateData;
  }
});

Router.route('/namenliste', {
  data: function() {
    templateData = { members: Members.find({project:Session.get("Project").id}, {sort: {first: 1}})};
    return templateData;
  }
});




Router.map(function() {
  this.route('vcard', {
    where: 'server',
    path: '/vcard',
    action: function() {
    
    var members = Members.find({project:ProjectID}, {sort: {first: 1}}).fetch();
    var s = "";
    var m,g;
    
    for (var i = 0; i < members.length; i++) {
    m = members[i];
      if (typeof m.tel != 'undefined') {
        if (m.tel.length){
          
          s += "BEGIN:VCARD\rVERSION:3.0\r";
          s += "N:"+m.last+";"+m.first+";;;\r";
          s += "FN:"+m.first+" "+m.last+"\r";
          s += "ORG:"+ProjectID;
          if (typeof m.group != 'undefined') {
                  g = Groups.find(m.group[0]).fetch();
                s += " Team: "+g[0].title;
                s += " | "+g[0].camera;
          }
          s += "\r";
          s += "TEL;type=CELL;type=VOICE;type=pref:"+m.tel+"\r"
          s += "PHOTO;ENCODING=b;TYPE=JPEG:"+m.thumb.replace('data:image/jpeg;base64,','')+"\r"
          s += "END:VCARD\r";
        }

        }
      }
            var headers = {'Content-type': 'text/vcard'};
//      var headers = {'Content-type': 'text/plain'};
      this.response.writeHead(200, headers);
            this.response.end(s);

  }})
});
