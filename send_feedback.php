<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect and sanitize input data
    $name = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
    $email = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);
    $telp = filter_var($_POST["telp"], FILTER_SANITIZE_NUMBER_INT);
    $message = filter_var($_POST["message"], FILTER_SANITIZE_STRING);

    // Validate email
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        // Email details
        $to = "10220017@bsi.ac.id"; // Replace with your email
        $subject = "New Feedback from $name";
        $body = "Name: $name\nEmail: $email\n\nMessage:\n$message";

        // Headers
        $headers = "From: $email";

        // Send email
        if (mail($to, $subject, $body, $headers)) {
            echo "Thank you for your feedback!";
        } else {
            echo "Sorry, there was an error sending your feedback. Please try again later.";
        }
    } else {
        echo "Invalid email format.";
    }
} else {
    echo "Invalid request.";
}
