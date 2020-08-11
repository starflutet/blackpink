<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
	function checkLoginStatus() {
		var frm = document.querySelector('#frm');
		var loginBtn = document.querySelector('#loginBtn');
		var nameTxt = document.querySelector('#name');
		var s_pk = document.querySelector('#s_pk');
		var nm = document.querySelector('#nm');
		if (gauth.isSignedIn.get()) {
			console.log('logined');
			loginBtn.value = 'Logout';
			var profile = gauth.currentUser.get().getBasicProfile();
			nameTxt.innerHTML = '환영합니다\!\ <strong>' + profile.getName()
					+ profile.getId() + '</strong> ';
			s_pk.value = profile.getId()
			nm.value = profile.getName()
			frm.submit();
		} else {
			console.log('logouted');
			loginBtn.value = 'Login';
			nameTxt.innerHTML = '';
		}
	}
	function init() {
		console.log('init');
		gapi.load(
				'auth2',
				function() {
					console.log('auth2');
					window.gauth = gapi.auth2
							.init({
								client_id : '817728659425-jftgas4717rnv8ctlhlau5lp3cs2o2lh.apps.googleusercontent.com'
							})
					gauth.then(function() {
						console.log('googleAuth success');
						checkLoginStatus();
					}, function() {
						console.log('googleAuth fail');
					});
				});
	}
</script>
</head>
<body>
	<span id="name"></span> 
	<form id = "frm" action="/blackpink/user/login" method="post">
	<input type = "hidden" id = "s_pk" name = "s_pk">
	<input type = "hidden" id = "nm" name = "nm">
	<input type="button" id="loginBtn" value="checking..."
		onclick="
		if(this.value == 'Login'){	
			gauth.signIn({
				scope:'https://www.googleapis.com/auth/calendar'
			}).then(function(){
				console.log('gauth.signIn()');
				checkLoginStatus();
			});
		} else{
			gauth.signOut().then(function(){
				console.log('gauth.signOut()');
				checkLoginStatus();
			});
		}
	">
	</form>
	
	<script src="https://apis.google.com/js/platform.js?onload=init" asyncdefer></script>
</body>
</html>