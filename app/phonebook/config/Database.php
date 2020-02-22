<?php
/**
 * Created by PhpStorm.
 * User: walker
 * Date: 2020-02-20
 * Time: 14:52
 */

namespace App\Config;

use \PDO;

class Database
{
    private $pdoConnection;

    private $host;
    private $db;
    private $user;
    private $password;

    public function __construct()
    {
        $this->host = getenv('DB_HOST');
        $this->db = getenv('DB_DATABASE');
        $this->user = getenv('DB_USER');
        $this->password = getenv('DB_PASSWORD');
    }

    /**
     * @return PDO|null
     */
    public function getConnection()
    {
        $this->pdoConnection = null;
        $dataSourceName = 'mysql:host=' . $this->host . ';dbname=' . $this->db;
        try {
            $this->pdoConnection = new PDO($dataSourceName, $this->user, $this->password);
            $this->pdoConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage() . ' ->' . $e->getTraceAsString();
        }

        return $this->pdoConnection;
    }
}