<?php
setcookie("login", "", time() - 3600);
setcookie("adminName", "", time() - 3600);
setcookie("sessionId", "", time() - 3600);
header("location:index.php");
?>