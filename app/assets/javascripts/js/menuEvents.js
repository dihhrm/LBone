(function(){
	"use strict";

	var options = document.getElementsByClassName( "firstLevelOption" );

	// "Os últimos serão os primeiros!"
	for(var i = options.length-1; i >= 0; i--){

		options[i].onclick = function( ){

			for(var j = 0; j < options.length; j++)
				options[j].classList.remove( "activeOption" );

			this.classList.add( "activeOption" );
		}

	}


	var options = document.getElementsByClassName( "firstLevelOption" );
	options[ 1 ].classList.add( "activeOption" );

	document.querySelector( "#searchLink" ).onclick = function(){
		var search = document.querySelector( "#userQuery" );
		search.focus();
		search.placeholder = "Digite o nome do item";
	}
})();