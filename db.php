<?php
include("config.php");

if (isset($_POST["submit"])) {
    $name = $_POST['name'];
    $age = $_POST['age'];
    $city = $_POST['city'];

    $sql = "INSERT INTO city(student_name, age, city) VALUES (:name, :age, :city)";
    $query = $conn->prepare($sql);
    $query->bindParam(':name', $name, PDO::PARAM_STR);
    $query->bindParam(':age', $age, PDO::PARAM_INT);
    $query->bindParam(':city', $city, PDO::PARAM_STR);
    
    if ($query->execute()) {
        $lastInsertId = $conn->lastInsertId();
        echo "Successfully inserted. Last inserted ID: $lastInsertId";
    } else {
        $error = $query->errorInfo();
        echo "Failed to insert. Error: " . $error[2];
    }
} else {
    echo "Submit data not received.";
}
?>
