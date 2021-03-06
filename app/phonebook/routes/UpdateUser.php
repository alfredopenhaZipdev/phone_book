<?php

header('Access-Control-Allowed-Origin: *');
header('Content-Type: Application/json');

use App\Config\Database;
use App\Models\User;

$database = new Database();
$db = $database->getConnection();

$user = new User($db);

$user->first_name = $_POST['first_name'];
$user->last_name = $_POST['last_name'];
$user->emails = $_POST['emails'];
$user->phone_numbers = $_POST['phone_numbers'];

$r = $user->create();

$r = $r == false ? ['data' => []] : $r;
echo json_encode($r);