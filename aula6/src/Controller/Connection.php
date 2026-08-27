<?php

namespace App\Controller;

use PDO;
use PDOException;

class Connection
{
    private static ?PDO $connection = null;

    public static function getConnection(): PDO
    {
        if (self::$connection === null) {
            $host = 'localhost';
            $dbname = 'aula6';
            $user = 'root';
            $password = '';

            $dsn = "mysql:host=$host;dbname=$dbname;charset=utf8mb4";

            try {
                self::$connection = new PDO($dsn, $user, $password);

                self::$connection->setAttribute(
                    PDO::ATTR_ERRMODE,
                    PDO::ERRMODE_EXCEPTION
                );

                self::$connection->setAttribute(
                    PDO::ATTR_DEFAULT_FETCH_MODE,
                    PDO::FETCH_ASSOC
                );
            } catch (PDOException $e) {
                die('Erro na conexão com o banco de dados: ' . $e->getMessage());
            }
        }

        return self::$connection;
    }
}
