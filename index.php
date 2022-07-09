<!-- Back-End Source Code -->
<?php
    $insert = false;
    if(isset($_POST['name'])){
        // Setting connection variables
        $server = "localhost";
        $username = "root";
        $password = "";

        // Creating a connection
        $connection = mysqli_connect($server, $username, $password);
        
        // Checking if the connection is successfully established or not
        if(!$connection){
            die("Connection to the database has failed for this reason : " . mysqli_connect_error());
        }
        // else{
        //     echo "A connection to the database is established successfully.";
        // }
        
        // Collecting post variables
        $name = $_POST['name'];
        $age = $_POST['age'];
        $gender = $_POST['gender'];
        $semester = $_POST['semester'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $other = $_POST['other'];
        $sql = "INSERT INTO `agratour_db`.`agratour` (`Name`, `Age`, `Gender`, `Semester`, `Phone No.`, `Email`, 
        `Other`, `Date`) VALUES ('$name', '$age', '$gender', '$semester', '$phone', '$email', 
        '$other', current_timestamp());";

        // Executing the query
        if($connection -> query($sql) == true){
            // Setting flag for successful insertion
            $insert = true;
        }
        else{
            echo "ERROR : $sql <br> $connection -> error";
        }
        
        // Closing the database connection
        $connection -> close();
    }
?>

<!-- Front-End Source Code -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NNDC CMSA Agra Tour 2022</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <img class="bg" src="background.jpg" alt="Tajmahal">
    <div class="container">
        <h1>Welcome to NNDC CMSA Agra Tour 2022 Registration Form</h1>
        <p><br>Welcome to this website. All the students of B.Sc. Computer Science of our college are
            hereby informed that the Department of Computer Science is going to organize a tour to Agra
            from November 27, 2022 to December 1, 2022. It is not an educational tour, but a tour where
            you will be able to enjoy the beauty of Agra with your classmates, professors and juniors.
            The fee is of 6500 Rs. Students will visit Taj Mahal, Fatehpur Sikri, Agra Fort, Mehtab Bagh
            & Jama Masjid. They will be staying in Hotel Amar Yatri Niwas. If you are interested then you
            have to provide your details in the form mentioned below to confirm your participation before
            November 10, 2022.</p>
        <?php
            if($insert == true){
                echo "<p class='submittext'><br>Thanks for submitting your response. We are very happy to see you joining
            us for this trip.</p>";
            }
        ?>

        <form action="index.php" method="post">
            <br>
            <input type="text" name="name" id="name" placeholder="Enter your name">
            <input type="text" name="age" id="age" placeholder="Enter your age">
            <input type="text" name="gender" id="gender" placeholder="Enter your gender">
            <input type="number" name="semester" id="semester" placeholder="Enter your semester">
            <input type="phone" name="phone" id="phone" placeholder="Enter your mobile number">
            <input type="email" name="email" id="email" placeholder="Enter your email address">
            <textarea name="other" id="other" cols="30" rows="6"
                placeholder="If you want to tell us something related to this trip, you can type it here."></textarea>
            <button class="btn">Submit</button>
        </form>
    </div>
</body>

</html>