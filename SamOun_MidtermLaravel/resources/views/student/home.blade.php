<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Midterm Laravel</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
</head>
<body>
    <div class="container mt-4">
        <h3 class="text text-center bg-success text-light p-2">Home Page</h3>
        <a href="{{url('students/create')}}" class="btn btn-primary">Add new Student</a>
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
                @foreach ($students as $data)
                <tr>
                    <td>{{$data->id}}</td>
                    <td>{{$data->name}}</td>
                    <td>{{$data->email}}</td>
                    <td>{{$data->gender}}</td>
                    <td>{{$data->age}}</td>
                    <td>
                        <a href="students/{{$data->id}}/edit" class="btn btn-success btn-sm">Edit</a>
                        <a href="#" data-toggle="modal" data-target="#deleteModal" data-id="{{$data->id}}" data-name="{{$data->name}}" 
                            class="btn btn-danger btn-sm">Delete
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Delete Student?</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p class="sms"></p>
            </div>
            <div class="modal-footer">
                <form action="" id="formDelete" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                    <button type="submit" class="btn btn-primary">Yes</button>
                </form>
            </div>
          </div>
        </div>
      </div>
        <script src="{{asset('js/app.js')}}"></script>
      <script>
      $('#deleteModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var id = button.data('id')
        var name = button.data('name')
        var modal = $(this)
        modal.find('.sms').text('Are you sure to delete '+name+'?')
        $('#formDelete').attr('action','students/'+id)
    })
</script>
</body>
</html>