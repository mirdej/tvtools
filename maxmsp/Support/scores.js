var d = new Dict("punktestand");

function bang() {
    var players = new Array();
    players = d.get('player');
    var s = ['set','lines'];
    
    players.forEach(function(p,i){
    	if(p.get("online") == 1){
    		
    		var m = p.get("name");
			m = m + ' : ';
    		var score = p.get("score");
    		m = m + score + ' Punkt';;
    		if (score != 1) m = m + 'e';
    		s.push(m) 		
    	};
    })
    outlet(0,s)

}
