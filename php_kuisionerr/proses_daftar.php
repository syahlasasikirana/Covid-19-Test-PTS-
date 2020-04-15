<?php
include "config/koneksi.php";
$nama = $_POST['nama'];
$usia = $_POST['usia'];
$jk = $_POST['jk'];
$alamat = $_POST['alamat'];
if (empty($nama)){
echo "<script>alert('Nama tidak boleh kosong')</script>";
echo "<meta http-equiv='refresh' content='1 url=login.php'>";
}else
if (empty($usia)){
echo "<script>alert('Usia tidak boleh kosong')</script>";
echo "<meta http-equiv='refresh' content='1 url=login.php'>";
}else 
if(empty($jk)){
echo "<script>alert('Jenis kelamin tidak boleh kosong')</script>";
echo "<meta http-equiv='refresh' content='1 url=login.php'>";
}else 
if (empty($alamat)){
echo "<script>alert('Alamat tidak boleh kosong')</script>";
echo "<meta http-equiv='refresh' content='1 url=login.php'>";
}else{
$daftar = mysqli_query($konek, "INSERT INTO tb_user(nama, usia, jk, alamat) values ('$nama','$usia','$jk','$alamat')");
if ($daftar){
echo "<script>alert('Mulai test');document.location.href='pertanyaan.php'</script>";

}else{
echo "<script>alert('Maaf anda tidak bisa mulai test');document.location.href='login.php'</script>";
}
}
?>