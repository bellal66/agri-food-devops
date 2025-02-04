<?php
session_start();
?>
<?php include './header.php'; ?>

<section class="login-content" style="margin-top: -50px; margin-left: 50%;">
            <div class="logo">
            </div>
            <div class="login-box">
                <form class="login-form" action="signupForm.php" method="post">
                    <h3 class="login-head">Farmer Signup</h3>
                    <div class="form-group">
                        <label class="control-label">USERNAME</label>
                        <input class="form-control" name="username" type="text"  placeholder="User Name" autofocus required="1">
                    </div>
                    <div class="form-group">
                        <label class="control-label">PASSWORD</label>
                        <input class="form-control" name="password" type="password" placeholder="Password" required="1" autofocus>
                    </div>
                    <div class="form-group">
                        <label class="control-label">ADDRESS</label>
                        <textarea class="form-control" name="address" type="text" placeholder="Address" required="1" autofocus></textarea>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Warehouse</label>
                        <input class="form-control" name="warehouse" type="text" placeholder="Warehouse" required="1" autofocus list="warehouse">
                        <datalist id="warehouse">
                        	<?php
                                $query = "SELECT * FROM warehouse";
                                $result = $db->select($query);
                                if($result){
                                    while($resultt = $result->fetch_assoc()){
                                        ?>
                                        <option value="<?php echo $resultt['division'] ?>"></option>
                                        <?php
                                    }
                                }
                            ?>
                        </datalist>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Crop</label>
                        <input class="form-control" name="crop" type="text" placeholder="Crop" required="1" autofocus>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Agri-Land (Percent)</label>
                        <input class="form-control" name="agriLand" type="integer" placeholder="Agri Land" required="1" autofocus>
                    </div>
                    
                    <div class="form-group btn-container">
                        <button name="signup" class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN UP</button>
                    </div>
                </form>
                <?php
                if (isset($_SESSION['message'])) {
                    ?>
                    <div id="errorSignIn" class="alert alert-danger errorSignIn" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            ×</button>  <strong>  Opps !!</strong> <?php  echo $_SESSION['message'];?>!!
                    </div>
                    <?php
                   
                }
                unset($_SESSION['message']);
                ?>
                
            </div>
</section><br><br><br>
<style type="text/css">
.login-box {
	margin-top: 30px;
  position: relative;
  min-width: 350px;
  height: 670px;
  background-color: #fff;
  -webkit-box-shadow: 0px 29px 147.5px 102.5px rgba(0, 0, 0, 0.05), 0px 29px 95px 0px rgba(0, 0, 0, 0.16);
          box-shadow: 0px 29px 147.5px 102.5px rgba(0, 0, 0, 0.05), 0px 29px 95px 0px rgba(0, 0, 0, 0.16);
  -webkit-perspective: 800px;
          perspective: 800px;
  -webkit-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
}
</style>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
body{
	margin: 0;
	left: 0;
	top: 0;
	background-color: #eee;
}
.main-header{
	height: 90px;
	width: 100%;
	background: white;
}
.header-title{
	font-size: 30px;
	margin-left: 140px;
    padding-top: 25px;
}
.header-title-logo{
}
.header-option {
	float: right;
	margin-right: 80px;
	margin-top: -30px;
}
.header-option li{
	float: left;
	margin-left: 50px;
	list-style: none;
	font-size: 17px;
}
.active{
	color: green;
}
.monocrop-detail{
	margin-top: 25%;
	width: 100%;
}
.monocrop-list{
	margin-left: 10%;
}
.monocrop-list-one{
	height: 200px;
	width: 200px;
	float: left;
}
.monocrop-name{
	margin-top: -230px;
	margin-left: 55%;
	height: 60px;
	width: 60px;
	border-radius: 50%;
	background: #989898;
	font-weight: bold;
	text-align: center;
	float: left;
}
.monocrop-body{
	height: 200px;
	width: 200px;
	background: white;
	float: left;
}
.monocrop-body-detail{
	padding-top: 15px;
	margin-left: 10px;
}
a{
	text-decoration: none;
	color: black;
}
.assistance-header{
	margin-left: 5%;
	margin-top: 20px;
	width: 90%;
	height: auto;
	background: white;
}
.assistance-header-option{
	margin-left: 20px;
	padding-top: 20px;
	clear: both;
	font-size: 17px;
}
.assistance{
	float: left;
	margin-left: 10px;
	width: 130px;
	height: 40px;
	text-align: center;
	margin-top: 5px;
	padding-top: 15px;
	cursor: pointer;
}
.assistance-show{
	border-left: 1px solid black;
	border-right: 1px solid black;
	border-top: 1px solid black;
	background: #eee;
}
.assistance-header-option-detail{
	clear: both;
	margin-left: 30px;
	width: 90%;
	border-top: 1px solid #c2c2c2;
}
.assistance-header-option-detail2{
	clear: both;
	margin-left: 30px;
	width: 90%;
	border-top: 1px solid #c2c2c2;
	display: none;
}
.direct-contact-name{
	margin-left: 10%;
	width: 20%;
	float: left;
	font-size: 17px;
}
.direct-contact-box{
	height:  auto;
	margin-top: 30px;
	border-bottom: 1px solid #eee;
}
.direct-contact-detail{
	margin-left: 30%;
	font-size: 17px;
}
.monocrop-search{
	width: 100%;
	background: white;
}
.monocrop-search-bar{
	margin-left: 10%;
	padding-top: 50px;
	float: left;
}
.monocrop-search-detail{
	margin-left: 50%;
	padding-top: 30px;
}

</style>
