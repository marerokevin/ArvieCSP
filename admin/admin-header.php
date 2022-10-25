<nav class="navbar px-4 py-2.5 sm:pt-2.5 bg-emerald-800 fixed w-full z-50 top-0 left-0 border-b border-gray-600 sticky">
  <div class="flex flex-wrap justify-between items-center w-full">

    <div class="w-2/6 md:hidden flex">
        <button data-collapse-toggle="navbar-sticky" type="button" class="burger-button inline-flex items-center p-2 text-sm text-white rounded-lg focus:outline-none" aria-controls="navbar-sticky" aria-expanded="false">
                <!-- <span class="sr-only">Open main menu</span> -->
                <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
        </button>
    </div>

    <div class="w-2/6 h-full text-center md:text-left">
        <a href="../index.php" class="inline-block align-middle">
            <img src="../images/logo.jpg" class="h-9 md:h-11" alt="Logo">
            <span class="self-center text-l font-semibold whitespace-nowrap text-white"></span>
        </a>
    </div>

    <div class="w-2/6 md:order-2">
        <div class="grid justify-items-end <?php if($loginPage == true){ echo 'hidden';} ?>">
        </div>
            
        <button id="dropdownAvatarNameButton" data-dropdown-toggle="dropdownAvatarName" class="float-right flex items-center text-sm font-medium text-neutral-400 rounded-full hover:text-white md:mr-0" type="button">
            <span class="sr-only">Open user menu</span>
            <img class="w-11 h-11 rounded-full" src="../images/user/profile-pic/default-pic.png" alt="user photo">
            <svg class="w-4 h-4 mx-1.5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button>

        <!-- Dropdown menu -->
        <div id="dropdownAvatarName" class="hidden z-10 w-44 bg-white rounded divide-y divide-gray-300 drop-shadow-xl" style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 352px);" data-popper-reference-hidden="" data-popper-escaped="" data-popper-placement="bottom">
            <div class="py-3 px-4 text-sm text-gray-900">
            <div class="font-medium "><?php echo $_SESSION["first_name"]." ". $_SESSION["last_name"];?></div>
            <div class="truncate"><?php echo $_SESSION["email_address"];?></div>
            </div>
            <ul class="py-1 text-sm text-gray-700" aria-labelledby="dropdownInformdropdownAvatarNameButtonationButton">
            <li>
                <a href="<?php if($admin==true){echo 'location: ./admin/index.php';}else{echo 'location: ./user/index.php';} ?>" class="block py-2 px-4 hover:bg-gray-200 bg-gray-300">Dashboard</a>
            </li>
            <li>
                <a href="./members.php" class="block lg:hidden py-2 px-4 hover:bg-gray-200 bg-gray-100">Members</a>
            </li>
            <li>
                <a href="./codes.php" class="block lg:hidden py-2 px-4 hover:bg-gray-200 bg-gray-100">Codes</a>
            </li>
            <li>
                <a href="#" class="block lg:hidden py-2 px-4 hover:bg-gray-200 bg-gray-100">Payout Request</a>
            </li>
            <li>
                <a href="#" class="block lg:hidden py-2 px-4 hover:bg-gray-200 bg-gray-100">Transactions</a>
            </li>
            <li>
                <a href="#" class="block lg:hidden py-2 px-4 hover:bg-gray-200 bg-gray-100">Edit Home Page</a>
            </li>
            <li>
                <a  data-bs-toggle="modal" data-bs-target="#exampleModalLg" class="block py-2 px-4 hover:bg-gray-200 bg-gray-100">Edit Rebates</a>
            </li>
            </ul>
            <div class="py-1">
            <a href="../includes/auth/signout.php" class="block py-2 px-4 text-sm text-gray-700 hover:bg-gray-200">Sign out</a>
            </div>
        </div>
    </div>

    <div class="w-full md:w-2/6 md:order-1 md:flex md:items-center">
        <div class="nav-items hidden justify-between items-center md:flex md:m-auto" id="navbar-sticky">
            <ul class="flex flex-col md:py-4 pt-6 pb-3 mt-3 bg-emerald-800 border-t border-gray-800 md:flex-row md:space-x-8 md:mt-0 md:text-sm md:font-medium md:border-0">
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 bg-emerald-700 rounded md:bg-transparent md:text-neutral-400 md:p-0" aria-current="page">Home</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 hover:text-white rounded hover:bg-emerald-700 md:hover:bg-transparent md:p-0">Products</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 hover:text-white rounded hover:bg-emerald-700 md:hover:bg-transparent md:p-0">About</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pr-4 pl-3 text-neutral-400 hover:text-white rounded hover:bg-emerald-700 md:hover:bg-transparent md:p-0">Contact</a>
                </li>
            </ul>
        </div>
    </div>
  </div>
