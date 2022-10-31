<?php
session_start();

include_once ("../includes/config/conn.php");
$db= $conn;
date_default_timezone_set("Asia/Singapore");
$dateNow = new DateTime(); 
$dateNow  = $dateNow->format('M d, Y'); 
$DayNow = new DateTime(); 

$day  = $DayNow->format('D'); 

// echo $day; 




$member_id = $_SESSION["member_id"];
$email = $_SESSION["email_address"];
$id = $_SESSION["id"];
$SelectInfo ="SELECT * FROM `accounts` WHERE `member_id` = '$member_id';";
$resultInfo= mysqli_query($conn, $SelectInfo);
$fname="";
$lname="";
$referralLink="";
while($userRow = mysqli_fetch_assoc($resultInfo)){
    $fname = $userRow['first_name'];
    $lname = $userRow['last_name'];
    $referralLink = $userRow['referralLink'];

}
$SelectPresentBalance ="SELECT * FROM `totalbalance` WHERE `userID` = '$member_id';";
$resultPresentBalance = mysqli_query($conn, $SelectPresentBalance);

while($userRow = mysqli_fetch_assoc($resultPresentBalance)){
    $totalBalance = $userRow['totalBalance'];
    $unclaimableBalance = $userRow['unclaimable'];

}

$email = $_SESSION["email_address"];


if(isset($_POST['requestPO'])){

    $code = "PR";
    $get_month = date('m', strtotime("now"));

    $sqlLastID = "SELECT MAX(transactionIdBasis) as 'idnumber' FROM `payout_request` WHERE 1";//select the highest number_basis
    $getLastId = mysqli_query($conn, $sqlLastID);
    while($userRow = mysqli_fetch_assoc($getLastId)){
        $lastId = $userRow['idnumber'];
        $lastId++; //increment the number_basis
    }

    $getDateNow = new DateTime();
    $getYearNow  = $getDateNow->format('Y'); 
    $getMonthNow  = $getDateNow->format('m'); 
    $getDateNow  = $getDateNow->format('d'); 
    $getDateNowReal = new DateTime();
    $FullDateOfthisDay = $getDateNowReal->format('Y-m-d'); 


    $transactionId = $code."-".$getYearNow."".$getDateNow."".$getMonthNow."".$lastId;


    $DayNow = new DateTime(); 
                        $day  = $DayNow->format('D'); 
                        if($day !="Mon"){
                            echo "<script>alert('You can only request payout every Monday') </script>";

                        }
                        else if($totalBalance<1000){
                            echo "<script>alert('You don't have enough balance to request a payout. ₱ 1000.00 is the minimum amount.') </script>";

                        }
                        else {

                            $amount = $_POST['POAmount'];
                            $modeOfPayment = $_POST['modeOfPO'];
                        
                            $sqlInsertRequest= "INSERT INTO `payout_request`(`date`,`transaction_id`, `member_id`, `member_name`, `amount`, `mode_of_payment`, `status`, `transactionIdBasis`) VALUES ('$FullDateOfthisDay','$transactionId','$member_id','$fname $lname','$amount','$modeOfPayment','pending','$lastId')";
                          $insertRequest =   mysqli_query($conn, $sqlInsertRequest);
                                if($insertRequest){
                                    echo "<script>alert('You have successfully requested a payout!') </script>";
                                }
                                else{
                                    echo "<script>alert('Please try again!') </script>";
                        
                                }

                        }
 
}



// code for getting the payout transaction//
$tablePayout="payout_request";
$columnsTransaction= ['transaction_id','date','member_id','member_name','amount','mode_of_payment' ,'status'];
$fetchDataPayout= fetch_transaction($db, $tablePayout, $columnsTransaction);


