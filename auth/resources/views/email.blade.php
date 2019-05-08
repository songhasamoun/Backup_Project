<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('css/app.css')}} ">
</head>
<body class="bg-dark">
    <div class="container mt-4">
        <div class="card shadow-lg">
            <div class="card-body">
                <a href="addStudent.php">
                    <i class="material-icons text-info" data-toggle="tooltip" data-placement="left" title="add student info">control_point</i>
                </a>
                <hr>
                <table class="table table-bordered">
                    <thead class="thead-light">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>Age</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <tr>
                            <td>1</td>
                            <td>Sam Oun</td>
                            <td>samoun.camdoc@gmail.com</td>
                            <td>Male</td>
                            <td>22</td>
                            <td>
                                <a href="#">
                                    <i class="material-icons text-info" data-toggle="tooltip" data-placement="left" title="Edit student info">edit</i>
                                </a>
                                <a href="#">
                                    <i class="material-icons text-danger" data-toggle="tooltip" data-placement="right" title="Delete student info">delete</i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Sam Oun</td>
                            <td>samoun.camdoc@gmail.com</td>
                            <td>Male</td>
                            <td>22</td>
                            <td>
                                <a href="#">
                                    <i class="material-icons text-info" data-toggle="tooltip" data-placement="left" title="Edit student info">edit</i>
                                </a>
                                <a href="#">
                                    <i class="material-icons text-danger" data-toggle="tooltip" data-placement="right" title="Delete student info">delete</i>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip(); 
        });
    </script>
</body>
</html>
