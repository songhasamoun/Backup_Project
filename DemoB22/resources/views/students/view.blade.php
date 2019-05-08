<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
</head>
<body>
    <div class="container mt-4">
        <h1 class="text text-center">PNC Students</h1>
        <a href="{{url('students/create')}}" class="btn btn-primary">Create</a>
        <hr>
        <table class="table table-bordered table-hover">
            <thead class="table-light">
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
                @foreach ($students as $data)
                <tr>
                    <td>{{$data->id}}</td>
                    <td>{{$data->name}} </td>
                    <td>{{$data->email}}</td>
                    <td>{{$data->gender}}</td>
                    <td>{{$data->age}}</td>
                    <td>
                        <a href="{{url('students')}}/{{$data->id}}" class="btn btn-sm btn-success">View Detail</a>
                        <a href="{{url('students')}}/{{$data->id}}/edit " class="btn btn-sm btn-info">Edit</a>
                        <a href="#" class="btn btn-sm btn-danger">Delete</a>
                        
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>
</html>