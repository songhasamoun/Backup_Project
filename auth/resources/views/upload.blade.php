<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}} ">
</head>
<body>
    <br>
    <div class="container">
        <form action="{{url('/store')}} " method="post">
            @csrf
            <div class="form-group">
                <label for="upload">File upload</label>
                <input type="file" name="upload" required class="form-control-file" id="upload">
            </div>
            <div class="form-group">
                <button class="btn-primary btn-block" type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>