<?php
session_start();
include_once ("../includes/config/conn.php");
$db= $conn;

// code for getting the accounts//
$tableNameAccount="accounts";
$columnsAccounts= ['id', 'first_name','last_name','email_address','access'];
$fetchDataAccounts= fetch_data_Account($db, $tableNameAccount, $columnsAccounts);


function fetch_data_Account($db, $tableNameAccount, $columnsAccounts){


 if(empty($db)){
  $msg= "Database connection error";
 }elseif (empty($columnsAccounts) || !is_array($columnsAccounts)) {
  $msg="columns Name must be defined in an indexed array";
 }elseif(empty($tableNameAccount)){
   $msg= "Table Name is empty";
}else{
$columnName = implode(", ", $columnsAccounts);
$query = "SELECT * FROM `accounts` WHERE `access` = False";

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


if(isset($_GET['Approve'])){

    $accountId = $_GET['Approve'];

    $invitee="James Orozo";
    $inviteeId="13";
    $username="cedrickjames.orozo@cvsu.edu.ph";

    $sqlSelectAccount ="SELECT * FROM `accounts` WHERE `id` = '$accountId';";
    $resultAccount = mysqli_query($conn, $sqlSelectAccount);

    while($userRow = mysqli_fetch_assoc($resultAccount)){
        $fname = $userRow['first_name'];
        $lname = $userRow['last_name'];
        $inviteName = $fname." ".$lname;
        $email = $userRow['email_address'];
    }
    $sqlinsertInvite = "INSERT INTO `invites`(`name`, `idOfInvite` ,`invitee`,`inviteeID`) VALUES ('$inviteName','$accountId','$invitee','$inviteeId')";
    mysqli_query($conn, $sqlinsertInvite);
    
    $sqlGetTotalBalance= "SELECT * FROM `totalbalance` WHERE `userID` = '$inviteeId'";
    $resultTotalBalance = mysqli_query($conn, $sqlGetTotalBalance);
    
    $totalBalance = 0;
    while($userRow = mysqli_fetch_assoc($resultTotalBalance)){
        $totalBalance = $userRow['totalBalance'];
    }
    $updatedBalance = $totalBalance + 500;
    $sqlAddBalance= "UPDATE `totalbalance` SET `totalBalance`='$updatedBalance' WHERE `userID` = '$inviteeId'";
    mysqli_query($conn, $sqlAddBalance);

    $sqlinsertTransact= "INSERT INTO `transaction`(`type`,`userName`,`userId`, `inviteName`,`inviteeName`, `addedAmount`, `TotalBalance`) VALUES ('Direct Referral','$username','$inviteeId','$inviteName','$invitee','500','$updatedBalance')";
    mysqli_query($conn, $sqlinsertTransact);

    $sqlInsertUserInitialBalance= "INSERT INTO `totalbalance`(`userID`, `userName`, `totalBalance`) VALUES ('$accountId','$email','0');";
    mysqli_query($conn, $sqlInsertUserInitialBalance);

    $sqlUpdateAccess= "UPDATE `accounts` SET `access`= TRUE WHERE `id` = '$accountId'";
    mysqli_query($conn, $sqlUpdateAccess);

    
    $_SESSION['updatedBalance'] = $updatedBalance;

    $upline=$username;
    $uplineId=$inviteeId;

    for ($i = 1; $i<=10; $i++){

        $sqlGetInvitee= "SELECT * FROM `invites` WHERE `idOfInvite` = '$uplineId'";
        $resultInvitee = mysqli_query($conn, $sqlGetInvitee);
        
        $inviteeUpline = '';
        $inviteeID = '';

        while($userRow = mysqli_fetch_assoc($resultInvitee)){
            $inviteeUpline = $userRow['invitee'];
            $inviteeID = $userRow['inviteeID'];

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

      $sqlinsertTransact2= "INSERT INTO `transaction`(`type`,`userName`,`userId`, `inviteName`,`inviteeName`, `addedAmount`, `TotalBalance`) VALUES ('Indirect Referral','$inviteeUpline','$inviteeID','$inviteName','$invitee','10','$updatedBalance')";
      mysqli_query($conn, $sqlinsertTransact2);

      
      $uplineId = $inviteeID;
    }
       
    }

}

// cedie check codes

// $member_id_select = "SELECT member_id FROM accounts";
// $member_id_query = mysqli_query($conn, $member_id_query);
// $member_id_fetch = mysqli_fetch_all($member_id_query, MYSQLI_ASSOC);

// $idNum = array_map(function($member_id) {
//     return $member_id['member_id'];
// }, $member_id_fetch);

// $member_name_select = "SELECT GROUP_CONCAT(`first_name`, ' ',`last_name`) as full_name FROM accounts";
// $member_name_query = mysqli_query($conn, $member_name_query);
// $member_name_fetch = mysqli_fetch_all($member_name_query, MYSQLI_ASSOC);

// $memName = array_map(function($member_name) {
//     return $member_name['full_name'];
// }, $member_name_fetch);
// Array ng ID Number at Name
// $idNum = array("123123123", "456456456", "789789789");
// $memName = array("John Arian Malondras", "Kevin Roy Marero", "Cedrick James Orozo");

//test 2

    $member_id = $_POST['member_id'];
    $select_member_id ="SELECT * FROM accounts WHERE `member_id` = 'ADS10-1'";
    $query_member_id = mysqli_query($conn, $select_member_id);

    while($fetch_id = mysqli_fetch_assoc($query_member_id)){
        $id = $fetch_id['member_id'];
        $first_name = $fetch_id['first_name'];
        $last_name = $fetch_id['last_name'];
    }
    $full_name = "$first_name $last_name";

    $idNum = array($id);
    $memName = array($full_name);

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
    <!-- <link rel="stylesheet" href="http://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"> -->
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">
    <title>Admin</title>
    <script src="../js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="../node_modules/tw-elements/dist/js/index.min.js"></script>
    <!-- <script src="http://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script> -->
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
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
  <?php include_once "./admin-header.php"; ?>
  <div class="content-container lg:flex lg:flex-row w-full">
    <div class="display-none lg:display-block lg:w-1/4 xl:w-1/5 2xl:w-1/5">
      <?php include_once "./admin-nav.php"; ?>
    </div>
    <div class="user-code-content-container pt-5 px-6 pb-5 bg-emerald-100 w-full lg:w-3/4 xl:w-4/5 2xl:w-4/5">
        
        <!--Container-->
        <div class="container w-full mx-auto px-2">

            <!--Title-->
            <h1 class="font-sans font-bold text-black px-2 lg:mb-3 text-5xl text-center ">
                Codes
            </h1>

            <div class="relative text-center mt-3 lg:mt-1 h-10 lg:h-16">
            <button type="button" data-modal-toggle="generateModal" class="genCode m-auto lg:absolute lg:right-0 text-white bg-indigo-500 hover:bg-indigo-600 focus:ring-4 focus:ring-indigo-300 font-medium rounded-lg text-lg px-5 py-3 mr-2 mb-2 focus:outline-none">Generate New Codes</button>
            </div>

            <!-- Generate Code Modal -->
            <div id="generateModal" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 w-full md:inset-0 h-modal md:h-full">

                <!-- Error Message -->
                <div style="transform: translate(-50%, 0); z-index:99;" id="errorIDNum" class="hidden absolute top-24 left-1/2  flex items-center p-4 mb-4 w-full max-w-xs text-gray-500 bg-red-300 rounded-lg shadow" role="alert">
                    <div class="inline-flex flex-shrink-0 justify-center items-center w-8 h-8 text-red-500 bg-red-300 rounded-lg">
                        <svg aria-hidden="true" class="w-8 h-8" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        <span class="sr-only">Error icon</span>
                    </div>
                    <div class="ml-3 font-normal text-lg text-gray-900">Invalid ID Number!</div>
                    <button type="button" class="ml-auto -mx-1.5 -my-1.5 bg-gray-100 text-gray-800 hover:text-gray-900 rounded-lg focus:ring-2 focus:ring-gray-300 p-1.5 hover:bg-gray-100 inline-flex h-8 w-8" data-dismiss-target="#errorIDNum" aria-label="Close">
                        <span class="sr-only">Close</span>
                        <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                    </button>
                </div>

                <div class="relative p-4 w-full max-w-2xl h-full md:h-auto">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow">
                        <!-- Modal header -->
                        <div class="flex justify-between items-start p-4 rounded-t border-b">
                            <h3 class="text-xl font-semibold text-gray-900">
                                Generate New Codes
                            </h3>
                            <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center" data-modal-toggle="generateModal">
                                <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <form action="" class="p-6">
                            <div class="relative mb-6">
                                <label for="base-input" class="block mb-2 text-lg font-medium text-gray-900">ID Number</label>
                                <input type="search" id="id-search" list="idList" autocomplete="false" class="block p-4 w-full text-base text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500" required>
                                <button type="button" class="checkID text-white absolute right-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2">Check ID Number</button>
                                <datalist class="text-lg bg-blue-500" id="idList">
                                    <?php
                                        foreach($idNum as $x) {
                                            ?>
                                                <option value="<?php echo $x; ?>" class="bg-white"><?php echo $x; ?></option>
                                            <?php
                                        }
                                    ?> 
                                </datalist>
                            </div>
                            <div class="mb-6">
                                <label for="base-input" class="block mb-2 text-lg font-medium text-gray-900">Name</label>
                                <input type="text" id="name-input" readonly class="bg-gray-50 border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                            </div>
                            <div class="mb-6">
                                <label for="codeType" class="block mb-2 text-lg font-medium text-gray-900">Type</label>
                                <select id="codeType" class="bg-gray-50 border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                    <option value="DI" selected>Direct Invite</option>
                                    <option value="RA">Botanical</option>
                                    <option value="RB">Kapenato & Cereal</option>
                                </select>
                            </div>
                            <div class="mb-6">
                                <label for="base-input" class="block mb-2 text-lg font-medium text-gray-900">Count</label>
                                <input type="number" min="1" max="99" value="1" id="count-input" class="bg-gray-50 border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                            </div>
                        </form>
                        <!-- Modal footer -->
                        <div class="flex items-center p-6 space-x-2 rounded-b border-t border-gray-200">
                            <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Generate</button>
                            <button data-modal-toggle="generateModal" type="button" class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-blue-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Table-->
            <div id='recipients' class="p-8 mt-6 lg:mt-0 rounded-lg shadow bg-white">
                <table id="codeTable" class="stripe hover nowrap row-border dt-body-center" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                    <thead>
                        <tr>
                            <th data-priority="1">Date</th>
                            <th data-priority="2">Tran. No.</th>
                            <th data-priority="3">Member Name</th>
                            <th data-priority="4">Type</th>
                            <th data-priority="5">Code Count</th>
                            <th data-priority="6">View</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- i Loop lang yung data dito -->
                        <tr>
                            <td class="text-center">10/05/2022</td>
                            <td class="text-center"><?php echo json_encode($memName); ?> </td>
                            <td class="text-center">John Arian Malondras</td>
                            <td class="text-center">Botanical</td>
                            <td class="text-center">20</td>
                            <td class="text-center">
                                <button class="text-blue-500" data-tran-num="10050003" type="button" data-modal-toggle="viewModal">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 512 512" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)" fill="currentColor" stroke="none">
                                            <path d="M2486 5097 c-70 -40 -76 -63 -76 -302 0 -236 6 -260 69 -302 71 -48 175 -20 213 57 15 30 18 65 18 243 0 240 -8 270 -80 307 -51 26 -95 25 -144 -3z"/>
                                            <path d="M1345 4893 c-91 -23 -131 -132 -84 -226 47 -92 193 -343 213 -365 49 -55 134 -69 194 -32 44 27 76 98 67 148 -7 36 -202 389 -239 431 -37 41 -94 58 -151 44z"/>
                                            <path d="M3675 4886 c-16 -7 -39 -24 -51 -37 -37 -42 -232 -395 -239 -431 -9 -50 23 -121 67 -148 60 -37 145 -23 194 32 20 22 166 273 213 365 38 76 23 159 -38 202 -38 27 -107 35 -146 17z"/>
                                            <path d="M2320 3874 c-14 -2 -65 -9 -115 -15 -708 -86 -1481 -485 -2027 -1047 -236 -243 -236 -261 0 -504 526 -541 1204 -903 1938 -1035 137 -24 171 -27 429 -27 293 -1 340 3 579 50 516 102 1051 361 1521 737 132 106 426 400 454 454 47 93 25 137 -157 325 -570 586 -1337 972 -2107 1058 -83 9 -458 12 -515 4z m445 -313 c383 -79 681 -364 787 -752 19 -72 23 -109 23 -249 0 -140 -4 -177 -23 -249 -101 -371 -376 -647 -741 -743 -97 -25 -299 -35 -401 -19 -505 78 -870 502 -870 1011 0 498 350 917 845 1008 89 17 282 13 380 -7z m1150 -347 c248 -137 540 -352 740 -546 l110 -106 -55 -57 c-190 -197 -518 -442 -798 -599 -128 -72 -296 -150 -286 -133 5 6 27 41 50 77 93 146 161 322 189 490 19 122 19 330 -1 445 -29 168 -97 342 -188 485 -23 36 -45 71 -50 77 -9 16 160 -62 289 -133z m-2425 131 c0 -2 -20 -35 -44 -72 -63 -99 -103 -181 -141 -296 -47 -141 -65 -257 -65 -417 0 -264 67 -496 204 -710 23 -36 45 -70 49 -77 11 -17 -184 76 -321 153 -249 141 -518 342 -712 531 l-105 103 95 93 c260 254 622 506 943 658 82 38 97 43 97 34z"/>
                                            <path d="M2433 3055 c-226 -61 -383 -264 -383 -495 0 -279 231 -510 510 -510 329 0 577 318 495 635 -71 272 -356 441 -622 370z m205 -301 c78 -32 132 -111 132 -194 0 -113 -97 -210 -210 -210 -146 0 -250 155 -194 288 44 107 168 160 272 116z"/>
                                            <path d="M1525 860 c-35 -14 -70 -62 -157 -215 -119 -209 -128 -229 -128 -275 0 -133 163 -199 252 -102 38 41 236 394 243 434 9 50 -23 121 -67 148 -34 21 -105 26 -143 10z"/>
                                            <path d="M3452 850 c-44 -27 -76 -98 -67 -148 7 -40 205 -393 243 -434 49 -53 133 -60 194 -16 60 42 75 125 37 201 -47 92 -193 343 -213 365 -49 55 -134 69 -194 32z"/>
                                            <path d="M2479 627 c-63 -42 -69 -66 -69 -302 0 -239 6 -262 76 -302 49 -28 93 -29 144 -3 72 37 80 67 80 307 0 178 -3 213 -18 243 -25 50 -75 80 -132 80 -32 0 -58 -7 -81 -23z"/>
                                        </g>
                                    </svg>
                                </button>
                            </td>
                        </tr>
                        <!-- end -->

                        <tr>
                            <td class="text-center">10/04/2022</td>
                            <td class="text-center">RB-10040002</td>
                            <td class="text-center">Kevin Marero</td>
                            <td class="text-center">Kapenato & Cereal</td>
                            <td class="text-center">10</td>
                            <td class="text-center">
                                <button class="text-blue-500" data-tran-num="10040002" type="button" data-modal-toggle="viewModal">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 512 512" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)" fill="currentColor" stroke="none">
                                            <path d="M2486 5097 c-70 -40 -76 -63 -76 -302 0 -236 6 -260 69 -302 71 -48 175 -20 213 57 15 30 18 65 18 243 0 240 -8 270 -80 307 -51 26 -95 25 -144 -3z"/>
                                            <path d="M1345 4893 c-91 -23 -131 -132 -84 -226 47 -92 193 -343 213 -365 49 -55 134 -69 194 -32 44 27 76 98 67 148 -7 36 -202 389 -239 431 -37 41 -94 58 -151 44z"/>
                                            <path d="M3675 4886 c-16 -7 -39 -24 -51 -37 -37 -42 -232 -395 -239 -431 -9 -50 23 -121 67 -148 60 -37 145 -23 194 32 20 22 166 273 213 365 38 76 23 159 -38 202 -38 27 -107 35 -146 17z"/>
                                            <path d="M2320 3874 c-14 -2 -65 -9 -115 -15 -708 -86 -1481 -485 -2027 -1047 -236 -243 -236 -261 0 -504 526 -541 1204 -903 1938 -1035 137 -24 171 -27 429 -27 293 -1 340 3 579 50 516 102 1051 361 1521 737 132 106 426 400 454 454 47 93 25 137 -157 325 -570 586 -1337 972 -2107 1058 -83 9 -458 12 -515 4z m445 -313 c383 -79 681 -364 787 -752 19 -72 23 -109 23 -249 0 -140 -4 -177 -23 -249 -101 -371 -376 -647 -741 -743 -97 -25 -299 -35 -401 -19 -505 78 -870 502 -870 1011 0 498 350 917 845 1008 89 17 282 13 380 -7z m1150 -347 c248 -137 540 -352 740 -546 l110 -106 -55 -57 c-190 -197 -518 -442 -798 -599 -128 -72 -296 -150 -286 -133 5 6 27 41 50 77 93 146 161 322 189 490 19 122 19 330 -1 445 -29 168 -97 342 -188 485 -23 36 -45 71 -50 77 -9 16 160 -62 289 -133z m-2425 131 c0 -2 -20 -35 -44 -72 -63 -99 -103 -181 -141 -296 -47 -141 -65 -257 -65 -417 0 -264 67 -496 204 -710 23 -36 45 -70 49 -77 11 -17 -184 76 -321 153 -249 141 -518 342 -712 531 l-105 103 95 93 c260 254 622 506 943 658 82 38 97 43 97 34z"/>
                                            <path d="M2433 3055 c-226 -61 -383 -264 -383 -495 0 -279 231 -510 510 -510 329 0 577 318 495 635 -71 272 -356 441 -622 370z m205 -301 c78 -32 132 -111 132 -194 0 -113 -97 -210 -210 -210 -146 0 -250 155 -194 288 44 107 168 160 272 116z"/>
                                            <path d="M1525 860 c-35 -14 -70 -62 -157 -215 -119 -209 -128 -229 -128 -275 0 -133 163 -199 252 -102 38 41 236 394 243 434 9 50 -23 121 -67 148 -34 21 -105 26 -143 10z"/>
                                            <path d="M3452 850 c-44 -27 -76 -98 -67 -148 7 -40 205 -393 243 -434 49 -53 133 -60 194 -16 60 42 75 125 37 201 -47 92 -193 343 -213 365 -49 55 -134 69 -194 32z"/>
                                            <path d="M2479 627 c-63 -42 -69 -66 -69 -302 0 -239 6 -262 76 -302 49 -28 93 -29 144 -3 72 37 80 67 80 307 0 178 -3 213 -18 243 -25 50 -75 80 -132 80 -32 0 -58 -7 -81 -23z"/>
                                        </g>
                                    </svg>
                                </button>
                            </td>
                        </tr>

                        <tr>
                            <td class="text-center">10/03/2022</td>
                            <td class="text-center">DI-10030001</td>
                            <td class="text-center">Cedrick Orozo</td>
                            <td class="text-center">Direct Invite</td>
                            <td class="text-center">5</td>
                            <td class="text-center">
                                <button class="text-blue-500" data-tran-num="10030001" type="button" data-modal-toggle="viewModal">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 512 512" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)" fill="currentColor" stroke="none">
                                            <path d="M2486 5097 c-70 -40 -76 -63 -76 -302 0 -236 6 -260 69 -302 71 -48 175 -20 213 57 15 30 18 65 18 243 0 240 -8 270 -80 307 -51 26 -95 25 -144 -3z"/>
                                            <path d="M1345 4893 c-91 -23 -131 -132 -84 -226 47 -92 193 -343 213 -365 49 -55 134 -69 194 -32 44 27 76 98 67 148 -7 36 -202 389 -239 431 -37 41 -94 58 -151 44z"/>
                                            <path d="M3675 4886 c-16 -7 -39 -24 -51 -37 -37 -42 -232 -395 -239 -431 -9 -50 23 -121 67 -148 60 -37 145 -23 194 32 20 22 166 273 213 365 38 76 23 159 -38 202 -38 27 -107 35 -146 17z"/>
                                            <path d="M2320 3874 c-14 -2 -65 -9 -115 -15 -708 -86 -1481 -485 -2027 -1047 -236 -243 -236 -261 0 -504 526 -541 1204 -903 1938 -1035 137 -24 171 -27 429 -27 293 -1 340 3 579 50 516 102 1051 361 1521 737 132 106 426 400 454 454 47 93 25 137 -157 325 -570 586 -1337 972 -2107 1058 -83 9 -458 12 -515 4z m445 -313 c383 -79 681 -364 787 -752 19 -72 23 -109 23 -249 0 -140 -4 -177 -23 -249 -101 -371 -376 -647 -741 -743 -97 -25 -299 -35 -401 -19 -505 78 -870 502 -870 1011 0 498 350 917 845 1008 89 17 282 13 380 -7z m1150 -347 c248 -137 540 -352 740 -546 l110 -106 -55 -57 c-190 -197 -518 -442 -798 -599 -128 -72 -296 -150 -286 -133 5 6 27 41 50 77 93 146 161 322 189 490 19 122 19 330 -1 445 -29 168 -97 342 -188 485 -23 36 -45 71 -50 77 -9 16 160 -62 289 -133z m-2425 131 c0 -2 -20 -35 -44 -72 -63 -99 -103 -181 -141 -296 -47 -141 -65 -257 -65 -417 0 -264 67 -496 204 -710 23 -36 45 -70 49 -77 11 -17 -184 76 -321 153 -249 141 -518 342 -712 531 l-105 103 95 93 c260 254 622 506 943 658 82 38 97 43 97 34z"/>
                                            <path d="M2433 3055 c-226 -61 -383 -264 -383 -495 0 -279 231 -510 510 -510 329 0 577 318 495 635 -71 272 -356 441 -622 370z m205 -301 c78 -32 132 -111 132 -194 0 -113 -97 -210 -210 -210 -146 0 -250 155 -194 288 44 107 168 160 272 116z"/>
                                            <path d="M1525 860 c-35 -14 -70 -62 -157 -215 -119 -209 -128 -229 -128 -275 0 -133 163 -199 252 -102 38 41 236 394 243 434 9 50 -23 121 -67 148 -34 21 -105 26 -143 10z"/>
                                            <path d="M3452 850 c-44 -27 -76 -98 -67 -148 7 -40 205 -393 243 -434 49 -53 133 -60 194 -16 60 42 75 125 37 201 -47 92 -193 343 -213 365 -49 55 -134 69 -194 32z"/>
                                            <path d="M2479 627 c-63 -42 -69 -66 -69 -302 0 -239 6 -262 76 -302 49 -28 93 -29 144 -3 72 37 80 67 80 307 0 178 -3 213 -18 243 -25 50 -75 80 -132 80 -32 0 -58 -7 -81 -23z"/>
                                        </g>
                                    </svg>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                    <!-- <button class="viewCodeBtn" type="button" data-modal-toggle="viewModal"></button> -->
                </table>
            </div>
            <!--/Table-->
        </div>
        <!--/container-->

    </div>

    <script>
        $(document).ready(function(){
            $("#code").addClass("bg-emerald-700");
            $("#code").addClass("text-white");
            $("#code").removeClass("text-gray-600");

            jQuery(document).on( "click", ".viewBtn", function(){
                var tranNum = $(this).data('tran-num');
                var currUrl = new URL(window.location.href);
                window.location.href = currUrl + "?tranNum=" + tranNum;
            });
            
            jQuery(document).on( "click", ".closeBtn", function(){
                window.location.href = "./codes.php";
            });

            $('.genCode').click(function(){
                $('#id-search').val('');
                $('#id-search').focus();
                $('#name-input').val('');
                $('#codeType').prop('selectedIndex', 0);
                $('#count-input').val('1');
            });

            // Check ID Number
            $('.checkID').click(function(){
                var idNum = $('#id-search').val();
                var idNumArray = <?php echo json_encode($idNum); ?>;
                var memNameArray = <?php echo json_encode($memName); ?>;
                let indexNum = idNumArray.indexOf(idNum);
                if(indexNum == "-1"){
                    $('#errorIDNum').removeClass('opacity-0');
                    $('#errorIDNum').addClass('opacity-100');
                    $('#errorIDNum').removeClass('hidden');
                    $('#id-search').focus();
                }else{
                    $('#name-input').val(memNameArray[indexNum]);
                    $('#codeType').focus();
                }
            });

            $('#id-search').keydown(function(){
                $('#name-input').val('');
            });

            var table = $('#codeTable').DataTable({
                // 'columnDefs': [{ 'orderable': false, 'targets': 0 }],
                // 'aaSorting': [[1, 'desc']],
                responsive: true
            })
            .columns.adjust()
            .responsive.recalc();
        });
    </script>
    

    <!-- PHP For querying the codes -->
        <?php
            if(isset($_GET['tranNum'])){
                // Dito yung code sa pag query ng codes

                
                echo '
                    <script type="text/JavaScript">
                        $(document).ready(function(){
                            $(".viewCodeBtn").click();
                        });
                    </script>
                ';
            }
        ?>
    <!-- END -->

    <!-- View Modal -->
    <div id="viewModal" tabindex="-1" aria-hidden="false" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 w-full md:inset-0 h-modal md:h-full">
        <div class="relative p-4 w-full max-w-lg h-full md:h-auto">
            <!-- Modal content -->
            <div class="relative bg-white rounded-lg shadow">
                <!-- Modal header -->
                <div class="flex justify-between items-start p-4 rounded-t border-b">
                    <h3 class="text-xl font-semibold text-gray-900">
                        Codes for Transaction #1003001<br>
                        Date: 10/03/2022<br>
                        Member Name: Cedrick Orozo<br>
                        Code Type: Direct Invite<br>
                        Total: 5
                    </h3>
                    <button type="button" class="closeBtn text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center" data-modal-toggle="viewModal">
                        <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        <span class="sr-only">Close modal</span>
                    </button>
                </div>
                <!-- Modal body -->
                <div class="p-6 space-y-6">
                    <ul class="space-y-1 max-w-md list-inside text-gray-800 text-lg text-center">
                        <li class="flex items-center">
                            <svg class="w-4 h-4 mr-1.5 text-green-500 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path></svg>
                            DR10-QWER1234
                        </li>
                        <li class="flex items-center">
                            <svg class="w-4 h-4 mr-1.5 text-green-500 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path></svg>
                            DR10-Q1W2E3R4
                        </li>
                        <li class="flex items-center">
                            <svg class="w-4 h-4 mr-1.5 text-gray-400 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd"></path></svg>
                            DR10-1Q2W3E4R
                        </li>
                        <li class="flex items-center">
                            <svg class="w-4 h-4 mr-1.5 text-gray-400 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd"></path></svg>
                            DR10-F93M5HD8
                        </li>
                        <li class="flex items-center">
                            <svg class="w-4 h-4 mr-1.5 text-gray-400 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd"></path></svg>
                            DR10-73BL29DH
                        </li>
                    </ul>
                </div>
                <!-- Modal footer -->
                <div class="flex items-center p-6 space-x-2 rounded-b border-t border-gray-200">
                    <button data-modal-toggle="viewModal" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Close</button>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
