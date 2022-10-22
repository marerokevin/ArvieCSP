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
            .user-dashboard-content-container {
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
            .user-dashboard-content-container {
                width: calc(100vw - 256px);
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
            .user-dashboard-content-container {
                width: calc(100vw - 288px);
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

        <!-- Modal -->
        <div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto" id="exampleModalCenter" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered relative w-auto pointer-events-none">
                
                    <div class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
                    <div class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
                        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalScrollableLabel">
                        Enter Code
                        </h5>
                        <button type="button"
                        class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body relative p-4">
                    <form action="index.php" method="POST">
                    <div class="form-group mb-6">
                        <input type="text" name="EnteredCode" class="form-control block
                            w-full
                            px-3
                            py-1.5
                            text-base
                            font-normal
                            text-gray-700
                            bg-white bg-clip-padding
                            border border-solid border-gray-300
                            rounded
                            transition
                            ease-in-out
                            m-0
                            focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInput90"
                            placeholder="Enter Code">
                    </div>
                    </div>
                    <div
                        class="modal-footer flex flex-shrink-0 flex-wrap items-center justify-end p-4 border-t border-gray-200 rounded-b-md">
                        <button type="button"
                        class="inline-block px-6 py-2.5 bg-gray-400 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-gray-500 hover:shadow-lg focus:bg-gray-600 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-gray-600 active:shadow-lg transition duration-150 ease-in-out"
                        data-bs-dismiss="modal">
                        Close
                        </button>
                        <button type="submit" name="enterCode"
                        class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out ml-1">
                        Submit
                        </button>
                    </div>
                    </div>
                </form>
            </div>
        </div>

        <div class=" user-dashboard-content-container pt-24 px-6 pb-6 bg-emerald-100 h-screen">
            <!-- Top Content -->
            <div class="flex flex-col lg:flex-row h-56 lg:h-40 xl:h-48 bg-gradient rounded-2xl">
                <div class="lg:w-1/2">
                    <div class="h-36 xl:h-48 rounded-2xl">
                        <div class="h-full pl-3 py-2 text-white items-center">
                            <div class="font-medium text-lg sm:text-lg lg:text-xl xl:text-2xl">Overall Income</div>
                            <div class="row-span-2 text-xl sm:text-2xl xl:text-3xl font-black">₱ <?php $totalincome = number_format($totalBalance, 2);echo $totalincome; //cedrick code?></div>
                            <div class="row-span-2 text-lg sm:text-xl lg:text-xl xl:text-2xl font-medium">Available Balance as of <?php echo $dateNow; ?></div>
                            <div class="row-span-4 text-3xl sm:text-4xl xl:text-5xl font-black glow-font">₱ <?php $totalBalance2 = number_format($totalBalance, 2);echo $totalBalance2; //cedrick code?></div>
                        </div>
                    </div>
                </div>
                <div class="flex text-white pl-5 py-2 lg:w-1/2">
                    <div class="h-16">
                        <div class="font-medium text-md sm:text-lg xl:text-xl">Points Earned</div>
                        <div class="row-span-2 text-2xl xl:text-3xl font-black"><?php echo $totalPoints;?></div>
                    </div>

                    <div class="h-16 pt-2 ml-6">
                        <button type="button" class="px-6 py-2.5 bg-blue-600 text-white font-medium text-sm lg:text-sm uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out" data-bs-toggle="modal" data-bs-target="#exampleModalCenter">
                        Redeem Code
                        </button>
                    </div>
                </div>
            </div>

            <!-- Bottom Content -->
            <div class="bottom-content mt-6  bg-gradient-transaction rounded-2xl">
            <!-- <div class="absolute  z-10 h-full w-full coffee-pattern bottom-content rounded-2xl"> </div> -->
            <div class="w-full h-full bottom-content px-3 py-3 rounded-2xl">
                <h1 class="text-xl xl:text-2xl font-black text-white">Income Details</h1>
                <h2 class="text-lg xl:text-xl font-black text-neutral-300">Latest</h2>
                <div style="height: calc(100% - 60px);" class="w-full h-full overflow-auto">
                    <!-- i-while loop lang to -->

                        <?php           
                            if(is_array($fetchDataTransaction)){      
                         
                                foreach($fetchDataTransaction as $data){
                                    $type = $data['type'];
                                    $inviteName = $data['inviteName'];
                                    $inviteeName = $data['inviteeName'];

                                    if(strlen($inviteeName) >= '8'){

                                    };


                                    $addedAmount = $data['addedAmount'];
                                    $package = $data['packageType'];
                                    $codeOwner = $data['codeOwner'];

                                        if($type=="Direct Referral"){
                        ?>
                        <!-- Pag from Direct Referral -->
                        <div class="w-full h-28 lg:h-20 bg-white mt-3 rounded-xl grid grid-cols-4 sm:grid-cols-5 grid-rows-4 sm:grid-rows-3">
                            <div class="row-span-2 sm:row-span-1 self-center sm:self-end text-center pl-2 text-xs sm:text-sm md:text-sm xl:text-base font-medium">Category</div>
                            <div class="row-span-2 sm:row-span-1 self-center sm:self-end text-center text-xs sm:text-sm md:text-sm xl:text-base font-medium">Invite's Name</div>
                            <div class="hidden sm:block"></div>
                            <div class="row-span-4 sm:row-span-3 col-span-2 self-center text-end mr-5 text-lg sm:text-xl md:text-2xl xl:text-3xl font-black">+  ₱ <?php $addedAmount = number_format($addedAmount, 2); echo $addedAmount;//cedrick code ?></div> 
                            <div class="row-span-2 pl-1 mr-1 self-center text-center text-xs sm:text-base xl:text-xl font-bold text-green-600"> <?php echo $type; ?></div>
                            <div class="row-span-2 pl-1 mr-1 self-center text-center whitespace-normal lg:whitespace-normal md:text-center text-xs sm:text-base md:text-lg xl:text-xl font-bold"><?php echo $inviteName; ?>John Arian Malondras</div>
                        </div>

                        <?php 
                                        }else if($type=="Indirect Referral"){
                        ?>
                        <!-- Pag from Indirect Referral -->
                        <div class="w-full h-28 lg:h-20 bg-white mt-3 rounded-xl grid grid-cols-5 grid-rows-3">
                            <div class="self-end text-center text-xs sm:text-sm xl:text-base font-medium">Category</div>
                            <div class="self-end text-center text-xs sm:text-sm xl:text-base font-medium">Downline Name</div>
                            <div class="self-end text-center text-xs sm:text-sm xl:text-base font-medium">Invite's Name</div>
                            <div class="row-span-3 col-span-2 self-center text-end mr-5 text-lg sm:text-xl md:text-2xl xl:text-3xl font-black">+ ₱ <?php $addedAmount = number_format($addedAmount, 2); echo $addedAmount;?></div>
                            <div class="row-span-2 pl-1 mr-1 self-center text-center text-xs sm:text-base xl:text-xl font-bold text-green-600"><?php echo $type; ?></div>
                            <div class="row-span-2 pl-1 mr-1 self-center text-center whitespace-normal overflow-hidden lg:whitespace-nowrap text-xs sm:text-base xl:text-xl font-bold"><?php echo $inviteeName; ?></div>
                            <div class="row-span-2 pl-1 mr-1 self-center text-center whitespace-normal overflow-hidden lg:whitespace-nowrap text-xs sm:text-base xl:text-xl font-bold"><?php echo $inviteName; ?>John Arian Malondras</div>
                        </div>

                        <?php 
                                        }else if($type=="Rebates"){
                        ?>
                        <!-- Pag from rebate -->
                        <div class="w-full h-28 lg:h-20 bg-white mt-3 rounded-xl grid grid-cols-5 grid-rows-3">
                            <div class="self-end text-center text-xs sm:text-sm xl:text-base font-medium">Category</div>
                            <div class="self-end text-center text-xs sm:text-sm xl:text-base font-medium">Type</div>
                            <div class="self-end text-center text-xs sm:text-sm xl:text-base font-medium">Downline Name</div>
                            <div class="row-span-3 col-span-2 self-center text-end mr-5 text-lg sm:text-xl md:text-2xl xl:text-3xl font-black">+ ₱ <?php $addedAmount = number_format($addedAmount, 2); echo $addedAmount;?></div>
                            <div class="row-span-2 pl-1 mr-1 self-center text-center text-xs sm:text-base md:text-lg xl:text-xl font-bold text-orange-600">Rebate</div>
                            <div class="row-span-2 pl-1 mr-1 self-center text-center text-xs sm:text-base md:text-lg xl:text-xl font-bold"><?php if($package == 'RA'){ echo'Botanical';}else {echo 'Kapenato';} ?></div>
                            <div class="row-span-2 pl-1 mr-1 self-center text-center text-xs sm:text-base md:text-lg xl:text-xl overflow-hidden font-bold"><?php echo $codeOwner;?></div>
                        </div>

                        <?php 
                                        //}elseif($type=="Points"){
                        ?>
                        <!-- Pag from rebate -->
                        <!-- <div class="w-full h-28 lg:h-20 bg-white mt-3 rounded-xl grid grid-cols-5 grid-rows-2">
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Category</div>
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Type</div>
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium"></div>
                            <div class="row-span-2 col-span-2 self-center text-end mr-5 text-4xl md:text-2xl xl:text-3xl font-black">+ 1</div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold text-orange-600">Points</div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold"><?php //if($package == 'RA'){ echo'Botanical';}else {echo 'Kapenato';} ?></div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold"></div>
                        </div> -->

                        <?php 
                                        }elseif($type=="Withdrawal"){
                        ?>
                        <!-- Pag out or withdraw -->
                        <div class="w-full h-28 lg:h-20 bg-white mt-3 rounded-xl grid grid-cols-5 grid-rows-2">
                            <div class="self-end text-center text-xl md:text-sm font-medium">Category</div>
                            <div class="self-end text-center text-xl font-medium"></div>
                            <div class="self-end text-center text-xl font-medium"></div>
                            <div class="row-span-2 col-span-2 self-center text-end mr-5 text-xl md:text-2xl font-black">- ₱ 999,999,000.00</div>
                            <div class="self-start text-center text-2xl md:text-lg font-bold text-red-600">Withdrawal</div>
                            <div class="self-start text-center text-2xl font-bold"></div>
                        </div>

                        <?php 
                                        }}}else{

                                        }
                        ?>
                    <!-- end -->
                </div>
            </div>
          </div>   
        </div>
    </div>

    <script>
        $(document).ready(function(){
            $("#header_dashboard").addClass("bg-gray-300");
            $("#nav_dashboard").addClass("bg-emerald-700");
            $("#nav_dashboard").addClass("text-white");
            $("#nav_dashboard").removeClass("text-gray-600");
        });
    </script>



</body>
</html>
