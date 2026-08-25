<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $numero1 = $_POST["numero1"];
    $numero2 = $_POST["numero2"];

    $soma = $numero1 + $numero2;

    echo "Resultado: " . $soma;
}
?>

<form method="post">
    <label>Número 1:</label>
    <input type="number" name="numero1" required>

    <br><br>

    <label>Número 2:</label>
    <input type="number" name="numero2" required>

    <br><br>

    <input type="submit" value="Somar">
</form>