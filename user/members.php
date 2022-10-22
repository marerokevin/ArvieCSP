<?php
session_start();

include_once ("../includes/config/conn.php");
$db= $conn;
date_default_timezone_set("Asia/Singapore");
$dateNow = new DateTime(); 
$dateNow  = $dateNow->format('M d, Y'); 

$member_id = $_SESSION["member_id"];
$email = $_SESSION["email_address"];
$id = $_SESSION["id"];
$SelectInfo ="SELECT * FROM `accounts` WHERE `member_id` = '$member_id';";
$resultInfo= mysqli_query($conn, $SelectInfo);
$fname="";
$lname="";
while($userRow = mysqli_fetch_assoc($resultInfo)){
    $fname = $userRow['first_name'];
    $lname = $userRow['last_name'];


}
$SelectPresentBalance ="SELECT * FROM `totalbalance` WHERE `userID` = '$member_id';";
$resultPresentBalance = mysqli_query($conn, $SelectPresentBalance);

while($userRow = mysqli_fetch_assoc($resultPresentBalance)){
    $totalBalance = $userRow['totalBalance'];

}

$email = $_SESSION["email_address"];
if(isset($_POST['enterCode'])){
    $EnteredCode = $_POST['EnteredCode'];
    $sqlSelectCode= "SELECT * FROM `generated_code` WHERE `code` = '$EnteredCode' AND `type` = 'RA' || `type`='RB'";
    $resultSelectCode = mysqli_query($conn, $sqlSelectCode);
    $num_of_select_code = mysqli_num_rows($resultSelectCode);
    while($userRow = mysqli_fetch_assoc($resultSelectCode))
        {
        $userNameOfCodeOwner = $userRow['userNameOfCodeOwner'];
        $type = $userRow['type'];

            if($num_of_select_code !=0)
            {
                if($userNameOfCodeOwner !=""){
                    // echo "This is code is already used. Please enter another code";
                    echo "<script>alert('This is code is already used. Please enter another code')</script>";
                }
                else{
                    $sqlUpdateCodeOwner= "UPDATE `generated_code` SET `userNameOfCodeOwner`='$email',`userIdOfCodeOwner`='$id' WHERE `code` = '$EnteredCode'";
                    mysqli_query($conn, $sqlUpdateCodeOwner);
                    // echo "You have successfully enter the code!";
                    $sqlSelectRebatesPoints= "SELECT * FROM `rebates_points` WHERE `user_id` = '$id'";
                    $resultSelectRPoints = mysqli_query($conn, $sqlSelectRebatesPoints);
                    $num_of_select_points = mysqli_num_rows($resultSelectRPoints);
                    if($num_of_select_points==0){
                        $sqlinsertPoints= "INSERT INTO `rebates_points`(`user_id`, `email_address`, `pointsEarned`) VALUES ('$id','$email','1')";
                        mysqli_query($conn, $sqlinsertPoints);
                          $sqlinsertTransacPoints= "INSERT INTO `transaction`(`type`, `userName`, `userId`, `packageType`, `addedPoints`, `totalPoints`)VALUES ('Points','$email','$id','$type','1','1')";
                                mysqli_query($conn, $sqlinsertTransacPoints);
                    }
                    else{
                        $sqlSelectRebatesPoints2= "SELECT * FROM `rebates_points` WHERE `user_id` = '$id'";
                        $resultSelectRPoints2 = mysqli_query($conn, $sqlSelectRebatesPoints2);

                        while($userRow = mysqli_fetch_assoc($resultSelectRPoints2))
                        {
                        $pointsEarned = $userRow['pointsEarned'];
                        $pointsEarned++;
                        $sqlUpdatePointsEarned= "UPDATE `rebates_points` SET `pointsEarned`='$pointsEarned' WHERE `user_id` = '$id'";
                        mysqli_query($conn, $sqlUpdatePointsEarned);
                        $sqlinsertTransacPoints= "INSERT INTO `transaction`(`type`, `userName`, `userId`, `packageType`, `addedPoints`, `totalPoints`)VALUES ('Points','$email','$id','$type','1','$pointsEarned')";
                        mysqli_query($conn, $sqlinsertTransacPoints);
                        }                
                    }

                    $sponsor=$id;
                    for ($i = 1; $i<=10; $i++)
                    {                  
                    //Update sponsor total balance
                    $sqlUserSponsor= "SELECT * FROM `invites` WHERE `idOfInvite` = '$sponsor';";
                    $resultUserSponsor = mysqli_query($conn, $sqlUserSponsor);
                    while($userRow = mysqli_fetch_assoc($resultUserSponsor))
                        {
                            $inviteeID = $userRow['inviteeID'];
                                
                            $sqlGetTotalBalance= "SELECT * FROM `totalbalance` WHERE `userID` = '$inviteeID'";
                            $resultTotalBalance = mysqli_query($conn, $sqlGetTotalBalance);
                            
                            $totalBalance = 0;
                            while($userRow = mysqli_fetch_assoc($resultTotalBalance)){
                                $totalBalance = $userRow['totalBalance'];
                                $emailOfSponsor = $userRow['userName'];
                            }
                            if($i==1)
                            {
                                $updatedBalance = $totalBalance + 80;
                                $sqlinsertTransact= "INSERT INTO `transaction`(`type`, `userName`, `userId`, `packageType`, `codeOwner`, `codeOwnerId`, `addedAmount`, `TotalBalance`)VALUES ('Rebates','$emailOfSponsor','$inviteeID','$type','$email','$id','80','$updatedBalance')";
                                mysqli_query($conn, $sqlinsertTransact);

                            }
                            else if($i==2 || $i==3 || $i==4 || $i==5){
                            $updatedBalance = $totalBalance + 30;
                            $sqlinsertTransact= "INSERT INTO `transaction`(`type`, `userName`, `userId`, `packageType`, `codeOwner`, `codeOwnerId`, `addedAmount`, `TotalBalance`)VALUES ('Rebates','$emailOfSponsor','$inviteeID','$type','$email','$id','30','$updatedBalance')";
                            mysqli_query($conn, $sqlinsertTransact);
                            }
                            else{
                            $updatedBalance = $totalBalance + 20;
                            $sqlinsertTransact= "INSERT INTO `transaction`(`type`, `userName`, `userId`, `packageType`, `codeOwner`, `codeOwnerId`, `addedAmount`, `TotalBalance`)VALUES ('Rebates','$emailOfSponsor','$inviteeID','$type','$email','$id','20','$updatedBalance')";
                            mysqli_query($conn, $sqlinsertTransact);
                            }
                            $sqlAddBalance= "UPDATE `totalbalance` SET `totalBalance`='$updatedBalance' WHERE `userID` = '$inviteeID'";
                            mysqli_query($conn, $sqlAddBalance);

                         


                            $sponsor = $inviteeID;
                      }
                    }
                    echo "<script>alert('You have successfully enter the code!')</script>";

                }
            }
         }
}

