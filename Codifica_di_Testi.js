/*
window.onload = function(){ 
document.getElementsByClassName('pag17_line1')[0].onmouseover = function(){
  document.getElementsByClassName('ciao')[0].style = "background: red"
}
document.getElementsByClassName('pag17_line1')[0].onmouseout = function(){
  document.getElementsByClassName('ciao')[0].style = "background: transparent"
}

};
*/

function show() {
  var img = document.getElementById("img17").firstChild;
  var img2 = document.getElementById("img17r").firstChild;
  if (img2.style.display === "none") {
    img2.style.display = "block";
    img.style.display = "none"
  } else {
    img2.style.display = "none";
    img.style.display= "block";
  }
}

function show2() {
  var img = document.getElementById("img18").firstChild;
  var img2 = document.getElementById("img18r").firstChild;
  if (img2.style.display === "none") {
    img2.style.display = "block";
    img.style.display = "none"
  } else {
    img2.style.display = "none";
    img.style.display= "block";
  }
}

function lineon(y) {
  var x = document.getElementById(y);
  x.style.padding="0";
  x.style.borderWidth="2px";
  x.style.borderStyle="solid";
  x.style.borderRadius="50px";
  x.style.borderColor="#075ce6";
  x.style.backgroundColor="#aae8fc";
}

function lineoff(y) {
  var x = document.getElementById(y);
  x.style.borderStyle="none";
  x.style.backgroundColor="transparent";
}