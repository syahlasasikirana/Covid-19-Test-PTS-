<?php 
error_reporting(0);
include "config/koneksi.php";
?>
<html>
    <head>
        <title>Risk Assessment Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="image/virus.jpeg" />
    </head>
    <center>
    <body>
    <br>
        <table align="center">
  
              
                    
                            <div class="panel">
                            <h2>Risk Assessment Application</h2>
                           

                <?php
                    $query3="SELECT * FROM tb_user ORDER BY id_user DESC LIMIT 1";
                    $result=mysqli_query($konek, $query3);
                    $r=mysqli_fetch_array($result);
                ?>
                
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                    <div class="card-body">
                        
                        Nama : <?php echo $r['nama'];?>
                        <br>
                        Usia : <?php echo $r['usia'];?> 
                        <br>
                        Jenis Kelamin : <?php echo $r['jk'];?>
                        <br>
                        Alamat : <?php echo $r['alamat'];?>
                    </div>
                    </div>
                </div>
                    <div class="panel">
                        <h2>Hasil Test Anda</h2>
                    </div>
                  

                    <?php
                        $query="SELECT * FROM tb_status ORDER by id_pertanyaan ASC";
                        $result=mysqli_query($konek, $query);
                        $i=1;
                        while ($r=mysqli_fetch_array($result))
                        {
                            $tb_pertanyaan[$i]=$r['id_pertanyaan'];
                            $status[$i]=$r['status'];	
                            $i++;
                            $status[$r['id_pertanyaan']]=$r['status'];
                        }
                        $jawaban;
                        $a1;
                        $a2;
                        $a3;
                        $a4;
                        $a5;
                        $a6;
                        $a7;
                        $a8;
                        $a9;
                        $a10;
                        $b1;
                        $b2;
                        $b3;
                        $b4;
                        $b5;
                        $b6;
                        $b7;
                        $b8;
                        $b9;
                        $b10;
                        $b11;
                        if($status[1]=='Iya'){
                            $a1=1;
                        }else if($status[1]=='Tidak'){
                            $a1=0;
                        }
                        
                        if($status[2]=='Iya'){
                            $a2=1;
                        }else if($status[2]=='Tidak'){
                            $a2=0;
                        }
                        
                        if($status[3]=='Iya'){
                            $a3=1;
                        }else if($status[3]=='Tidak'){
                            $a3=0;
                        }
                        
                        if($status[4]=='Iya'){
                            $a4=1;
                        }else if($status[4]=='Tidak'){
                            $a4=0;
                        }
                        
                        if($status[5]=='Iya'){
                            $a5=1;
                        }else if($status[5]=='Tidak'){
                            $a5=0;
                        }
                        
                        if($status[6]=='Iya'){
                            $a6=1;
                        } else if($status[6]=='Tidak'){
                            $a6=0;
                        }
                        
                        if($status[7]=='Iya'){
                            $a7=1;
                        }else if($status[7]=='Tidak'){
                            $a7=0;
                        }
                        
                        if($status[8]=='Iya'){
                            $a8=1;
                        }else if($status[8]=='Tidak'){
                            $a8=0;
                        }
                        
                        if($status[9]=='Iya'){
                            $a9=1;
                        }else if($status[9]=='Tidak'){
                            $a9=0;
                        }

                        if($status[10]=='Iya'){
                            $a10=1;
                        }else if($status[10]=='Tidak'){
                            $a10=0;
                        }
                        
                        if($status[11]=='Iya'){
                            $b1=1;
                        }else if($status[11]=='Tidak'){
                            $b1=0;
                        }
                        
                        if($status[12]=='Iya'){
                            $b2=1;
                        }else if($status[12]=='Tidak'){
                            $b2=0;
                        }
                        
                        if($status[13]=='Iya'){
                            $b3=1;
                        }else if($status[13]=='Tidak'){
                            $b3=0;
                        }
                        
                        if($status[14]=='Iya'){
                            $b4=1;
                        }else if($status[14]=='Tidak'){
                            $b4=0;
                        }
                        
                        if($status[15]=='Iya'){
                            $b5=1;
                        }else if($status[15]=='Tidak'){
                            $b5=0;
                        }
                        
                        if($status[16]=='Iya'){
                            $b6=1;
                        }else if($status[16]=='Tidak'){
                            $b6=0;
                        }
                        
                        if($status[17]=='Iya'){
                            $b7=1;
                        }else if($status[17]=='Tidak'){
                            $b7=0;
                        }
                        
                        if($status[18]=='Iya'){
                            $b8=1;
                        }else if($status[18]=='Tidak'){
                            $b8=0;
                        }

                        if($status[19]=='Iya'){
                            $b9=1;
                        }else if($status[19]=='Tidak'){
                            $b9=0;
                        }

                        if($status[20]=='Iya'){
                            $b10=1;
                        }else if($status[20]=='Tidak'){
                            $b10=0;
                        }

                        if($status[21]=='Iya'){
                            $b11=1;
                        }else if($status[21]=='Tidak'){
                            $b11=0;
                        }

                        $jawaban=$a1+$a2+$a3+$a4+$a5+$a6+$a7+$a8+$a9+$a10+$b1+$b2+$b3+$b4+$b5+$b6+$b7+$b8+$b9+$b10+$b11;
                        if ($jawaban>=15) {
                            echo "Kesimpulan : Resiko Tinggi";
                            echo "<br>";
                            echo "Jumlah Jawaban Iya : ", $jawaban;
                        }
                        else if ($jawaban>=8) {
                            echo "Kesimpulan : Resiko Sedang";
                            echo "<br>";
                            echo "Jumlah Jawaban Iya : ", $jawaban;
                        }
                        else if($jawaban>=0){
                        
                            echo "Kesimpulan : Resiko Rendah";
                            echo "<br>";
                            echo "Jumlah Jawaban Iya : ", $jawaban;
                        }
                        ?> 
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                    <div class="card-body">
                    </div>
                    </div>
                </div>
            </div>
        </table>
                        
        <br>
        <form method="post">
            <input type="submit" name="selesai" value="Keluar" class="btn btn-primary"/>
        </form>
            <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                      <span>@syahlakiranaaa</span>
                    </div>

            </div>

        <?php
            if(isset($_POST['selesai']))
            {
                $query="DELETE from tb_status";
                mysqli_query($konek, $query);
                header("Location: pertama.php");
            }
        ?>
    </body>
</center>
</html>