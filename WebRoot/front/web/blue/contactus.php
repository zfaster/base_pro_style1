<?php
$name=$_POST["name"];
$email=$_POST["email"];
$phone=$_POST["phone"];
$message=$_POST["message"];
$submitcontact=$_POST["submitcontact"];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Your Website Title</title>
	<meta name="description" content="Website Description" />
	<meta name="keywords" content="Website Kwywords" />
	<style type="text/css" media="all">@import "style/style.css";</style>
	<!--[if lt IE 7]>
	<style type="text/css">@import "style/ie.css";</style>
	<script src="script/DD_belatedPNG.js" type="text/javascript"></script>
	<script type="text/javascript">
		DD_belatedPNG.fix('#logo span, #loginarea, #panellogin, .textboxlogin, img');
	</script>
	<![endif]-->
	<!--[if IE 7]><style type="text/css">@import "style/ie7.css";</style><![endif]-->
	<script src="script/jquery.js" type="text/javascript"></script>
	<script src="script/ui_core.js" type="text/javascript"></script>
	<script src="script/ui_tabs.js" type="text/javascript"></script>
	<script src="script/lightbox.js" type="text/javascript"></script>
	<script src="script/twitter.js" type="text/javascript"></script>
	<script src="script/gettwitter.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function() {
		$("#butslide").click(function(){
				$("#panellogin").slideToggle("fast");
				$(this).toggleClass("active"); return false;
		}); 
		$('#tabsnav').tabs({ fx: { opacity: 'toggle' } });
		$('a.popup').lightBox({fixedNavigation:true});
	});
	</script>