function fetch_transaction($db, $tablePayout, $columnsTransaction){


 if(empty($db)){
  $msg= "Database connection error";
 }elseif (empty($columnsTransaction) || !is_array($columnsTransaction)) {
  $msg="columns Name must be defined in an indexed array";
 }elseif(empty($tablePayout)){
   $msg= "Table Name is empty";
}else{
$columnName = implode(", ", $columnsTransaction);
$member_id = $_SESSION["member_id"];
$query = "SELECT * FROM `payout_request` WHERE `member_id` = '$member_id' ORDER BY `transaction_id` DESC";

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
// end of code for getting the payout transaction//



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/styles.css">
    <!-- <link rel="stylesheet" href="./dist/output.css"> -->
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">




    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
    <link rel="stylesheet" href="../node_modules/tw-elements/dist/css/index.min.css" />

    <title>Arvie Direct Sales</title>
    <script src="../js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>
    <script src="../js/jquery-3.6.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>


    <!-- <link rel="stylesheet" href="./dist/output.css"> -->
    <!-- <link rel="stylesheet" href="http://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"> -->

    <title>Admin</title>

	
    <!-- <script src="http://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script> -->

    <title>Arvie Cosmetic & Skincare  ProductsTrading</title>

    <style>
		.dataTables_wrapper select,
		.dataTables_wrapper .dataTables_filter input {
			color: #4a5568;
			padding-left: 1rem;
			padding-right: 1rem;
			padding-top: .5rem;
			padding-bottom: .5rem;
			line-height: 1.25;
			border-width: 1px;
			border-radius: .25rem;
			border-color: #A1A1AA;
			background-color: #edf2f7;
		}

		table.dataTable.hover tbody tr:hover,
		table.dataTable.display tbody tr:hover {
			background-color: #ebf4ff;
		}

		.dataTables_wrapper .dataTables_paginate .paginate_button {
			font-weight: 700;
			border-radius: .25rem;
			border: 1px solid transparent;
		}

		.dataTables_wrapper .dataTables_paginate .paginate_button.current {
			color: #fff !important;
			box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
			font-weight: 700;
			border-radius: .25rem;
			background: #667eea !important;
			border: 1px solid transparent;
		}

		.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
			color: #fff !important;
			box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
			font-weight: 700;
			border-radius: .25rem;
			background: #667eea !important;
			border: 1px solid transparent;
		}

		table.dataTable.no-footer {
			border-bottom: 1px solid #e2e8f0;
			margin-top: 0.75em;
			margin-bottom: 0.75em;
		}

		table.dataTable.dtr-inline.collapsed>tbody>tr>td:first-child:before,
		table.dataTable.dtr-inline.collapsed>tbody>tr>th:first-child:before {
			background-color: #667eea !important;
		}
        .dataTables_length label select{
            border: 1px solid #A1A1AA;
            padding-left: 20px;
            padding-right: 20px;
        }


        @media screen and (max-width: 1023px) {
            .user-code-content-container{
                min-height: calc(100vh - 65px);
            }
        }
        @media screen and (min-width: 1024px) {
            .user-code-content-container {
                width: calc(100vw - 256px);
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
            .content-container{
                min-height: calc(100vh - 73px);
            }
        }
        @media screen and (min-width: 1280px) {
            .user-code-content-container{
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
  <div class="content-container lg:flex lg:flex-row w-full">
    <div class="display-none lg:display-block lg:w-1/4 xl:w-1/5 2xl:w-1/5">
      <?php include_once "./user-nav.php"; ?>
    </div>
<!-- modal -->
<div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto" id="payoutModal" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-xl relative w-auto pointer-events-none">
                
                    <div class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
                    <div class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
                        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalScrollableLabel">
                        Payout Request
                        </h5>
                        <button type="button"
                        class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body relative p-4">
                        <?php 
                 
                        $DayNow = new DateTime(); 
                        $day  = $DayNow->format('D'); 
                        if($day !="Mon"){
                            echo "<h5 class='text-xl font-medium leading-normal text-gray-800'> Note: You can only request payout every Monday.</h5>";
                        }
                        if($totalBalance<1000){
                            echo "<h5 class='text-xl font-medium leading-normal text-gray-800'> Note: You don't have enough balance to request a payout. ₱ 1000.00 is the minimum amount.</h5>";
                        }
                        ?>
                    <h5 class="text-xl font-medium leading-normal text-gray-800" id="">
                        Your Total Balance is : <span> ₱ <?php $totalBalance2 = number_format($totalBalance, 2);echo $totalBalance2; //cedrick code?></span>
                        </h5>
                        <br>
                        <br>
                    <form action="payout.php" method="POST">
                    <div class="mb-3 xl:w-96">
        <label for="exampleFormControlInput2" class="form-label inline-block mb-2 text-gray-700 text-xl">Enter amount</label>
        <input type="number" name="POAmount" class=" form-control block w-full px-4 py-2  text-xl  font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="POAmount" placeholder="Please enter a valid amount">
      </div>
      <div class="mb-3 xl:w-96">
        <label for="exampleFormControlInput2" class="form-label inline-block mb-2 text-gray-700 text-xl">Mode of Payment</label>
        <select name="modeOfPO" class="form-select form-select-lg mb-3 appearance-none block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding bg-no-repeat border border-solid border-gray-300 rounded transition  ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" aria-label=".form-select-lg example">
          <option disabled selected="">Choose mode of payment</option>
          <option value="Cash">Cash</option>
          <option value="Gcash">Gcash</option>
          <option value="BPI">BPI</option>
      </select></div>
                    
                    </div>
                    <div
                        class="modal-footer flex flex-shrink-0 flex-wrap items-center justify-end p-4 border-t border-gray-200 rounded-b-md">
                        <button type="button"
                        class="inline-block px-6 py-2.5 bg-gray-400 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-gray-500 hover:shadow-lg focus:bg-gray-600 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-gray-600 active:shadow-lg transition duration-150 ease-in-out"
                        data-bs-dismiss="modal">
                        Close
                        </button>
                        <button type="submit" name="requestPO"
                        class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out ml-1">
                        Submit
                        </button>
                    </div>
                    </div>
                </form>
            </div>
        </div>


    <div class="user-code-content-container pt-20 px-6 pb-5 bg-emerald-100 w-full lg:w-3/4 xl:w-4/5 2xl:w-4/5">
        
        <!--Container-->
        <div class="container w-full mx-auto px-2">

            <!--Title-->
            <h1 class="font-sans font-bold text-black px-2 lg:mb-3 text-5xl text-center ">
                Payout Requests
            </h1>

            <!--Table-->
            <div id='recipients' class="p-8 mt-6 lg:mt-0 rounded-lg shadow bg-white">
                <table id="payoutTable" class="stripe hover nowrap row-border dt-body-center" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                    <thead>
                        <tr>
                            <th data-priority="1">Date</th>
                            <th data-priority="2">Tran. No.</th>
                            <th data-priority="3">Member Name</th>
                            <th data-priority="4">Amount</th>
                            <th data-priority="5">Mode</th>
                            <th data-priority="6">Status</th>
                            <th data-priority="7">Receipt</th>

                        </tr>
                    </thead>
                    <tbody>
                        <!-- i Loop lang yung data dito (Hindi pa approved)-->
                        <?php           
                            if(is_array($fetchDataPayout)){      
                         
                                foreach($fetchDataPayout as $data){
                                    $transaction_id = $data['transaction_id'];
                                    $date = $data['date'];

                                    $member_name = $data['member_name'];
                                    $amount = $data['amount'];
                                    $mode_of_payment = $data['mode_of_payment'];
                                    $status = $data['status'];
                                    $receipt = $data['receipt'];


                        ?>
                                                <tr>
                            <td class="text-center"><?php echo $date?></td>
                            <td class="text-center"><?php echo $transaction_id?></td>
                            <td class="text-center"><?php echo $member_name?></td>
                            <td class="text-center"><?php echo $amount?></td>
                            <td class="text-center"><?php echo $mode_of_payment?></td>
                            <td class="text-center"><?php echo $status?></td>
                            <td class="text-center">
                            <?php
                             if($receipt=="")
                             {echo "";
                             }else{
                                ?>
                                <a type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-base px-6 py-2.5 focus:outline-none" href="<?php echo $receipt;?>">View Receipt</a> <?php 
                            } ?>
                            </td>

                        </tr>
                             <?php
                                        
                                    }}else{

                                        }
                        ?>
                        <!-- end -->
                    </tbody>
                </table>
            </div>
            <!--/Table-->
            <button type="button" data-bs-toggle="modal" data-bs-target="#payoutModal" class="mb-2 w-full inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-normal uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">Request a Payout</button>
        </div>
        <!--/container-->

    </div>
    </>

    <script>
        $(document).ready(function(){
            $("#payout").addClass("bg-emerald-700");
            $("#payout").addClass("text-white");
            $("#payout").removeClass("text-gray-600");

            var table = $('#payoutTable').DataTable({
                responsive: true
            })
            .columns.adjust()
            .responsive.recalc();
        });
    </script>

</body>
</html>
