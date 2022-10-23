<?php $loginPage = false; ?>
<?php include "./includes/auth/signup.php"; ?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/styles.css">
    <!-- <link rel="stylesheet" href="./dist/output.css"> -->
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
    <title>Arvie Direct Sales - Sign Up</title>
    <script src="./js/tailwind-3.1.8.js"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <script src="./js/jquery-3.6.1.min.js"></script>
</head>
<body class="h-screen w-screen">

    <?php include_once "./header.php"; ?>

    
    <div class="container bg-white relative top-20 mx-auto w-11/12 max-w-sm md:max-w-xl">
        <div class="container shadow-xl p-5 rounded-lg">
            <h1 class="text-emerald-800 text-2xl text-center mb-5">Welcome to<br>Arvie Direct Sales</h1>
            <hr>

            <!-- Error Message (Normally Hidden)-->
            <div id="alert-border-2" class="hidden flex p-4 mb-4 bg-red-100 border-t-4 border-red-500 " role="alert">
                <svg class="flex-shrink-0 w-5 h-5 text-red-700" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clip-rule="evenodd"></path></svg>
                <div class="ml-3 text-sm font-medium text-red-700">
                Error Message na Malufet!
                </div>
                <button type="button" class="ml-auto -mx-1.5 -my-1.5 bg-red-100  text-red-500 rounded-lg focus:ring-2 focus:ring-red-400 p-1.5 hover:bg-red-200  inline-flex h-8 w-8"  data-dismiss-target="#alert-border-2" aria-label="Close">
                    <span class="sr-only">Dismiss</span>
                    <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                </button>
            </div>

            <!-- Sign up Form -->
            <form class="mt-5" action="signup.php" method="POST">
                <div class="mb-6">
                    <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">Referral Code</label>
                    <input type="search" id="id-search" name="ref_code" list="idList" autocomplete="false" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required>


                </div>
                <div class="relative mb-6">
                    <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">Sponsor</label>
                    <input type="text" id="name-input" name="sponsor" class="bg-gray-50 border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                    <button type="button" class="checkID text-white absolute right-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2">Check Referral Code</button>
                </div>
                <div class="grid gap-6 mb-6 md:grid-cols-2">
                    <div>
                        <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">First name</label>
                        <input type="text" id="first_name" name="first_name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                    </div>
                    <div>
                        <label for="last_name" class="block mb-2 text-sm font-medium text-gray-900 ">Last name</label>
                        <input type="text" id="last_name" name="last_name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                    </div>
                </div>
                <div class="mb-6">
                    <label for="address" class="block mb-2 text-sm font-medium text-gray-900 ">Address</label>
                    <input type="text" name="homeAddress" id="homeAddress" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                </div>
                <div class="mb-6">
                    <label for="birthday" class="block mb-2 text-sm font-medium text-gray-900 ">Birthday</label>
                    <input type="date" name="birthday" id="birthday" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" maxlength="11" required="">
                </div>
                <div class="mb-6">
                    <label for="contact_number" class="block mb-2 text-sm font-medium text-gray-900 ">Contact Number</label>
                    <input type="text" name="contact_number" id="contact_number" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" maxlength="11" required="">
                </div>
                <div class="mb-6">
                    <label for="email_address" class="block mb-2 text-sm font-medium text-gray-900">Email address</label>
                    <input type="email" name="email_address" id="email_address" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                </div>
                <div class="grid gap-6 mb-6 md:grid-cols-2">
                    <div>
                        <label for="sss_num" class="block mb-2 text-sm font-medium text-gray-900">SSS Number</label>
                        <input type="text" id="sss_num" name="sss_num" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                    </div>
                    <div>
                        <label for="tin_acct" class="block mb-2 text-sm font-medium text-gray-900 ">TIN</label>
                        <input type="text" id="tin_acct" name="tin_acct" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                    </div> 
                </div>
                <div class="mb-6">
                    <label for="pass" class="block mb-2 text-sm font-medium text-gray-900">Password</label>
                    <input type="password" name="pass" id="pass" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                </div> 
                <div class="mb-6">
                    <label for="confirm_pass" class="block mb-2 text-sm font-medium text-gray-900">Confirm password</label>
                    <input type="password" name="confirm_pass" id="confirm_pass" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required="">
                </div> 
                <div class="flex items-start mb-6">
                    <div class="flex items-center h-5">
                    <input id="remember" type="checkbox" value="" class="w-4 h-4 bg-gray-50 rounded border border-gray-300 focus:ring-3 focus:ring-blue-300" required="">
                    </div>
                    <label for="remember" class="ml-2 text-sm font-medium text-gray-900">I agree with the <a href="#" class="text-blue-600 hover:underline">terms and conditions</a>.</label>
                </div>
                <button type="submit" name="register"  class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focusr:ing-blue-300 font-medium rounded-lg text-sm w-full px-5 py-2.5 text-center">Sign Up</button>
            </form>
        </div>
        <p class="text-center mt-3 pb-5">Already have an account? <a href="./login.php" class="text-blue-700">Sign in</a></p>
    </div>



    <script>
        $(document).ready(function(){
            $('#phone').keyup(function () { 
                this.value = this.value.replace(/[^0-9\.]/g,'');
            });
        });
    </script>

</body>
</html>