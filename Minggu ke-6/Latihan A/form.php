<!DOCTYPE html>
<html lang="en">

<head>
    <title>Form Mahasiswa</title>
</head>

<body>
    <form action="next.php" method="post" class="input" >
        <label>NIM:</label>
        <input class="field"type="text" name="nim">

        <p><label>Program Studi</label></p>
        <p><select class="option" name="programstudi">
			<option value=" ">Pilih Data</option>
            <option value="Teknik Informatika S1">Teknik Informatika S1</option>
            <option value="Sistem Informasi S1">Sistem Informasi S1</option>
            <option value="Teknik Informatika D3">Teknik Informatika D3</option>
        </select></p>

        <p><label>Nilai Tugas:</label>
        <input class="field" type="text" name="nilai_tugas"></p>

        <p><label>Nilai UTS:</label>
        <input class="field" type="text" name="nilai_uts"><p>

        <p><label>Nilai UAS:</label>
        <input class="field" type="text" name="nilai_uas"></p>

        <label>Catatan Khusus</label>
        <div>
            <p><input type="checkbox" name="catatan[]" value="Kehadiran >= 70%" />Kehadiran >= 70%</p>
            <p><input type="checkbox" name="catatan[]" value="Interaktif di kelas" />Interaktif Di Kelas</p>
            <p><input type="checkbox" name="catatan[]" value="Tidak Terlambat Mengumpulkan Tugas" />Tidak Terlambat Mengumpulkan Tugas</p>
        </div>
		
        <button type="submit" name="kirim" class="button">Submit</button>
		
    </form>
</body>

</html>