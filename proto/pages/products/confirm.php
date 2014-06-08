<?php
  include_once '../../config/init.php';
  include_once $BASE_DIR .'database/products.php';
  include_once   $BASE_DIR .'database/address.php' ;
  include_once   $BASE_DIR.'database/users.php';
  include_once   $BASE_DIR.'database/orders.php';


  $smarty->assign('no_cart', true);


  if (!isset($_POST['data']) )   header('Location: ' . $BASE_URL);
  $cart = json_decode($_POST['data']);

   $orderDetail['orderid'] = 'Confirmation';
   $orderDetail['buyername'] = $_SESSION['username'];

  $all_add = getBuyerAddress($_SESSION['email']);
  $temp = array_values($all_add);
  $address = array_shift($temp);

   $orderDetail['door_nr'] = $address['door_nr'];
   $orderDetail['formatted_address'] = $address['formatted_address'];
  $orderDetail['street'] = $address['street'];
  $orderDetail['postcode'] = $address['postcode'];

  $all_add2 = getAddressById($cart->address);
  $temp2 = array_values($all_add2);
  $address2 = array_shift($temp2);

  $user = getBuyerByEmail($_SESSION['email']);
   $orderDetail['email'] = $_SESSION['email'];
   $orderDetail['nif'] = $user['nif'];
   $orderDetail['nif'] = $user['nif'];

  $orderDetail['door_nr_2'] = $address2['door_nr'];
  $orderDetail['formatted_address_2'] = $address2['formatted_address'];
   $orderDetail['street_2'] = $address2['street'];
  $orderDetail['postcode_2'] = $address2['postcode'];
  $orderDetail['date_placed'] = date('d-m-Y');
  $transporter = getTransporter();
  $orderDetail['transportername'] = $transporter['name'];
  $orderDetail['orderstate'] = 'Waiting for confirmation';


  $orderLines = [];

$total = 0.0;
foreach($cart->items as $item) {
    $line = array();
    $line['title'] = $item->name;
    $line['price_per_unit'] = $item->price;
    $line['quantity'] = $item->quantity;
    $line['subtotal'] = $item->price * $item->quantity;
    $total += $item->price * $item->quantity;
    $orderLines[] = $line;
}

$orderDetail['shipping'] = 1.99;
$orderTotal['total'] = $total;


  $smarty->assign('orderDetail',$orderDetail);
  $smarty->assign('orderLines',$orderLines);
$smarty->assign('orderTotal',$orderTotal);



  $smarty->display('products/confirm.tpl');


?>