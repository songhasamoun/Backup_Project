<h3 class="text text-center">Add Employee</h3>
<br>
<form class="form-horizontal" action="index.php?action=insert_data" method="POST">
  <div class="form-group">
    <label class="control-label col-sm-2" for="firstname">Firstname:</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="firstname" id="email" placeholder="Enter your firstname">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="lastname">Lastname:</label>
    <div class="col-sm-8">
      <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Enter lastname">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="lastname">Title:</label>
    <div class="col-sm-8">
      <input type="text" name="title" class="form-control" id="title" placeholder="Enter your position">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="age">Age:</label>
    <div class="col-sm-8">
      <input type="text" name="age" class="form-control" id="age" placeholder="Enter your age">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="year">YearOfService:</label>
    <div class="col-sm-8">
      <input type="text" name="yearofservice" class="form-control" id="year" placeholder="Enter your year of service">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="salary">Salary:</label>
    <div class="col-sm-8">
      <input type="text" name="salary" class="form-control" id="salary" placeholder="Enter your Salary">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="perk">Perks:</label>
    <div class="col-sm-8">
      <input type="text" name="perk" class="form-control" id="perk" placeholder="Enter your perk">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-8">
      <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email address">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="departmentid">DepartmentID:</label>
    <div class="col-sm-8">
      <input type="text" name="departmentid" class="form-control" id="departmentid" placeholder="Enter your Department ID">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-8">
      <button type="submit" name="btn-add" class="btn btn-primary">Submit</button>
      <a href="index.php?action=view" class="btn btn-info">Cancel</a>
    </div>
  </div>
</form>
