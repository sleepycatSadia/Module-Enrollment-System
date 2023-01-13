<?php

    session_start();

    if(isset($_SESSION["user"])){
        if(($_SESSION["user"])=="" or $_SESSION['usertype']!='a'){
            header("location: ../login.php");
        }

    }else{
        header("location: ../login.php");
    }
    
    
    if($_GET){
        //import database
        include("../connection.php");
        $id=$_GET["id"];



        //increase seat count
        $approw = $database->query("select * from appointment where appoid='$id';");
        $appfetch=$approw->fetch_assoc();
        $scheduleid=$appfetch["scheduleid"];

        $schedulerow = $database->query("select * from schedule where scheduleid='$scheduleid'");
        $schedulefetch=$schedulerow->fetch_assoc();
        $currentnop=((int) $schedulefetch["nop"]) +1;
        echo $currentnop;
    
        $sql3="update schedule set nop=$currentnop where scheduleid=$scheduleid";
        $result= $database->query($sql3);


        //$result001= $database->query("select * from schedule where scheduleid=$id;");
        //$email=($result001->fetch_assoc())["docemail"];
        $sql= $database->query("delete from appointment where appoid='$id';");
        //$sql= $database->query("delete from doctor where docemail='$email';");
        //print_r($email);

       
        header("location: appointment.php");
    }


?>