// getiing the points\
$totalPoints=0;
$sqlSelectRebatesPoints3= "SELECT * FROM `rebates_points` WHERE `user_id` = '$id'";
$resultSelectRPoints3 = mysqli_query($conn, $sqlSelectRebatesPoints3);
while($userRow = mysqli_fetch_assoc($resultSelectRPoints3)){
    $totalPoints = $userRow['pointsEarned'];
 
}

// code for getting the accounts//
$tableNameTransaction="transaction";
$columnsTransaction= ['transactionId', 'type','userName','userId','inviteName','inviteeName' ,'addedAmount', 'TotalBalance'];
$fetchDataTransaction= fetch_transaction($db, $tableNameTransaction, $columnsTransaction);


function fetch_transaction($db, $tableNameTransaction, $columnsTransaction){


 if(empty($db)){
  $msg= "Database connection error";
 }elseif (empty($columnsTransaction) || !is_array($columnsTransaction)) {
  $msg="columns Name must be defined in an indexed array";
 }elseif(empty($tableNameTransaction)){
   $msg= "Table Name is empty";
}else{
$columnName = implode(", ", $columnsTransaction);
$member_id = $_SESSION["member_id"];
$query = "SELECT * FROM `transaction` WHERE `userId` = '$member_id'";

//  SELECT * FROM `usertask` WHERE `username` = 'cjorozo';
$result = $db->query($query);
if($result== true){ 
 if ($result->num_rows > 0) {
    $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
    $msg= $row;
 } else {
    $msg= "No Data Found"; 
 }
}else{
  $msg= mysqli_error($db);
}
}
return $msg;
}
// end of code for getting the accounts//


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/styles.css">
    <!-- <link rel="stylesheet" href="./dist/output.css"> -->
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
    <link rel="stylesheet" href="../node_modules/tw-elements/dist/css/index.min.css" />

    <title>Arvie Direct Sales</title>
    <script src="../js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>
    <script src="../js/jquery-3.6.1.min.js"></script>

    <title>Arvie Cosmetic & Skincare  ProductsTrading</title>

    <style>
        @media screen and (min-width: 768px) {
            .user-members-content-container {
                width: calc(100vw);
            }
            .bottom-content{
                height: calc(100% - 184px);
            }
            .navbar div .nav-items ul li {
                position: relative;
                padding: 0 25px;
                margin-left: 0 !important;
            }
            .navbar div .nav-items ul li:not(:last-child):after {
                position: absolute;
                right: 0;
                top: 50%;
                transform: translateY(-50%);
                content: "";
                width: 1px;
                height: 10px;
                background-color: #374151;
            }
        }
        @media screen and (min-width: 1024px) {
            .user-members-content-container {
                width: calc(100vw - 256px) !important;
            }
            .bottom-content{
                height: calc(100% - 184px);
            }
            .navbar div .nav-items ul li {
                position: relative;
                padding: 0 25px;
                margin-left: 0 !important;
            }
            .navbar div .nav-items ul li:not(:last-child):after {
                position: absolute;
                right: 0;
                top: 50%;
                transform: translateY(-50%);
                content: "";
                width: 1px;
                height: 10px;
                background-color: #374151;
            }
        }

        @media screen and (min-width: 1280px) {
            .user-members-content-container {
                width: calc(100vw - 288px) !important;
            }
            .bottom-content{
                height: calc(100% - 216px);
            }
            .navbar div .nav-items ul li {
                position: relative;
                padding: 0 25px;
                margin-left: 0 !important;
            }
            .navbar div .nav-items ul li:not(:last-child):after {
                position: absolute;
                right: 0;
                top: 50%;
                transform: translateY(-50%);
                content: "";
                width: 1px;
                height: 10px;
                background-color: #374151;
            }
        }
    </style>
