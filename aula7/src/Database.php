<?php

namespace App;

use PDO;
use PDOException;

class Database
{
    private static ?PDO $connection = null;

    public static function getConnection(): PDO
    {
        if (self::$connection === null) {
            $host = 'localhost';
            $dbname = 'mysql';
            $user = 'root';
            $password = '';

            $dsn = "mysql:host=$host;dbname=$dbname;charset=utf8mb4";

            try {
                self::$connection = new PDO(
                    $dsn,
                    $user,
                    $password
                );

                self::$connection->setAttribute(
                    PDO::ATTR_ERRMODE,
                    PDO::ERRMODE_EXCEPTION
                );

                self::$connection->setAttribute(
                    PDO::ATTR_DEFAULT_FETCH_MODE,
                    PDO::FETCH_ASSOC
                );

            } catch (PDOException $e) {
                die('Erro na conexão: ' . $e->getMessage());
            }
        }

        return self::$connection;
    }
}
