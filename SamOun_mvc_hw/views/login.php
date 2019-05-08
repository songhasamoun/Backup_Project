<div class="container">
    <form method="post" action="index.php?action=loginValidation">
        <div id="div_login">
            <h1>Login</h1>
            <div>
                <input type="text" class="textbox" id="txt_uname" name="txt_uname" placeholder="Username" />
            </div>
            <div>
                <input type="password" class="textbox" id="txt_uname" name="txt_pwd" placeholder="Password"/>
            </div>
            <div>
                <input type="submit" value="Login" name="but_submit" id="but_submit" />
            </div>
            <a href="index.php?action=createUser" class="btn create_user btn-primary">Create User</a>
        </div>
    </form>
</div>