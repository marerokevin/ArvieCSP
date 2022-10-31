<?php
session_start();
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
            <h1 class="font-sans font-bold text-black px-2 lg:mb-3 text-5xl text-center">
                Generated Codes
            </h1>

            <!-- Top Buttons -->
            <div class="relative text-center mt-3 lg:mt-1 h-10 lg:h-16">
                <a href="./codes.php" class="lg:absolute lg:left-0 text-white bg-[#2557D6] hover:bg-[#2557D6]/90 focus:ring-4 focus:ring-[#2557D6]/50 focus:outline-none font-medium rounded-lg text-lg px-5 py-2 text-center inline-flex items-center mr-2 mb-2">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mr-3">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 15L3 9m0 0l6-6M3 9h12a6 6 0 010 12h-3" />
                    </svg>
                    Back
                </a>
                <button type="button" class="lg:absolute lg:right-0 text-white bg-[#2557D6] hover:bg-[#2557D6]/90 focus:ring-4 focus:ring-[#2557D6]/50 focus:outline-none font-medium rounded-lg text-lg px-5 py-2 text-center inline-flex items-center mr-2 mb-2">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mr-3">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6.72 13.829c-.24.03-.48.062-.72.096m.72-.096a42.415 42.415 0 0110.56 0m-10.56 0L6.34 18m10.94-4.171c.24.03.48.062.72.096m-.72-.096L17.66 18m0 0l.229 2.523a1.125 1.125 0 01-1.12 1.227H7.231c-.662 0-1.18-.568-1.12-1.227L6.34 18m11.318 0h1.091A2.25 2.25 0 0021 15.75V9.456c0-1.081-.768-2.015-1.837-2.175a48.055 48.055 0 00-1.913-.247M6.34 18H5.25A2.25 2.25 0 013 15.75V9.456c0-1.081.768-2.015 1.837-2.175a48.041 48.041 0 011.913-.247m10.5 0a48.536 48.536 0 00-10.5 0m10.5 0V3.375c0-.621-.504-1.125-1.125-1.125h-8.25c-.621 0-1.125.504-1.125 1.125v3.659M18 10.5h.008v.008H18V10.5zm-3 0h.008v.008H15V10.5z" />
                    </svg>
                    Print
                </button>
            </div>

            <!-- Content -->
                <div class="bg-white rounded-xl p-6 shadow-lg">
                    <!-- Info -->
                    <?php
                        include_once ("../includes/config/conn.php");
                        
                        $transaction = $_GET["transaction"];
                        $transaction_select = "SELECT codetype, counter, ref_code, transaction_id from referral_codes WHERE generation_batch = '$transaction'";
                        $transaction_query = mysqli_query($conn, $transaction_select);
                    ?>
                    <h2 class="text-3xl font-extrabold text-bold text-gray-700">Info</h2>
                    <!-- <p class="mt-3 text-xl text-gray-700 font-bold">Member Name: <span class="font-semibold">John Arian Malondras</span></p> -->
                    <p class="mt-1 text-xl text-gray-700 font-bold">Type: 
                        <span class="font-semibold">
                            <?php
                            $single_transaction = mysqli_fetch_assoc($transaction_query);
                                    if ($single_transaction['codetype'] == "DI") {
                                        echo "Direct Sales";
                                    } elseif ($single_transaction['codetype'] == "RA") {
                                        echo "Botanical";
                                    } elseif ($single_transaction['codetype'] == "RB") {
                                        echo "Kapenato & Cereal";
                                    }
                            ?>
                        </span>
                    </p>
                    <p class="mt-1 text-xl text-gray-700 font-bold">Count: 
                        <span class="font-semibold">
                            <?php
                                echo $single_transaction['counter'];
                            ?>
                        </span>
                    </p>

                    <!-- Codes -->
                    <div class="px-20 py-10 text-3xl font-medium grid grid-cols-3 gap-5 text-gray-700 justify-items-center">
                    <?php
                        $transaction = $_GET["transaction"];
                        $transaction_select_code = "SELECT codetype, counter, ref_code, transaction_id from referral_codes WHERE generation_batch = '$transaction'";
                        $transaction_query_code = mysqli_query($conn, $transaction_select_code);
                        while ($specific_transaction = mysqli_fetch_assoc($transaction_query_code)) {

                            echo $specific_transaction['ref_code']; echo "<br>";

                        }
                    ?>
                    </div>
                </div>
            <!-- End Content -->
        </div>
        <!--/container-->

    </div>

    <script>
        $(document).ready(function(){
            $("#code").addClass("bg-emerald-700");
            $("#code").addClass("text-white");
            $("#code").removeClass("text-gray-600");

            

            var table = $('#codeTable').DataTable({
                // 'columnDefs': [{ 'orderable': false, 'targets': 0 }],
                // 'aaSorting': [[1, 'desc']],
                responsive: true
            })
            .columns.adjust()
            .responsive.recalc();
        });
    </script>
    


</body>
</html>
