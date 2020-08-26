Router.configure({ layoutTemplate: 'ApplicationLayout'});

Router.route('/', 					function () {this.render( 'home' );});
Router.route('/mitarbeiter',		function () {this.render( 'memberlist' );},{name:'mitarbeiter'});
//Router.route('/vornamen',		function () {this.render( 'vornamen' );},{name:'vornamen'});
Router.route('/namenliste',		function () {this.render( 'vornamen' );},{name:'vornamen'});
Router.route('/mitarbeiter/neu', 	function () {this.render( 'member_new');},{name:'/mitarbeiter/neu'});
Router.route('/mitarbeiter/crop', 	function () {this.render( 'member_crop');},{name:'/mitarbeiter/crop'});
Router.route('/mitarbeiter/lernen', function () {this.render( 'learn');},{name:'/mitarbeiter/lernen'});
Router.route('/mitarbeiter/ausweis', function () {this.render( 'badge');},{name:'/mitarbeiter/ausweis'});
Router.route('/attestations', 		function () {this.render( 'attestations');},{name:'attestations'});
Router.route('/gruppen', 			function () {this.render( 'groups');},{name:'gruppen'});
Router.route('/lueste', 			function () {this.render( 'lueste');},{name:'lueste'});
Router.route('/jobverteilung', 		function () {this.render( 'posten');},{name:'jobverteilung'});

Router.route('/abspann', 			function () {this.render( 'abspann');},{name:'abspann'});
Router.route('/klappentext', 			function () {this.render( 'klappentext');},{name:'klappentext'});
Router.route('/spick', 			function () {this.render( 'spick');},{name:'spick'});
Router.route('/import', 		function () {this.render( 'import');},{name:'import'});


Router.route('/ablauf', 			function () {this.render( 'ablauf');},{name:'ablauf'});


Router.route('/login', 			function () {this.render( 'login', {to: 'loginYield'});  });



/*
Router.route('/notizenblatt', {
  data: function() {
    templateData = { groups: Groups.find({project:Session.get("Project").id}, {sort: {camera:1,title: 1}}) };
    return templateData;
  }
},{name:'notizenblatt'});
Router.route('/projekt',       function () {this.render( 'project');},{name:'projekt'});
Router.route('/namenliste', {
  data: function() {
    templateData = { members: Members.find({project:Session.get("Project").id}, {sort: {first: 1}})};
    return templateData;
  }
},{name:'namenliste'});


*/



Router.map(function() {
  this.route('vcard', {
    where: 'server',
    path: '/vcard',
    action: function() {
    
   // var members = Members.find({project:ProjectID}, {sort: {first: 1}}).fetch();
    var members = Members.find({project:ProjectID}).fetch();
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


Router.map(function() {
  this.route('export', {
    where: 'server',
    path: '/export',
    action: function() {
    
   // var members = Members.find({project:ProjectID}, {sort: {first: 1}}).fetch();
    var members = Members.find({project:ProjectID}).fetch();
    var s = "";
    var m,g;
    
    for (var i = 0; i < members.length; i++) {
		m = members[i];
    	s += m.last+","+m.first;
		if (typeof m.tel != 'undefined') {
        	if (m.tel.length){
        		s += ","+m.tel
        	}
	 	}
	 	s +="\r";
	 }
	var headers = {'Content-type': 'text/utf8; charset=UTF-8'};
    this.response.writeHead(200, headers);
    this.response.end(s);

  }})
});