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
<?php
  $connection=mysqli_connect('localhost', 'root', '', 'oswa_inv');
  if(!$connection)
  {
    die("Database Connection Failed");
  }
  
  $query="SELECT * FROM sales WHERE 1 ";
  $result2=mysqli_query($connection,$query);
  if(!$result2)
  {
    die("Query Failed". mysqli_error());
  }    

?>
<?php
  $connection=mysqli_connect('localhost', 'root', '', 'oswa_inv');
  if(!$connection)
  {
    die("Database Connection Failed");
  }

    $query="SELECT b.buyer_name,b.buyer_gst,p.name,s.qty,s.price,s.date FROM buyer b JOIN sales s ON (s.id = b.sale_id) JOIN products p ON (s.product_id = p.id)";
    $result3 = mysqli_query($connection,$query);

  if(!$result3)
  {
    die("Query Failed". mysqli_error());
  }    


?>
<?php include('buyer_function.php'); ?>
<?php buyer_insert();?>
<?php include_once('layouts/header.php'); ?>
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
          <span>Add Buyer</span>
        </strong>
      </div>
      <div class="panel-body">
        <form method="POST" action="">
          <div class="form-group">
            <input type="text" class="form-control" name="b_name" placeholder="Buyer Name">
            <input type="text" class="form-control" name="bcmp_name" placeholder="Enter Company Name" style=margin-top:15px;>
            <input type="text" class="form-control" name="b_gst" placeholder="Enter Gst Number" style=margin-top:15px;>
            <input type="text" class="form-control" name="b_phone" placeholder="Phone Number" style=margin-top:15px;>
            <input type="text" class="form-control" name="b_city" placeholder="City" style=margin-top:15px;>
            <select class="form-control" style=margin-top:15px; name="buyer-saleid">
              <option value="">Select Sale By Id</option>
                <?php
                  while($row=mysqli_fetch_assoc($result2))
                  {
                    $sale_id=$row['id'];
                    echo "<option value='$sale_id'>$sale_id</option>";
                  }
                  ?>
            </select>
            <input type="submit" name="add_buyer" class="btn btn-primary" value="Add Buyer" style=margin-top:15px;>
          </div>
      </div>
    </div>
  </div>
</div>
<div style=background-color:white;border:1px;>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th> Buyer name </th>  
          <th> Buyer Gst </th>  
          <th> Product name </th>  
          <th class="text-center" style="width: 15%;"> Quantity</th>
          <th class="text-center" style="width: 15%;"> Total </th>
          <th class="text-center" style="width: 15%;"> Date </th>
        </tr>
      </thead>
      <tbody>
      <?php
        while($row=mysqli_fetch_assoc($result3))
        {
          $tb_name=$row['buyer_name'];
          $tb_gst=$row['buyer_gst'];
          $tp_name=$row['name'];
          $ts_qty=$row['qty'];
          $ts_tot=$row['price'];
          $ts_date=$row['date'];
          echo "
          <td>$tb_name</td>
          <td> $tb_gst</td>
          <td>$tp_name</td>
          <td>$ts_qty</td>
          <td>$ts_tot</td>
          <td>$ts_date</td> 
          </tbody>
          ";
        }
        ?>
        </table>
  </div>  
  <button class="btn btn-primary" onClick="window.location.reload();">Update Table</button>
</form>
<?php include_once('layouts/footer.php'); ?>



          
                
              
            
        


