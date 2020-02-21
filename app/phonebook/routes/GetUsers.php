<?php
/**
 * Created by PhpStorm.
 * User: walker
 * Date: 2020-02-20
 * Time: 15:42
 */

header('Access-Control-Allowed-Origin: *');
header('Content-Type: Application/json');

require_once '../../../index.php';

use App\Models\User;
use App\Config\Database;

$database = new Database();
/** @var User $user */
$user = new User($database->getConnection());

$user->id = $_GET['id'];
$user->first_name = $_GET['last_name'];
$user->last_name = $_GET['last_name'];
$r = $user->get();

$r = $r == false ? ['data' => []] : $r;
echo json_encode($r);