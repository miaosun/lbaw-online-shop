<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once('../../config/init.php');
include_once($BASE_DIR . 'database/departments.php');


$dep = filter_input(INPUT_GET, 'name');

$res = addDepartment($dep);

print_r($res);
