<?php

function m_get_data() {
    $query = "SELECT * FROM employee";
    include 'connection.php';
    $result = mysqli_query($connection, $query);
    $rows = [];
    if($result && mysqli_num_rows($result)>0) {
        while($get_result_to_array = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $rows[] = $get_result_to_array;
        }
    }
    return $rows;
}

function m_insert_data() {
    if(isset($_POST['btn-add'])) {
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $title = $_POST['title'];
        $age = $_POST['age'];
        $yearofservice = $_POST['yearofservice'];
        $salary = $_POST['salary'];
        $perk = $_POST['perk'];
        $email = $_POST['email'];
        $departmentid = $_POST['departmentid'];

        $query = "INSERT INTO employee(firstname, lastname, title, age, yearofservice, salary, perks, email, departmentid) 
        VALUES ('$firstname', '$lastname', '$title',  '$age','$yearofservice', '$salary', '$perk', '$email', '$departmentid')";
        include 'connection.php';
        $result = mysqli_query($connection, $query);
        if($result) {
            return $result;
        }else {
            return "Can't Insert Into Database";
        }
    }
}

function m_delete_data() {
    $userId = $_GET['id'];
    echo $userId;
    $query = "DELETE FROM employee WHERE id = '$userId'";
    include 'connection.php';
    $result = mysqli_query($connection, $query);
    return $result;
}

function m_getupdate_data() {
    $id = $_GET['id'];
    $query = "SELECT * FROM employee WHERE id = '$id'";
    include 'connection.php';
    $result = mysqli_query($connection, $query);
    $rows = [];
    if($result && mysqli_num_rows($result)>0) {
        while($get_result_to_array = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $rows[] = $get_result_to_array;
        }
    }
    return $rows;
}
function m_edit_data() {
    if(isset($_POST['btn-update'])) {
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $title = $_POST['title'];
        $age = $_POST['age'];
        $yearofservice = $_POST['yearofservice'];
        $salary = $_POST['salary'];
        $perk = $_POST['perk'];
        $email = $_POST['email'];
        $departmentid = $_POST['departmentid'];
        $id = $_POST['id'];

        $query = "UPDATE employee SET firstname = '$firstname', lastname ='$lastname', title = '$title',
        age ='$age',  yearofservice='$yearofservice', salary='$salary', perks ='$perk',email='$email', departmentid = '$departmentid'
        WHERE id = '$id'";
        include 'connection.php';
        $result = mysqli_query($connection, $query);
        if($result) {
            return $result;
        }else {
            return "Can't Insert Into Database";
        }
    }
}
function validateLogin() {
    include 'connection.php';
    if(isset($_POST['but_submit'])){

        $uname = mysqli_real_escape_string($connection,$_POST['txt_uname']);
        $password = mysqli_real_escape_string($connection,$_POST['txt_pwd']);
    
        if ($uname != "" && $password != ""){
    
            $sql_query = "select count(*) as cntUser from user where username='".$uname."' and password='".$password."'";
            $result = mysqli_query($connection,$sql_query);
            $row = mysqli_fetch_array($result);
    
            $count = $row['cntUser'];
    
            if($count > 0){
                $_SESSION['uname'] = $uname;
                header('location:index.php?action=view');
            }else{
                header('location:index.php?action=login');
            }
        }
    }
}
function m_insert_user() {
    if(isset($_POST['btn-addUser'])) {
        $username = $_POST['username'];
        $name = $_POST['name'];
        $password = $_POST['password'];
        $verify_password = $_POST['verify_password'];
        if($password == $verify_password) {
            $query = "INSERT INTO user (username, name, password)
            VALUES ('$username', '$name', '$password')";
            include 'connection.php';
            $result = mysqli_query($connection, $query);
            if($result) {
                return $result;
            }else {
                return "Can't Insert Into Database";
            }
        }
    }
}