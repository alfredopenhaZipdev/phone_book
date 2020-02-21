<?php

header('Access-Control-Allowed-Origin: *');
header('Content-Type: Application/json');

use App\Config\Database;
use App\Models\User;

$database = new Database();
$db = $database->getConnection();

$user = new User($db);

$user->id = $_POST['id'];
$r = $user->delete();

$r = $r == false ? ['data' => []] : $r;
echo json_encode($r);