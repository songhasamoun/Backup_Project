<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Edit Page</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
</head>
<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <h3 class="text text-center bg-success text-light p-2">Edit Student</h3>       
                <hr>
                <form action="{{url('students').'/'.$student->id}}" method="post">
                @csrf
                @method('PATCH')
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" name="editName" id="name" class="form-control" required value="{{$student->name}}">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" name="editEmail" id="email" class="form-control" required value="{{$student->email}}">
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="text" name="editGender" id="gender" class="form-control" required value="{{$student->gender}}">
                </div>
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" name="editAge" id="age" class="form-control" required value="{{$student->age}}">
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Edit Student</button>
                    <a href="{{url('students')}}"class="btn btn-secondary">Cancel</a>
                </div>
                </form> 
            </div>
            <div class="col-2"></div>
        </div>
        
    </div>
</body>
</html>