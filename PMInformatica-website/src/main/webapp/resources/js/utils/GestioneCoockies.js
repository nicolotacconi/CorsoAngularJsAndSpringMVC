var dropCookie = true;                      // false disables the Cookie, allowing you to style the banner
var cookieDuration = 30;                    // Number of days before the cookie expires, and the banner reappears
var cookieName = 'ASSENSO_COOCKIE';        // Name of our cookie
var cookieValue = 'true';                     // Value of cookie
var durataDissolvenza = "1s";
var timerRimozioneSpazioBanner = "1300";
 
 
function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000)); 
        var expires = "; expires="+date.toGMTString(); 
    }
    else var expires = "";
    if(window.dropCookie) { 
        document.cookie = name+"="+value+expires+"; path=/"; 
    }
}
 
function checkCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}
 
window.onload = function(){
    if(checkCookie(window.cookieName) != window.cookieValue){
		document.getElementById('bannerCoockie').style.display = "visible";
    }
	else{
		document.getElementById('bannerCoockie').style.display = "none";
	}
}

function removeMe(){

	var el = document.getElementById("bannerCoockie");

	// dissolvenza
	dissolvenzaBanner(el);
	
	// rimozione spazio banner
	setTimeout(function(){ 
				el.style.display = "none";
			}, timerRimozioneSpazioBanner);
	
	createCookie(window.cookieName,window.cookieValue, window.cookieDuration); // Create the cookie
	
}

function dissolvenzaBanner(element) {
	
    element.style.opacity = 0;
    element.style.transition = "opacity " + window.durataDissolvenza;
    element.style.WebkitTransition = "opacity " + window.durataDissolvenza;

}

