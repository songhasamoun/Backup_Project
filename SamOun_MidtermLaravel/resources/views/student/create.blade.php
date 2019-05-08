<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Midterm Laravel - Create Page</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
</head>
<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <h3 class="text text-center bg-success text-light p-2">Create Student</h3>       
                <hr>
                <form action="{{url('students')}}" method="post">
                @csrf
                @method('POST')
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" name="name" id="name" class="form-control" required placeholder="Enter student name">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" name="email" id="email" class="form-control" required placeholder="Enter student email">
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="text" name="gender" id="gender" class="form-control" required placeholder="Enter student gender">
                </div>
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" name="age" id="age" class="form-control" required placeholder="Enter student age">
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Create Student</button>
                    <a href="{{url('students')}}"class="btn btn-secondary">Cancel</a>
                </div>
                </form> 
            </div>
            <div class="col-2"></div>
        </div>
        
    </div>
</body>
</html>