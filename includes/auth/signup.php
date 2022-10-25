<?php
include_once ("./includes/config/conn.php");
date_default_timezone_set("Asia/Singapore");

if(isset($_POST['register'])){

    $ref_code_check = $_POST['ref_code'];
    $referrer_check = $_GET["arviecsp"];
    $referralcheck = "SELECT referrer, ref_code FROM `referral_codes` WHERE `referrer` = '$referrer_check' AND `ref_code` = '$ref_code_check' AND `status` = 'to_redeem'";
    $resultReferral = mysqli_query($conn, $referralcheck);
    $referral_count = mysqli_num_rows($resultReferral);

    if ($referral_count == 1) {

        while($referral_info = mysqli_fetch_assoc($resultReferral)) {
            $referrer =$referral_info['referrer'];
            $ref_code = $referral_info['ref_code'];

            $code = "ADS";
            $get_month = date('m', strtotime("now"));

            $sqlLastID = "SELECT MAX(number_basis) as 'idnumber' FROM `accounts` WHERE 1"; //select the highest number_basis
            $getLastId = mysqli_query($conn, $sqlLastID);
            while($userRow = mysqli_fetch_assoc($getLastId)){
                $lastId = $userRow['idnumber'];
                $lastId++; //increment the number_basis
            }

            $getDateNow = new DateTime();
            $getYearNow  = $getDateNow->format('Y'); 
            $getMonthNow  = $getDateNow->format('m'); 

            $member_id = $code.$getYearNow."-".$getMonthNow."-".$lastId;
            
            $referrer = $_GET["arviecsp"];
            $ref_code = $_POST["ref_code"];
            $first_name = $_POST["first_name"];
            $last_name = $_POST["last_name"];
            $email_address = $_POST["email_address"];
            $pass = $_POST["pass"];
            $contact_number = $_POST["contact_number"];
            $birthday = date('M d Y', strtotime($_POST["birthday"]));
            $confirm_pass = $_POST["confirm_pass"];
            $sss_num = $_POST["sss_num"];
            $tin_acct = $_POST["tin_acct"];
            $homeaddress = $_POST["homeAddress"];
        
            $create_user_select = "SELECT * FROM accounts WHERE email_address = '$email_address'";
            $create_user_query = mysqli_query($conn, $create_user_select);
            $create_user_count = mysqli_num_rows($create_user_query);
    
            if($create_user_count == 0) {
                if(($pass == $confirm_pass)) {
                    $hash = password_hash($pass, PASSWORD_DEFAULT);
                    $create_user_select_name1 = "SELECT * FROM `accounts` WHERE `member_id` = '$referrer'";
                    $create_user_query_name1 = mysqli_query($conn, $create_user_select_name1);
                    $fnameNaginvite1 = "";
                    $lnameNaginvite1 = "";

                    while($userRow = mysqli_fetch_assoc($create_user_query_name1)){
                        $fnameNaginvite1 = $userRow['first_name'];
                        $lnameNaginvite1=$userRow['last_name'];
                    }

                    //Change this format when deployed
                    $referralLink = "http://localhost/ArvieCSP/signup.php?arviecsp=$member_id";
                    $create_user_select = "INSERT INTO `accounts` (`member_id`, `first_name`, `last_name`, `sponsor`, `sponsorName`, `email_address`, `pass`, `contact_number`, `date`, `access`, `permission`, `referralId`, `homeaddress`, `tin_acct`, `sss_num`, `number_basis`, `referralLink`) VALUES ('$member_id', '$first_name', '$last_name', '$referrer', '$fnameNaginvite1  $lnameNaginvite1', '$email_address', '$hash', '$contact_number', current_timestamp(), 'approved', 'userist', '$ref_code', '$homeaddress', '$tin_acct', '$sss_num', '$lastId', '$referralLink')";
                    $success = mysqli_query($conn, $create_user_select);

                    if ($success) { //Just to confirm if may nainsert, and nag success.
                        $sqlInsertUserInitialBalance= "INSERT INTO `totalbalance`(`userID`, `userName`, `totalBalance`) VALUES ('$member_id','$email_address','0')";
                        mysqli_query($conn, $sqlInsertUserInitialBalance);

                        $create_user_select_name = "SELECT * FROM `accounts` WHERE `member_id` = '$referrer'";
                        $create_user_query_name = mysqli_query($conn, $create_user_select_name);
                        $fnameNaginvite = "";
                        $lnameNaginvite = "";
                        $emailNaginvite = "";

                        while($userRow = mysqli_fetch_assoc($create_user_query_name)){
                            $fnameNaginvite = $userRow['first_name'];
                            $lnameNaginvite=$userRow['last_name'];
                            $emailNaginvite=$userRow['email_address'];
                        }

                        $sqlupdatecodestatus ="UPDATE `referral_codes` SET `status`='used', `referee` = '$member_id' WHERE `ref_code` = '$ref_code'";
                        mysqli_query($conn, $sqlupdatecodestatus);

                        //start of passive
                        $sqlGetTotalBalance= "SELECT * FROM `totalbalance` WHERE `userID` = '$referrer'";
                        $resultTotalBalance = mysqli_query($conn, $sqlGetTotalBalance);
                        
                        $totalBalance = 0;
                        while($userRow = mysqli_fetch_assoc($resultTotalBalance)){
                            $totalBalance = $userRow['totalBalance'];
                        }

                        $updatedBalance = $totalBalance + 500;
                        $sqlAddBalance= "UPDATE `totalbalance` SET `totalBalance`='$updatedBalance' WHERE `userID` = '$referrer'";
                        mysqli_query($conn, $sqlAddBalance);
                    
                        $sqlinsertTransact= "INSERT INTO `transaction`(`type`,`userName`,`userId`, `inviteName`,`inviteeName`, `addedAmount`, `TotalBalance`) VALUES ('Direct Referral','$emailNaginvite','$referrer','$first_name $last_name','$fnameNaginvite $lnameNaginvite','500','$updatedBalance')";
                        mysqli_query($conn, $sqlinsertTransact);
                        
                        //start of loop max of 10th level
                        $upline=$emailNaginvite;
                        $uplineId=$referrer;
                    
                        for ($i = 1; $i<=9; $i++){
                            $sqlGetInvitee= "SELECT * FROM `accounts` WHERE `member_id` = '$uplineId'";
                            $resultInvitee = mysqli_query($conn, $sqlGetInvitee);
                            
                            $inviteeUpline = '';
                            $inviteeID = '';
                    
                            while($userRow = mysqli_fetch_assoc($resultInvitee)){
                                $inviteeUpline = $userRow['sponsorName'];
                                $inviteeID = $userRow['sponsor'];
                            }

                            $resultInviteeCount = mysqli_num_rows($resultInvitee);

                            if($resultInviteeCount>=1){
                                $sqlGetTotalBalance= "SELECT * FROM `totalbalance` WHERE `userID` = '$inviteeID'";
                                $resultTotalBalance = mysqli_query($conn, $sqlGetTotalBalance);
                                $totalBalance = 0;
                            
                                while($userRow = mysqli_fetch_assoc($resultTotalBalance)){
                                $totalBalance = $userRow['totalBalance'];
                                }

                                $updatedBalance = $totalBalance + 10;
                            
                                $sqlAddBalance= "UPDATE `totalbalance` SET `totalBalance`='$updatedBalance' WHERE `userID` = '$inviteeID'";
                                mysqli_query($conn, $sqlAddBalance);
                            
                                $sqlinsertTransact2= "INSERT INTO `transaction`(`type`,`userName`,`userId`, `inviteName`,`inviteeName`, `addedAmount`, `TotalBalance`) VALUES ('Indirect Referral','$inviteeUpline','$inviteeID','$first_name $last_name', '$fnameNaginvite $lnameNaginvite', '10', '$updatedBalance')";
                                mysqli_query($conn, $sqlinsertTransact2);
                                
                                $uplineId = $inviteeID;
                            }else {
                                $i=$i+10;
                            }
                        }
                        echo "<script> alert('You are now registered!')</script>";
                        header("location: ./login.php");
                    }else {
                        echo "<script> alert('There is an error with adding account')</script>";
                    }
                }else {
                    echo "<script> alert('Password not match')</script>";
                }
            }elseif ($create_user_count>0) {
                echo "<script> alert('Email address is already taken.')</script>";
            }
        }
    }else {
        echo "<script> alert('This code does not exist or already been used.')</script>";
    }
}
?>