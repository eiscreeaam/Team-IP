<!DOCTYPE html>
<html>
    <head>
       <title>Best Answer Quiz</title>
        <meta name="viewport" content="initial-scale=0.87,maximum-scale=0.87,user-scalable=no" >
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet" media="screen">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="../../assets/js/html5shiv.js"></script>
        <script src="../../assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
	 <header>
            <p class="text-center">
                HIGH SCORE  
            </p>
        </header>
		
	<div class="container result">
	<div class="row"> 
                    <div class='result-logo'>
                            <img src="image/Quiz_result.png" class="img-responsive"/>
                    </div>    
           </div>  
		   <br />
		   
  <center>
    <table border=3px>
        <thead>
            <tr>
                <th>USERNAME</th>
                <th>SCORE</th>
            </tr>
        </thead>
        <tbody>
        <?php
            $connect = mysql_connect("localhost","root", "","");
            if (!$connect) {
                die(mysql_error());
            }
            mysql_select_db("quiz");
			$results = mysql_query("SELECT id,user_name,score FROM users ORDER by score DESC limit 0,10");
			while($row = mysql_fetch_array($results)) {
				$user_name = $row['user_name'];
				$score = $row['score'];
				?>
				<tr>
				<td><b><center><?php echo $user_name;?></b></center></td>
				<td><b><center><?php echo $score;?></b></center></td>
                </tr>

            <?php
            }
            ?>
						<div>
						</div>
        </tbody>
        </table>
		</center>
		</div>	
							<form action="logout.php">
							<br />
							 <button class="btn btn-success btn-block" type="submit" >
                                MAIN MENU
                            </button>	
							</form>

		 <footer>
            <p class="text-center" id="foot">
                &copy; <a href="https://www.facebook.com/pages/Aimless-Photography/245036752310514" target="_blank">Team IP </a>2014
            </p>
		
        </footer>
    </body>
</html>