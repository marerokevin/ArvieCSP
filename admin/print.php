<?php
    session_start();

    require './includes/dompdf/vendor/autoload.php';

    include_once ("../includes/config/conn.php");

    use Dompdf\Dompdf;

$html = '   <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Summary Report</title>
            </head>
            <body>';

        $transaction = $_GET["transaction"];
        $transaction_select_code = "SELECT codetype, counter, ref_code, transaction_id from referral_codes WHERE generation_batch = '$transaction'";
        $transaction_query_code = mysqli_query($conn, $transaction_select_code);
        while ($specific_transaction = mysqli_fetch_assoc($transaction_query_code)) {

$html .= '  <div style="width: 12.5%; border: 1px solid black; line-height: 23px;">'.$specific_transaction['ref_code'].'</div>';
                    }  

$html .= '  </body>
            </html>';

$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('catalog #10 1/2 envelope','portrait');
$dompdf->render();
$dompdf->stream('"echo $transaction".pdf', ['Attachment' => 0]);
?>