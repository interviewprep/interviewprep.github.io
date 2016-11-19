<?php

if($_POST['Sub'])
{

  # setting the form address of the mail
    //$mail     = "helpinghands@pratheksha.org";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-type:text/html;";
    $headers .= "charset=iso-8859-1\r\n";
    $headers .= "From: " . $_POST['txt_name'] . " <" . $_POST['txt_email'] . ">";
    
  /*From mail address*/
  //Checked by Ajay
  $from = $_POST['senderEmail'];
  
 //$to = "ajay@aopl.net,info@gloinnt.com,jasperaugustine@yahoo.com";
$to = "kumarjaya.p@gmail.com,nandini@nextwebi.com";
  
  $subject = "progamming interview preparation quick contact form";
  extract($_POST);
  
 

  $cont ="<table border=0>";
  $cont .="<tr><td><b>Name            :</b>" .$_POST['txt_name']. "</td></tr>";
  $cont .="<tr><td><b>Contact Number  :</b>".$_POST['txt_contactno']."</td></tr>";
 
  $cont .="<tr><td><b>Email            :</b>".$_POST['txt_email']."</td></tr>";
  $cont .="<tr><td><b>Message        :</b>".$_POST['txt_msg']."</td></tr>";
  $cont .="</table>";
  
  $amessage = $_POST['senderEmail'];
  //echo $cont;
  $success = mail($to,$subject,$cont,$headers);
  
  

}

?>

<html>
  <head>
    <title>Thanks!</title>
  </head>
  <body>
  <?php if ( $success ) echo "<p>Thanks for sending your message! We'll get back to you shortly.</p>" ?>
  <?php if ( !$success ) echo "<p>There was a problem sending your message. Please try again... </p>" ?>
   
  <p>Click your browser's Back button to return to the page.</p>
  <p><a href="index.html">Go Back to Website</a>
  </body>
</html>

