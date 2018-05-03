<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<table>
	<tr>
		<th>No</th>
		<th>Username</th>
		<th>Password</th>
		<th>Level</th>
		<th>Aksi</th>
	</tr>

	<?php 
		$Nomor = 1;
		foreach ($tbuser as $row) {
		?>
	<tr>
		<td><?php echo $Nomor++; ?></td>
		<td><?php echo $row->username ?></td>
		<td><?php echo $row->password ?></td>
		<td><?php echo $row->level ?></td>
		<td><a href="<?php echo base_url('index.php/user/del/'.$row->id);?>"> Hapus	</a> | edit </td>
	</tr>
	<?php
		}
	 ?>
</table>

</body>
</html>