</nav>






<!-- Code for Rebates Amount -->

<?php
 
 $tableNameRebates="rebatesamount";
 $columnsRebates= ['id', 'rebatesA','rebatesB'];
 $fetchDataRebates = fetch_data_WD($db, $tableNameRebates, $columnsRebates);
 
 
 function fetch_data_WD($db, $tableNameRebates, $columnsRebates){

   
  if(empty($db)){
   $msg= "Database connection error";
  }elseif (empty($columnsRebates) || !is_array($columnsRebates)) {
   $msg="columns Name must be defined in an indexed array";
  }elseif(empty($tableNameRebates)){
    $msg= "Table Name is empty";
 }else{
 $columnName = implode(", ", $columnsRebates);
 // $query = "SELECT * FROM `model`;";
 $query = "SELECT * FROM `rebatesamount`";
 
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
?>
<div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto" id="exampleModalLg" tabindex="-1" aria-labelledby="exampleModalLgLabel" aria-modal="true" role="dialog">
  <div class="modal-dialog modal-lg relative w-auto pointer-events-none">
    <div class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
      <div class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalLgLabel">
          Edit Rebates Amount
        </h5>
        <button type="button"
          class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
          data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body relative p-4">
      <div class="flex flex-col">
  <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
    <div class="py-2 inline-block min-w-full sm:px-6 lg:px-8">
      <div class="overflow-hidden">
        <table class="min-w-full">
          <thead class="border-b">
            <tr>
            <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                Level
              </th>
              <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                Botanical
              </th>
              <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                Kapenato
              </th>
            </tr>
          </thead>
          <tbody>
          <?php          
           if(is_array($fetchDataRebates)){      
                         $idNumber = 1;
                                 foreach($fetchDataRebates as $data){
                                    $level = $data['id'];
                                    $rebatesA = $data['rebatesA'];
                                    $rebatesB = $data['rebatesB'];
                                 

                                 ?>
                <tr class="border-b">
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                                    <?php echo $level; ?>
                </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                        <input type="number" name="rebatesA<?php echo $rebatesA; ?>" value="<?php echo $rebatesA;?>"
                        disabled class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                        <input type="number" name="rebatesA<?php echo $rebatesB; ?>" value="<?php echo $rebatesB;?>"class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
                    </td>
                </tr>
                  <?php 
                     $idNumber++; }}else{
                  }
                ?>

            <!-- <tr class="border-b">
              <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
              <input type="number" class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
              </td>
              <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
              <input type="number" class="form-control block px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out  m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInputPassword1" placeholder="">
              </td>
            </tr> -->
            
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
      </div>
      <div
        class="modal-footer flex flex-shrink-0 flex-wrap items-center justify-end p-4 border-t border-gray-200 rounded-b-md">
        <button type="button" class="px-6 py-2.5 bg-purple-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-purple-700 hover:shadow-lg focus:bg-purple-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-purple-800 active:shadow-lg transition duration-150 ease-in-out" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="px-6 py-2.5 bg-green-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-green-700 hover:shadow-lg focus:bg-green-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-green-800 active:shadow-lg  transition duration-150 ease-in-out ml-1">Edit</button>  
        <button type="button" class="px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg  transition duration-150 ease-in-out ml-1">Save changes</button>
      </div>
    </div>
  </div>
</div>


