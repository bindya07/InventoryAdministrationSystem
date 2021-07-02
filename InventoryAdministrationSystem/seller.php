<!-- <?php
  $page_title = 'All Seller';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
  
  $all_categories = find_all('categories')
?> -->
<!-- <?php
 if(isset($_POST['add_cat'])){
   $req_field = array('categorie-name');
   validate_fields($req_field);
   $cat_name = remove_junk($db->escape($_POST['categorie-name']));
   if(empty($errors)){
      $sql  = "INSERT INTO categories (name)";
      $sql .= " VALUES ('{$cat_name}')";
      if($db->query($sql)){
        $session->msg("s", "Successfully Added Categorie");
        redirect('categorie.php',false);
      } else {
        $session->msg("d", "Sorry Failed to insert.");
        redirect('categorie.php',false);
      }
   } else {
     $session->msg("d", $errors);
     redirect('categorie.php',false);
   }
 }
?> -->
<!-- <?php
include("includes/config.php");
?> -->
<head>
  <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
</head>

<?php include_once('layouts/header.php'); ?>
<?php
  $html_alert="<div class='alert alert-success' role='alert'>Sucessfully Added Seller</div>";
?>
<?php
    $connection=mysqli_connect('localhost', 'root', '', 'oswa_inv');
    if(!$connection)
    {
        die("Database Connection Failed");
    }

    if(isset($_POST['add_sel']))
    {
      $seller_name=$_POST['s_name'];
      $cmp_name=$_POST['cmp_name'];
      $gst_num=$_POST['gst'];
      $s_phone=$_POST['s_phone'];
      $s_city=$_POST['s_city'];

      $query="INSERT INTO seller VALUES('','$seller_name','$gst_num','$cmp_name','$s_phone','$s_city')";

      $result=mysqli_query($connection,$query);

      if(!$result)
        {
            die("Query Failed". mysqli_error());
        }
        else
        {
          echo $html_alert;
        }
    }
    

?>

  <div class="row">
    <div class="col-md-12">
      <?php echo display_msg($msg); ?>
    </div>
  </div>
    <div class="row">
      <div class="col-md-5">
        <div class="panel panel-default">
          <div class="panel-heading">
            <strong>
              <span class="glyphicon glyphicon-th"></span>
              <span>Add New Seller</span>
              </strong>
          </div>
        <div class="panel-body">
          <form method="POST" action="seller.php">
            <div class="form-group">
              
              <input type="text" class="form-control" name="s_name" placeholder="Seller Name">
              <input type="text" class="form-control" name="cmp_name" placeholder="Enter Company Name" style=margin-top:15px;>
              <input type="text" class="form-control" name="gst" placeholder="Enter Gst Number" style=margin-top:15px;>
              <input type="text" class="form-control" name="s_phone" placeholder="Phone Number" style=margin-top:15px;>
              <input type="text" class="form-control" name="s_city" placeholder="City" style=margin-top:15px;>
            </div>
              <button type="submit" name="add_sel" class="btn btn-primary">Add Seller</button>
              </form>
        
        </div>
      </div>
    </div>

<?php include_once('layouts/footer.php'); ?>




