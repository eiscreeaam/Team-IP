<?php
session_start();
?>


<?php 
require 'config.php';
if(!empty($_SESSION['name'])){
    
    $right_answer=0;
    $wrong_answer=0;
    $unanswered=0; 
  
   $keys=array_keys($_POST);
   $order=join(",",$keys);
   
   //$query="select * from questions id IN($order) ORDER BY FIELD(id,$order)";
  // echo $query;exit;
   
   $response=mysql_query("select id,answer from questions where id IN($order) ORDER BY FIELD(id,$order)")   or die(mysql_error());
   
   while($result=mysql_fetch_array($response)){
       if($result['answer']==$_POST[$result['id']]){
               $right_answer++;
           }else if($_POST[$result['id']]==5){
               $unanswered++;
           }
           else{
               $wrong_answer++;
           }
   }
   $name=$_SESSION['name'];  
   mysql_query("update users set score='$right_answer' where user_name='$name'");
?>
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
                Welcome: <b><?php 
                if(!empty($_SESSION['name'])){
                    echo $_SESSION['name'];
                }?></b>
               
            </p>
        </header>
        <div class="container result">
            <div class="row"> 
                    <div class='result-logo'>
                            <img src="image/Quiz_result.png" class="img-responsive"/>
                    </div>    
           </div>  
           <hr>   
           <div class="row"> 
                  <div class="col-xs-18 col-sm-9 col-lg-9"> 
                    <div class='result-logo1'>
                            <img src="image/cat.GIF" class="img-responsive"/>
                    </div>
                  </div>
                  
                  <div class="col-xs-6 col-sm-3 col-lg-3"> 
                     <a href="<?php echo BASE_PATH;?>" class='btn btn-success'>Start new Quiz!!!</a>                   
                     <a href="<?php echo BASE_PATH.'logout.php';?>" class='btn btn-success'>Logout</a>
                   
                       <div style="margin-top: 30%">
                        <p>TOTAL NO. OF RIGHT ANSWERS : <b><span class="answer"><?php echo $right_answer;?></span></b></p>
                        <p>TOTAL NO. OF WRONG ANSWERS : <b><span class="answer"><?php echo $wrong_answer;?></span></b></p>
                        <p>UNANSWERED QUESTIONS : <b><span class="answer"><?php echo $unanswered;?></span></b></p>                   
                       </div> 
                   
                   </div>
                    
            </div>    
            <div class="row">    
                    
            </div>
        </div>
        <footer>
            <p class="text-center" id="foot">
                &copy; <a href="https://www.facebook.com/pages/Aimless-Photography/245036752310514" target="_blank">Team IP </a>2014
            </p>
        </footer>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/jquery.validate.min.js"></script>

        

    </body>
</html>
<?php }else{
    
 header( 'Location: http://localhost/007/main.php' ) ;
      
}?>