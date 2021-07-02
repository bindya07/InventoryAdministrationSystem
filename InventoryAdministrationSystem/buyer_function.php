<?php
    
function buyer_insert(){
    $connection=mysqli_connect('localhost', 'root', '', 'oswa_inv');
    if(!$connection)
    {
      die("Database Connection Failed");
    }
    
    if(isset($_POST['add_buyer']))
    {
      $buyer_name=$_POST['b_name'];
      $bcmp_name=$_POST['bcmp_name'];
      $bgst_num=$_POST['b_gst'];
      $b_phone=$_POST['b_phone'];
      $b_city=$_POST['b_city'];
      $buyer_saleid=$_POST['buyer-saleid'];
      
      $query="INSERT INTO buyer VALUES('','$buyer_name','$bgst_num','$bcmp_name','$b_phone','$b_city','$buyer_saleid')";
      
      
      $result=mysqli_query($connection,$query);
      
      
      if(!$result)
      {
        die("Query Failed". mysqli_error());
      }
      
    }
}


    
?>