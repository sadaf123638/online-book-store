<?php
include("./connection.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Online Book Search System</title>
    <!-- links css bootstrap fonts -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="fonts/all.css">
</head>

<body>
    <!-- start navbar -->
    <div class="container-background">
        <nav class="navbar">
            <a class="navbar-brand" href="index.html">DevBook Finder</a>
        </nav>
    </div>
    <!-- End navbar -->

    <!-- Star devbook intro -->
    <div class="container devbook">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12"></div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="intro-devbook">
                    <h1> 🔹 Welcome to DevBook Finder</h1>
                    <p>DevBook Finder is a simple and user-friendly platform designed to help developers, students, and
                        programming enthusiasts quickly find books related to any programming language.

                        Just type the language you want to learn — like Python, Java, PHP, or JavaScript — and get a
                        curated list of useful books with details like title, author, and cover image.
                        Click the "Read Book" button to start reading instantly.

                        Whether you're starting your coding journey or exploring advanced topics, DevBook Finder makes
                        it easy to discover helpful resources — all in one place.</p>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12"></div>
        </div>
    </div>

    <!-- End devbook intro -->


    <!-- Start search form -->
    <div class="container-fluid search">
        <h3>Find Your Favorite Development Books</h3>
        <div class="search-box text-center">
            <form method="post" action="">
                <div class="form-group mb-3">
                    <input type="search" class="form-control" name="query" placeholder="Search books on any language"
                        required autocomplete="off">
                </div>
                <button type="submit" class="btn ">Submit</button>
            </form>
        </div>
    </div>
    <!-- End search form -->


    <!--Start fetching data with api -->

    <?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['query'])) {
        $search = urlencode($_POST['query']);
        $apiURL = "https://www.googleapis.com/books/v1/volumes?q=$search";

        $response = file_get_contents($apiURL);
        $data = json_decode($response, true);

        if (isset($data['items'])) {
            echo "<h3 class='mt-4 mb-3 fetchapi-heading'>Search Results for '<span>" . htmlspecialchars($_POST['query']) . "</span>'</h3>";

            echo "<div class='container'><div class='row justify-content-center'>";
            foreach ($data['items'] as $book) {
                $title = $book['volumeInfo']['title'] ?? 'No Title';
                $author = $book['volumeInfo']['authors'][0] ?? 'Unknown';
                $thumbnail = $book['volumeInfo']['imageLinks']['thumbnail'] ?? '';
                $readLink = $book['volumeInfo']['previewLink'] ?? '#';

                // Check if this title-author combo already exists
                $check = $conn->prepare("SELECT id FROM books WHERE title = ? AND author = ?");
                $check->bind_param("ss", $title, $author);
                $check->execute();
                $check->store_result();

                if ($check->num_rows === 0) {
                    $stmt = $conn->prepare("INSERT INTO books (title, author, thumbnail, link) VALUES (?, ?, ?, ?)");
                    $stmt->bind_param("ssss", $title, $author, $thumbnail, $readLink);
                    $stmt->execute();
                }

                // Show card (always show even if already in DB)
                echo "
            <div class='col-md-4 col-sm-6 col-12 mb-4 d-flex justify-content-center' >
               <div class='card book-card'>
            <img src='$thumbnail' class='card-img-top' alt='Thumbnail'>
              <div class='card-body'>
                <h5 class='card-title'>$title</h5>
                <p class='card-text'>Author: $author</p>
                <a href='$readLink' target='_blank' class='btn btn-primary'>Read Book</a>
              </div>
            </div>
            </div>
            ";
            }
            echo "</div></div>";
        } else {
            echo "<p>No books found for '$search'.</p>";
        }
    }

    ?>

    <!-- End fetching data with api -->


    <!-- Footer Start -->
    <div class="container-background mt-5">
        <footer class="bg-body-tertiary text-center text-lg-start">
            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2025 Copyright:
                <a class="text-body text-dark" href="">DevBook Finder</a>
            </div>
            <!-- Copyright -->
        </footer>
    </div>
    <!-- Footer End -->



    <!-- js link -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</body>

</html>