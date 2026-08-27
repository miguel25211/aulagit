<?php

require_once __DIR__ . '/../vendor/autoload.php';

use App\Database;

$pdo = Database::getConnection();

echo "Conectado ao banco com sucesso!";
