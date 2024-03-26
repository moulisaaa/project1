<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            alert('Successfully Registered');
        });
    </script>
<?php
// PHP code for processing form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $emailaddress = $_POST['emailaddress'];
    $contactnumber = $_POST['contactnumber'];
    $password = $_POST['password'];

    $conn = mysqli_connect('localhost', 'root', '', 'course_management_system');

    if ($conn) {
        // echo "Successful";
        $sql = "INSERT INTO users (firstname, lastname, emailaddress, contactnumber, password) VALUES ('$firstname', '$lastname', '$emailaddress', '$contactnumber', '$password')";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo "Data insertion successful";
        } else {
            die(mysqli_error($conn));
        }
    } else {
        die(mysqli_error($conn));
    }
}
?>
</body>
</html>
