<?php
    $msg = "";
    $user = "quang";
    $password = "123456";
    if (@$_POST['username'] !== $user) {
        $msg = "Username này không tồn tại";
    } else if(@$_POST['pwd'] !== $password) {
        $msg = "Password không chính xác";
    }

    $flagLogin = "error";
    if (!$msg) {
        $flagLogin = "ok";
    }

    header("Content-type: text/xml");
    echo '<?xml version="1.0" encoding="utf-8"?>';
    echo '<root>';
    echo '<flag>' . $flagLogin . '</flag>';
    echo '<msg>' . $msg . '</msg>';
    echo '</root>';