<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Mes Boutons</title>
    <style>
body
{
	font-family:helvetica;
	background-color: black;
	color: white;
}

button {
  /*display: inline-block;*/
  /*background-color: none;*/
  border: none;
  color: white;
  text-align: center;
  font-size: 12px;
	width: 64px;
	height: 32px;
	background: url('/static/blue.png');
    background-repeat: no-repeat;
}

button:hover {
	color: black;
}

.fullscreen {
	/*display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100%;
	width: 100%;//*/
}
	</style>
    
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script> 
        
   	<script>
    
    colors = [ "black", "yellow", "blue", "pink" ];
    
    function getRandomInt(max) {
  		return Math.floor(Math.random() * Math.floor(max));
	}

    
    document.addEventListener("DOMContentLoaded", function(event) {

        j = 0;
        pJ = 0;
        	
        tr = document.createElement('tr');
        for(i = 1 ; i <= 50 ; i++)
        {
        	td = document.createElement('td');
        	b = document.createElement('button');
			b.id = ""+i;
			b.onclick = function() { 
            	console.log("I was clicked : "+this.id);
            	$.post('/button/'+this.id);
        	};
        	b.style.background = "url('/static/"+colors[getRandomInt(4)]+".png') no-repeat";
			span = document.createElement('span');
			span.innerHTML = i;
			b.appendChild(span);
			td.appendChild(b);
			tr.appendChild(td);
			
			j = Math.floor(i / 10);
			
        	if(j != pJ)
        	{
        		document.getElementById('main').appendChild(tr);
        		tr = document.createElement('tr');
        	}
        	pJ = j;
        }
        
    });
	</script>
	
</head>
<body>
	<table id="main" class="fullscreen">
	</table>
</body>
</html>