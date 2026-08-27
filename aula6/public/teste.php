<?php

require_once __DIR__ . '/../vendor/autoload.php';

use App\Database\Connection;

$pdo = Connection::getConnection();

echo "Conectado ao banco com sucesso!";
