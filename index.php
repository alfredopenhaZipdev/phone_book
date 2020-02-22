<?php
/**
 * Created by PhpStorm.
 * User: walker
 * Date: 2020-02-20
 * Time: 14:58
 */
require_once 'vendor/autoload.php';

use Dotenv\Dotenv;
$dotenv = Dotenv::createImmutable(__DIR__);
$dotenv->load();

echo 'Phone book';
