<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PHP MySQL MVC</title>
    <script src="views/jquery-1.9.1.js"></script>
    <script src="views/list.js"></script>
    <script src="views/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="views/bootstrap-3.3.7/css/bootstrap.min.css" media="all">
    <link rel="stylesheet" href="views/style.css">
</head>
<body data-gr-c-s-loaded="true">
    <div class="container">
        <legend class="header">
            <h3  class="pull">Employee Manager</h3 >
            <?php 
                if(isset($_SESSION['uname'])){ ?>
                    <a href="index.php?action=logout" class="float-right right btn btn-primary">Logout</a>
                <?php
                }
            ?>
        </legend>
    <?php 
        include "views/" .$data['page'] . ".php";
    ?>
    </div>
</body>
</html>