</head>
<body>
<p><a class="skiplink" href="#maincontent">Skip over navigation</a></p>
<div id="container">
	<div id="wrapper">
		<div id="header">
			<div id="headertop">
				<a href="#" class="replace" id="logo"><span></span>Rushhour - Your Company Slogan</a>
				<div id="loginarea">
					<p class="notlogin">You are not log in</p>
					<p class="loginbut"><a href="#" class="butlogin" id="butslide">Login</a> <span>or</span> <a href="#" class="butlogin">Signup</a></p>
					<div id="panellogin">
						<form method="post" action="#" id="frmlogin">
							<div>
								<label for="lgnusername">Username:</label> <input type="text" name="username" class="textboxlogin" id="lgnusername" /><br />
								<label for="lgnpassword">Password:</label> <input type="text" name="password" class="textboxlogin" id="lgnpassword" /><br />
								<label></label> <input type="submit" name="submitlogin" class="submitlogin" value="Login" /> <a href="#" class="linkforgot">Forgot Password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="placemainmenu">
				<ul id="mainmenu">
					<li><a href="index.html">Home</a></li>
					<li><a href="aboutus.html">About Us</a></li>
					<li><a href="newslist.html">News</a></li>
					<li><a href="#">Our Services</a>
						<ul>
							<li><a href="newsdetail.html">News Detail</a></li>
							<li><a href="services.html">Some of our services</a></li>
						</ul>
					</li>
					<li><a href="gallery.html">Gallery</a></li>
					<li class="active"><a href="contactus.html">Contact Us</a></li>
					<li><a href="#">Color</a>
						<ul>
							<li><a href="../blue/index.html">Blue Sea Color</a></li>
							<li><a href="../green/index.html">Green Grass Color</a></li>
						</ul>
					</li>
				</ul>
				<form method="post" action="#" id="frmsearch">
					<div>
						<input type="text" name="search" class="textboxsearch" value="Search" onblur="if(this.value.length == 0) this.value='Search';" onclick="if(this.value == 'Search') this.value='';"  /> <input type="submit" name="submitsearch" class="submitsearch" value="Search" />
					</div>
				</form>
				<div class="clear"></div>
			</div>
		</div>
		<div id="content">
			<ul id="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Services</a></li>
				<li class="last">Web Development</li>
			</ul>
			<div id="maincontent">
				<div class="boxbig">
					<h1 class="titlebig">Contact Us</h1>
					<div class="boxbigcontent">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat, mi eu posuere facilisis, dolor sapien auctor orci, vel posuere velit nibh ac tortor. Suspendisse velit erat, sodales id iaculis non, dapibus ut lacus. Nulla facilisi. Ut dui sapien, vulputate id tincidunt nec, semper quis arcu. Nunc suscipit pellentesque tincidunt. Vestibulum sed mauris in nisi suscipit ullamcorper sit amet vel dui.</p>
						<!-- error message
						<div class="errordiv">
							Please type your email address!!
						</div>
						-->
						<!-- correct message
						<div class="correctdiv">
							Thanks, we will reply your message immediately.
						</div>
						-->
						<?php
						if ($submitcontact) {
							$error=0;
							if ($name=="") {
								echo "<div class=\"errordiv\">Please type your name.</div>";
								$error=1;
							}
							if ($email=="") {
								echo "<div class=\"errordiv\">Please type your email address.</div>";
								$error=1;
							} else if (!preg_match("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/",$email)) {
								echo "<div class=\"errordiv\">Please type valid email address.</div>";
								$error=1;
							}
							if ($message=="") {
								echo "<div class=\"errordiv\">Type your message.</div>";
								$error=1;
							} 
							if ($error==0) {
								$myemail="ronggobramantyo@gmail.com"; // Change it with your email address
								$to=$myemail;
								$subject="[Contact Us] $name";
								$header="from: $name <$email>\n";
								$header.="MIME-Version: 1.0";
								$message2="$name $phone \r\n\r\n";
								$message2.="$message \r\n\r\n";
								$sentmail = mail($to,$subject,$message2,$header);
								if ($sentmail) {
									echo "<div class=\"correctdiv\">Thank you for your message, we will reply your message as soon as possible</div>";
									$name="";
									$email="";
									$phone="";
									$message2="";
								}
							}
						}
						?>
						<form method="post" action="contactus.php" id="frmcontact">
						<div>
							<label for="txtname">Your Name:</label> <input type="text" name="name" class="textboxcontact" id="txtname" value="<?=$name?>" /> <span>*</span><br />
							<label for="txtemail">Email Address:</label> <input type="text" name="email" class="textboxcontact" id="txtemail" value="<?=$email?>" /> <span>*</span><br />
							<label for="txtphone">Phone:</label> <input type="text" name="phone" class="textboxcontact" id="txtphone" value="<?=$phone?>" /><br />
							<label for="txtmessage">Message:</label> <textarea cols="50" rows="10" name="message" id="txtmessage" class="textareacontact"><?=$message2?></textarea><br />
							<label></label><input type="submit" name="submitcontact" value="Send Message" class="submitcontact" />
						</div>
						</form>
					</div>
					<div class="boxbigcontentbottom"></div>
				</div>
			</div>
			<div id="nav">
				<ul id="tabsnav">
					<li><a href="#panel1">Newsletter</a></li>
					<li><a href="#panel2">Portfolio</a></li>
					<li class="last"><a href="#panel3">News</a></li>
				</ul>
				<div class="tabscontent" id="panel1">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec leo et nunc fermentum viverra nec at sem:</p>
					<form method="post" action="#" id="frmnewsletter">
						<div>
							<label for="nltname">Your Name:</label> <input type="text" name="name" class="textboxnewsletter" id="nltname" /><br />
							<label for="nltemail">Email Address:</label> <input type="text" name="email" class="textboxnewsletter" id="nltemail" /><br />
							<input type="submit" name="submitsubscribe" class="submitsubscribe" value="Subscribe" />
							<div class="clear"></div>
						</div>
					</form>
				</div>
				<div class="tabscontent" id="panel2">
					<a href="images/portfolio_1.jpg" id="linklatest" class="popup" title="King Resto"><img src="images/photo_1.jpg" alt="King Resto" /></a>
					<ul id="tabsproject">
						<li><strong>Client:</strong> King Resto</li>
						<li><strong>What We Do:</strong> Logo Design &amp; Web Design</li>
						<li><strong>Website:</strong> <a href="#">google.com</a></li>
					</ul>
				</div>
				<div class="tabscontent" id="panel3">
					<ul id="listnewsnav">
						<li><a href="#">Lorem ipsum dolor.</a></li>
						<li><a href="#">Praesent nec leo et nunc fermentum viverra nec at sem. fermentum viverra nec at sem.</a></li>
						<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing.</a></li>
						<li><a href="#">Ut dui sapien, vulputate id tincidunt nec, semper quis.</a></li>
						<li><a href="#">Lorem ipsum dolor</a></li>
					</ul>
					<a href="#" class="linkreadmore">Read more News &#187;</a>
					<div class="clear"></div>
				</div>
				<div class="boxnav">
					<h3 class="titlenav">Main Menu</h3>
					<div class="boxnavcontent">
						<ul class="menunav">
							<li><a href="#">Lorem ipsum dolor</a></li>
							<li><a href="#">Sit amet consectetur adipiscing</a></li>
							<li><a href="#">Donec placerat</a></li>
							<li><a href="#">Lorem ipsum dolor</a></li>
							<li><a href="#">Sit amet consectetur adipiscing</a></li>
							<li class="last"><a href="#">Donec placerat</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">
			<p id="texttwitter"></p>
			<ul id="menufooter">
				<li><a href="#">Home</a></li>
				<li><a href="#">News</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Contact Us</a></li>
				<li class="last"><a href="#">Follow us on Twitter</a></li>
			</ul>
			<ul id="menufooterright">
				<li>Copyright 2009, Rushhour, Inc.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></li>
				<li class="last"><a href="#">Back to top</a></li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>