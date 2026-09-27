<?php
$db_host = 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'latihan';
$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
    die('Gagal terhubung MySQL:' . mysqli_connect_error());
} else {
    echo "Terkoneksi ke MySQL ! <br>";
}

$table_name = 'sales';

$sql = 'CREATE TABLE IF NOT EXISTS `' . $table_name . '`(
        `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
        `id_produk` int(11) NOT NULL,
        `tgl_transaksi` date NOT NULL,
        `kuantitas` tinyint(4) NOT NULL,
        `harga` int(11) NOT NULL,
        `id_pelanggan` int(11) NOT NULL,
        PRIMARY KEY (`id_transaksi`),
        KEY `id_produk` (`id_produk`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;';

$query = mysqli_query($conn, $sql);

if (!$query) {
    die('ERROR: Tabel '. $table_name . ' gagal dibuat: '. mysqli_error($conn));
}
echo 'Tabel ' . $table_name . ' berhasil dibuat! <br>';
$sql = "INSERT INTO `$table_name` (`id_transaksi`, `id_produk`, `tgl_transaksi`, `kuantitas`, `harga`, `id_pelanggan`)
        VALUES (1, 100, '2016-09-20', 8, 265000, 1),
               (2, 101, '2016-09-21', 5, 150000, 2),
               (3, 102, '2016-09-22', 10, 50000, 3),
               (4, 103, '2016-09-23', 7, 75000, 4),
               (5, 104, '2016-09-24', 12, 120000, 5);";
$query = mysqli_query($conn, $sql);
if (!$query) {
    die('ERROR: Data gagal ditambahkan ke tabel ' . $table_name . ': ' . mysqli_error($conn));
}
echo 'Data berhasil dimasukkan pada tabel ' . $table_name . '';
?>