</head>
<body>
    <?php include_once "./user-header.php"; ?>
    <div class="flex flex-row">
        <div class="basis-0 lg:basis-64 xl:basis-72 hidden md:flex h-screen">
            <?php include_once "./user-nav.php"; ?>
        </div>

        <div class=" user-members-content-container pt-24 px-6 pb-6 bg-emerald-100 w-screen">
            <h2 class="text-center font-black text-4xl mb-10">Members</h2>
            <div class="container px-6 mx-auto">
                <h2 class="bg-white rounded-lg p-3 mb-3 font-bold text-xl shadow-lg">Total: 9,999</h2>
                <section class="mb-32 text-gray-800  shadow-lg">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item border-t-0 border-l-0 border-r-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingOne">
                            <button
                                class="accordion-button relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false"
                                aria-controls="flush-collapseOne">
                                LEVEL 1
                                <span class="absolute right-12">624</span>
                            </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse border-0 collapse show"
                            aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div>John Arian Malondras</div>
                                    <div>John Arian Malondras</div>
                                    <div>John Arian Malondras</div>
                                    <div>John Arian Malondras</div>
                                    <div>John Arian Malondras</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingTwo">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                aria-controls="flush-collapseTwo">
                                LEVEL 2
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse border-0 collapse" aria-labelledby="flush-headingTwo"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingThree">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false"
                                aria-controls="flush-collapseThree">
                                LEVEL 3
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingFour">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false"
                                aria-controls="flush-collapseFour">
                                LEVEL 4
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingFive">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false"
                                aria-controls="flush-collapseFive">
                                LEVEL 5
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingSix">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false"
                                aria-controls="flush-collapseSix">
                                LEVEL 6
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingSeven">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false"
                                aria-controls="flush-collapseSeven">
                                LEVEL 7
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingEight">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false"
                                aria-controls="flush-collapseEight">
                                LEVEL 8
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingNine">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false"
                                aria-controls="flush-collapseNine">
                                LEVEL 9
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-l-0 border-r-0 border-b-0 rounded-none bg-white border border-gray-200">
                            <h2 class="accordion-header mb-0" id="flush-headingTen">
                            <button
                                class="accordion-button collapsed relative flex items-center w-full py-4 px-5 text-base text-gray-800 font-bold text-left bg-white border-0 rounded-none transition focus:outline-none"
                                type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false"
                                aria-controls="flush-collapseTen">
                                LEVEL 10
                                <span class="absolute right-12">0</span>
                            </button>
                            </h2>
                            <div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingTen"
                            data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body py-4 px-5 text-gray-500 text-center grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3">
                                    <!-- NAMES -->
                                    <div class="col-span-3">No data</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>


        </div>
    </div>

    

    <script>
        $(document).ready(function(){
            $("#header_members").addClass("bg-gray-300");
            $("#nav_members").addClass("bg-emerald-700");
            $("#nav_members").addClass("text-white");
            $("#nav_members").removeClass("text-gray-600");
        });
    </script>
</body>
</html>
