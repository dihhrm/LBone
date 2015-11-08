// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require js/autocomplete-rails-uncompressed
//= require js/menuEvents
//= require_tree .




//Script dos contadores na index
window.onload = function(){

    var elements = document.getElementsByTagName( "em" );
    var data = [];
    for(var i = 0; i < elements.length; i++)
      data[i] = parseInt(elements[i].getAttribute( "data-value"));

    var value = 1;
    var count = [];
    var values = [0,0,0];

    for(var i=0; i < elements.length; i++)
      makeCount( elements[i], data[i], i);        

      
    

  function makeCount( element, data, index){

    var time = 0.00001;
    count[index] = setInterval(function(){

        element.innerHTML = values[index]++;
        
        if( values[index] == data+1)
          
          clearInterval( count[index]);
        
      }, time );

  }   

  document.getElementById("closeAccountMenu").onclick = function( event ){
    document.getElementById("userLoged").classList.remove( "activeAccountMenu" );
    

  }


  document.getElementById("showAccountMenu").onclick = function(){
    
    document.getElementById("userLoged").classList.add( "activeAccountMenu" );
    
  }

  document.getElementById("userName").onclick = function(){
    
    document.getElementById("userLoged").classList.add( "activeAccountMenu" );
    
  }
    
}

//Submit no formulario de saida e entrada
$("#link_submit").click(function(){
  $("#new_output").submit() && $("#new_input").submit();
  return false;
});