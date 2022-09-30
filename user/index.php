<?php
session_start();

include_once ("../includes/config/conn.php");
$db= $conn;
date_default_timezone_set("Asia/Singapore");
$dateNow = new DateTime(); 
$dateNow  = $dateNow->format('M d, Y'); 
?>

$id = $_SESSION["id"];
$SelectPresentBalance ="SELECT * FROM `totalbalance` WHERE `userID` = '$id';";
$resultPresentBalance = mysqli_query($conn, $SelectPresentBalance);

while($userRow = mysqli_fetch_assoc($resultPresentBalance)){
    $totalBalance = $userRow['totalBalance'];

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
$id = $_SESSION["id"];
$query = "SELECT * FROM `transaction` WHERE `userId` = '$id'";

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
    <title>Arvie Direct Sales</title>
    <script src="../js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script src="../js/jquery-3.6.1.min.js"></script>

    <title>Arvie Cosmetic & Skincare  ProductsTrading</title>

    <style>
        @media screen and (min-width: 768px) {
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
        <div class="basis-80 md:basis-64 xl:basis-72 h-screen">
            <?php include_once "./user-nav.php"; ?>
        </div>
        <div class="user-dashboard-content-container pt-24 px-6 pb-6 bg-emerald-100 h-screen">
            <!-- Top Content -->
            <div class="h-60 md:h-40 xl:h-48 bg-emerald-700 rounded-2xl">
                <div class="h-full pl-5 py-5 md:pl-3 md:py-2 grid grid-rows-9 text-white items-center">
                    <div class="font-medium text-xl md:text-lg xl:text-xl">Overall Income</div>
                    <div class="row-span-2 text-3xl md:text-2xl xl:text-3xl font-black">₱ 169,000,069.00</div>
                    <div class="row-span-2 text-3xl md:text-2xl xl:text-3xl font-medium">Available Balance as of <?php echo $dateNow; ?></div>
                    <div class="row-span-4 text-5xl md:text-4xl xl:text-5xl font-black">₱ <?php echo $totalBalance;?></div>
                </div>
            </div>

            <!-- Bottom Content -->
            <div class="bottom-content mt-6 px-5 py-5 md:px-3 md:py-2 bg-emerald-700 rounded-2xl">
                <h1 class="text-2xl md:text-xl xl:text-2xl font-black text-white">Income Details</h1>
                <h2 class="text-xl md:text-lg xl:text-xl font-black text-neutral-300">Today</h2>
                <div style="height: calc(100% - 60px);" class="w-full overflow-auto">
                    <!-- i-while loop lang to -->

                        <!-- Pag from Direct Referral -->
                        <?php           if(is_array($fetchDataTransaction)){      
                         
                                 foreach($fetchDataTransaction as $data){
                                    $type = $data['type'];
                                    $inviteName = $data['inviteName'];
                                    $inviteeName = $data['inviteeName'];
                                    $addedAmount = $data['addedAmount'];
                                    if($type=="Direct Referral"){

                                    
                                 ?>

                            <div class="w-full h-24 md:h-20 bg-neutral-200 mt-3 rounded-xl grid grid-cols-5 grid-rows-2">
                            <div class="self-end text-center pl-2 text-lg md:text-sm xl:text-base font-medium">Category</div>
                            <div class="self-end text-center text-lg md:text-sm xl:text-base font-medium">Invite's Name</div>
                            <div></div>
                            <div class="row-span-2 col-span-2 self-center text-end mr-5 text-4xl md:text-2xl xl:text-3xl font-black">+  ₱ <?php echo $addedAmount; ?></div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold text-green-600"> <?php echo $type; ?></div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold"><?php echo $inviteName; ?></div>
                        </div>
                        <?php 
                                    }
                                    elseif($type=="Indirect Referral"){
                                        ?>

                                         <!-- Pag from Indirect Referral -->
                        <div class="w-full h-24 md:h-20 bg-neutral-200 mt-3 rounded-xl grid grid-cols-5 grid-rows-2">
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Category</div>
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Downline Name</div>
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Invite's Name</div>
                            <div class="row-span-2 col-span-2 self-center text-end mr-5 text-4xl md:text-2xl xl:text-3xl font-black">+ ₱ <?php echo $addedAmount; ?></div>
                            <div class="self-start text-center text-2xl md:text-base xl:text-xl font-bold text-green-600"><?php echo $type; ?></div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold"><?php echo $inviteeName; ?></div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold"><?php echo $inviteName; ?></div>
                        </div>

                                    <?php 
                                    }
                                    elseif($type=="Rebate"){
                                        ?>
                        <!-- Pag from rebate -->
                        <div class="w-full h-24 md:h-20 bg-neutral-200 mt-3 rounded-xl grid grid-cols-5 grid-rows-2">
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Category</div>
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Type</div>
                            <div class="self-end text-center text-xl md:text-sm xl:text-base font-medium">Downline Name</div>
                            <div class="row-span-2 col-span-2 self-center text-end mr-5 text-4xl md:text-2xl xl:text-3xl font-black">+ ₱ 30.00</div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold text-green-600">Rebate</div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold">Botanical</div>
                            <div class="self-start text-center text-2xl md:text-lg xl:text-xl font-bold">B. Black</div>
                        </div>
                                    <?php 
                                    }
                                    elseif($type=="Withdrawal"){
                                        ?>
                         <!-- Pag out or withdraw -->
                         <div class="w-full h-24 md:h-20 bg-neutral-200 mt-3 rounded-xl grid grid-cols-5 grid-rows-2">
                            <div class="self-end text-center text-xl md:text-sm font-medium">Category</div>
                            <div class="self-end text-center text-xl font-medium"></div>
                            <div class="self-end text-center text-xl font-medium"></div>
                            <div class="row-span-2 col-span-2 self-center text-end mr-5 text-xl md:text-2xl font-black">- ₱ 999,999,000.00</div>
                            <div class="self-start text-center text-2xl md:text-lg font-bold text-red-600">Withdrawal</div>
                            <div class="self-start text-center text-2xl font-bold"></div>
                        </div>
                                    <?php 
                                    }
                             }}else{
                                 }
                                ?>
                  
                    

                       

                    <!-- end -->
                </div>
            </div>
        </div>
    </div>
</body>
</html>
