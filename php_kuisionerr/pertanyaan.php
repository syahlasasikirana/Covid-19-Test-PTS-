<html>
    <head>
        <title>Risk Assessment Application</title>
        <link rel="shortcut icon" href="image/virus.jpeg" />
    </head>
    <body>
        <center>
        <?php
            include 'config/koneksi.php';
            
            if(isset($_GET['ket']) && isset($_GET['i']))
            {
                if($_GET['i']==21)
                {
                    header("Location: surveys.php");
                }
            }
            
            if(empty($_GET['i']))
            {
                $i=1;
            }
            else
            {
                $i=$_GET['i']+1;
            }
            $query="SELECT pertanyaan FROM tb_pertanyaan WHERE id_pertanyaan=$i";
            $result=mysqli_query($konek, $query);
            $r=mysqli_fetch_array($result);
            echo $r['pertanyaan'];
            ?>
            
            <form>
                <input type="submit" name="ket" value="Iya" /> <input type="submit" name="ket" value="Tidak" />
                <input type="hidden" name="i" value="<?php echo $i ?>" />
            </form>
            <?php
                if(isset($_GET['ket']))
                {
                    if($_GET['ket']=='Iya')
                    {
                $i=$_GET['i'];
                $ket=$_GET['ket'];
                $query="INSERT INTO tb_status VALUES('$i','$ket')";
                mysqli_query($konek,$query);
                }
                }
        ?>
    </center>
    </body>
</html>