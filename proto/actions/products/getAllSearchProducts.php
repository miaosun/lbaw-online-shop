<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once '../../config/init.php';
include_once $BASE_DIR . 'database/products.php';

    $page = intval(filter_input(INPUT_GET, 'page'));
    $items_per_page = intval(filter_input(INPUT_GET, 'ipp'));
    $position = ($page-1)*$items_per_page;

    $res = getProductsByNameJS(filter_input(INPUT_GET, 's'),$position,$items_per_page);

print_r(json_encode($res));