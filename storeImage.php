<?php
    
    $img = $_POST['image'];
    $folderPath = "upload/";
  
    $image_parts = explode(";base64,", $img);
    $image_type_aux = explode("image/", $image_parts[0]);
    $image_type = $image_type_aux[1];
  
    $image_base64 = base64_decode($image_parts[1]);
    $fileName = uniqid() . '.png';
  
    $file = $folderPath . $fileName;
    file_put_contents($file, $image_base64);

    $name = $_POST['name'];
   

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "test";

    //Create connection
    $conn = new mysqli($servername, $username, $password,$dbname);

    //Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    
    //insert form data
    $sql = "INSERT INTO webcam (name, image) VALUES ('$name', '$fileName')";

    if ($conn->query($sql) === TRUE) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();

  
    //print_r($fileName);
  
?>