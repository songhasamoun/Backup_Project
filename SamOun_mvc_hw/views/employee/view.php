
<div id="users">
    <div class="col-md-12">
        <div class="pull-left">
            <input class="search" placeholder="Search" />
        </div>

        <div class="pull-right">
            <a href="index.php?action=add"><i class="glyphicon glyphicon-plus-sign" style="font-size:20px;"></i></a> &nbsp;
        </div>
    </div>
    <form action="employee.php" method="POST">
        <table class="table-bordered col-md-12">
            <th class="sort text-center">ID</th>
            <th class="sort text-center" data-sort="fname">Student Name</th>
            <th class="sort text-center" data-sort="age">Age</th>
            <th class="sort text-center" data-sort="salary">Salary</th>
            <th class="sort text-center">Action</th>
            <!-- IMPORTANT, class="list" have to be at tbody -->
            <tbody class="list">
                <?php 
                if($data['employee_data'] != "") {
                    $i = 1;
                    foreach($data['employee_data'] as $result) {
                ?>
                <tr>
                    <td><?php echo $i?></td>
                    <td><?php echo $result['firstname'] . " " . $result['lastname']?></td>
                    <td><?php echo $result['age']?></td>
                    <td><?php echo $result['salary']?></td>
                    <td>
                        <a href="index.php?action=viewdetail&id=<?php echo $result['id'];?>"><i class="glyphicon glyphicon-eye-open" style="color:green;"></i></a> &nbsp;
                        <a href="index.php?action=update&id=<?php echo $result['id'];?>"><i class="glyphicon glyphicon-edit" style="color:blue;"></i></a>&nbsp;
                        <a href="index.php?action=delete_data&id=<?php echo $result['id'];?>"><i class="glyphicon glyphicon-trash" style="color:red;"></i></a> 
                    </td>
                </tr>
                <?php
                    $i++;
                    }
                }else {
                    echo "<tr><td> colspan='6'>No record found...!</td></tr>";
                }
                ?>
            </tbody>
        </table>
    </form>
</div>

<script>
    var options = {
        valueNames: ['id', 'fname', 'age', 'salary']
    };

    var userList = new List('users', options);
</script>