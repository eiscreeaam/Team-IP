<?php
session_start();
session_destroy();
header( 'Location: http://localhost/007/main.php' ) ;
?>
