<?php
        
        $connection=mysqli_connect('localhost', 'root', '', 'oswa_inv');
        if(!$connection)
        {
            die("Database Connection Failed");
        }
        
        $query_2="SELECT * FROM seller";
        
        $result=mysqli_query($connection,$query_2);
        
        if(!$result)
        {
            die("Query Failed". mysqli_error());
        }
?>


<?php
        
        while($row=mysqli_fetch_assoc($result))
        {
            $sel_id=$row['id'];
            echo $sel_id;
        }

?>





















