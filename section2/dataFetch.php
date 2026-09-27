<?php

$conn = null;
include __DIR__ . '/koneksi.php';

$sql = 'SELECT * FROM tamu';

$query = mysqli_query($conn, $sql);

echo '<html>
        <head>
            <title>Menampilkan Data Tabel MySQL (Menggunakan mysqli_fetch_array)</title>
            <style>
                body {font-family: tahoma, arial}
                table {border-collapse: collapse}
                th, td {font-size: 13px; border: 1px solid #DEDEDE; padding: 3px 5px; color: #303030}
                th {background: #CCCCCC; font-size: 12px; border-color:#B0B0B0}
                .subtotal td {background: #F8F8F8}
                .right{text-align: right}
            </style>
            </head>
            <body>
            <table>
                <tr>
                    <th>NAMA</th>
                    <th>ASAL KAMPUS ATAU SEKOLAH</th>
                    <th>ROLE </th>
                    <th>TERDAFTAR DI PNJ HOSTPOT</th>
                </tr>
                <thead>
                <tbody>';

while ($row = mysqli_fetch_array($query)) {
    echo "<tr>
            <td>".$row['nama']."</td>
            <td>".$row['asalKampusAtauSekolah']."</td>
            <td>".$row['role']."</td>
            <td>".($row['terdaftarPnjHotspot'] == 1 ? 'Ya' : 'Tidak')."</td>
        </tr>";
}


echo '
</tbody>
</table>
<button onclick="window.print()">Cetak</button>
<br>
<footer>
&copy; 2026 - Departemen Bidang Teknologi Informasi Komunikasi - Cemara Band | Jurusan Teknik Informatika dan Komputer - Politeknik Negeri Jakarta
</footer>
</body>
</html>
';

mysqli_free_result($query);
mysqli_close($conn);
?>