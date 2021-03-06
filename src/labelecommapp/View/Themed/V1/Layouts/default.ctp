<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="robots" content="index, follow" />
  <meta name="keywords" content="" />
  <meta name="title" content="" />
  <meta name="description" content="" />
  <title>Childlabel</title>

<!-- Stylesheets Start //-->
<link rel="shortcut icon" href="<?php echo $this->Html->assetUrl('img/favicon.ico?v=2'); ?>"/>
<?php echo $this->Html->css('childlabel'); ?>
<!-- Stylesheets Start End //-->
<?php echo $this->Html->script('jquery-1.10.2'); ?>
<?php echo $this->Html->script('jquery.nivo.slider'); ?>
<?php echo $this->Html->css('themes/default/default'); ?>
<?php echo $this->Html->css('themes/light/light'); ?>
<?php echo $this->Html->css('themes/dark/dark'); ?>
<?php echo $this->Html->css('themes/bar/bar'); ?>
<?php echo $this->Html->css('nivo-slider'); ?>
<?php echo $this->Html->css('jquerytools'); ?>
<?php echo $this->Html->script('libs/alertify/0.3.10/alertify.min', array('block' => 'libScriptBottom')); ?>
<?php echo $this->Html->css('alertify/0.3.10/themes/alertify.core'); ?>
<?php echo $this->Html->css('alertify/0.3.10/themes/alertify.default'); ?>
<?php echo $this->Html->css('960');?>


<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

 ga('create', 'UA-4852997-9', 'childlabel.com');
 ga('send', 'pageview');

</script>
</head>
<body>
  <?php $session = $this->Session->flash('flash', array('element' => 'flash_blank')); ?>
<div id="childContainer">
    <div class="childHolder">

        <ul id="menuBar">
          <li>
            <a href="/products/summary"><div class="shop">shop</div></a>
            <div id="dropDownMenu" class="menu_items">
              <div class="arrowHolder">
                <?php echo $this->Html->image('arrow.png'); ?>
                </div>
              <ul class="internalLinks">
                <li>
                    <strong>STICKERS</strong>
                    <ul>
                      <li><a href="/products/view/2">Circle Labels</a></li>
                      <li><a href="/products/view/1">Rectangle Labels</a></li>
                      <li><a href="/products/view/3">Chinese Labels</a></li>
                      <li><a href="/products/view/4">Birthday Labels</a></li>
                      <li><a href="/products/view/5">Book Labels</a></li>
                      <li><a href="/products/view/6">Split Dual Name Pack</a></li>
                      <li><a href="/products/view/7">Split English/Chinese Pack</a></li>
                    </ul>
                </li>
                <li><strong>IRON ONS</strong>
                  <ul>
                      <li><a href="/products/view/9">Circle Labels</a></li>
                      <li><a href="/products/view/8">Rectangle Labels</a></li>
                      <li><a href="/products/view/15">Chinese Labels</a></li>
                      <li><a href="/products/view/10">Split Dual Name Pack</a></li>
                      <li><a href="/products/view/11">Split English/Chinese Pack</a></li>
                    </ul>
                </li>
                <li><strong>VALUE PACKS</strong>
                  <ul>
                      <li><a href="/products/view/12">Get Me Started Pack</a></li>
                      <li><a href="/products/view/14">Give Me Everything Pack</a></li>
                    </ul>
                </li>
              </ul>
            </div>
          </li>
          <a href="/about">
            <li class="about">about</li>
          </a>
          <a href="/faq">
            <li class="faqs">faqs</li>
          </a>
          <a href="/call">
            <li class="call">call</li>
          </a>
        </ul>

        <div class="topRightArea">
            <div class="topBtn">
              <?php if($authUser) {?>
              <div class="circleBtn "><a href="/users/view_my_own_profile" class="spacer">Hi<br /><?php echo $authUser['short_name'];?></a></div>
              <?php }
              else {?>
              <div class="circleBtn "><a href="/users/view_my_own_profile" class="spacer">My<br />Account</a></div>
              <?php }?>
              <div class="circleBtn"><a href="/carts/view">My<br />Cart <span>Item <?php echo $cartItemCount;?></span></a></div>
            </div>
            <div class="register_logout_link">
              <?php if($authUser){?>
                <a href="/users/logout"><?php echo 'Log Out';?>
              </a><?php } else {?>
               <a href="/users/register"><?php echo 'Register!';?>
              </a>
              <?php }?>
            </div>
            <div class="btmBtn">
              <a href="https://www.facebook.com/childlabel"><div class="FBtn">Love</div></a>
              <a href="https://www.twitter.com/childlabel"><div class="TWBtn">Twitter</div></a>
            </div>
        </div>

        <a href="/"><div class="topleftIcon"></div></a>

        <div class="topMenuHolder"></div>

        <?php echo $this->fetch('content'); ?>

        <div id="footerNav">
            <div class="col1">
              <strong>STICKERS</strong><br/>
                <a href="/products/view/2">Circle Labels</a></br>
                <a href="/products/view/1">Rectangle Labels</a></br>
                <a href="/products/view/3">Chinese Labels</a></br>
                <a href="/products/view/4">Birthday Labels</a></br>
                <a href="/products/view/5">Book Labels</a></br>
                <a href="/products/view/6">Split Dual Name Pack</a></br>
                <a href="/products/view/7">Split English/Chinese Pack</a></br>
            </div>

            <div class="col1">
              <strong>IRON ONS</strong><br/>
                <a href="/products/view/9">Circle Labels</a></br>
                <a href="/products/view/8">Rectangle Labels</a></br>
                <a href="/products/view/10">Chinese Labels</a></br>
                <a href="/products/view/15">Split Dual Name Pack</a></br>
                <a href="/products/view/11">Split English/Chinese Pack</a></br>
            </div>

            <div class="col1">
              <strong>VALUE PACKS</strong><br/>
                <a href="/products/view/12">Get Me Started Pack</a></br>
                <a href="/products/view/14">Give Me Everything Pack</a></br>

            </div>

            <div class="col1">
              <strong>NAVIGATION</strong><br/>
                <a href="/about">About</a><br/>
                <a href="/faq">FAQs</a><br/>
                <a href="/call">Contact</a><br/>
                <a href="https://www.facebook.com/childlabel">Facebook</a><br/>
                <a href="https://www.twitter.com/childlabel">Twitter</a><br/>
            </div>
        </div>


        <div style="clear:both;"></div>
        <div class="leffooter">&copy; Child Label Pte Ltd All Rights Reserved</div>
    </div><!-- End Child Holder -->



</div>
<?php echo $this->fetch('libScriptBottom'); ?>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
	});

	$(function() {
		  $('#dropDownMenu').hide();
		  $("#menuBar > li")
			.mouseenter(function() {
			  $(".menu_items", this).show();
			})
			.mouseleave(function() {
			  $(".menu_items", this).hide();
			});
		});

	// alertify the Session
	var sessionMsg = '<?php echo $session; ?>';
	if (sessionMsg != "") {
	  alertify.success(sessionMsg);
	}
</script>
<?php echo $this->fetch('scriptBottom'); ?>
</body>
</html>
