<br><br>
<br><br>
<br><br>
<br><br>
<form method="get" action="<?php echo URL . 'report'; ?>">
<label>Start Date</label><input type="date" name="start"/>
<label>End Date</label><input type="date" name="end"/>
<input type="submit" />
</form>
<br><br>
<br><br>
<h1>Business Analytics</h1>
<table border="1px">	
	<tr>
		<td>Item Views: <?php echo $metrics['views']; ?></td>
	</tr>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Popular Items</td>
	</tr>
	<tr>
		<th>Items</th>
		<th>Loved x 2</th>
		<th>Views</th>
		<th>Total</th>
	</tr>
	<?php
	 foreach ($metrics['pop'] as $metric) { ?>
		<tr align="center">
			<td><?php echo $metric['name']; ?></td>
			<td><?php echo $metric['heart_total']; ?></td>
			<td><?php echo $metric['view_total']; ?></td>
			<td><?php echo $metric['new_total']; ?></td>
		</tr>
	<? } ?>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Top Unloved Comments</td>
	</tr>
	<tr>
		<th>Item</th>
		<th>Comment</th>
		<th>Total</th>
	</tr>
	<?php 
	foreach ($metrics['unloved'] as $metric) { 
		foreach ($metric as $key => $item) {
	?>
			<tr align="center">
				<td><?php echo $item['item_name']; ?></td>
				<td><?php echo $item['comment_name']; ?></td>
				<td><?php echo $item['total']; ?></td>
			</tr>
		<?php } ?>
	<?php } ?>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Q&A</td>
	</tr>
	
	<?php 
	foreach ($metrics['questions'] as $metric) { 
	?>
		<tr>
			<td><?php echo $metric['name']; ?></td>
		</tr>
		<tr>
			<th>Name</th>
			<th>Total</th>
		</tr>

	 <?php
		foreach ($metric['answers'] as $key => $answer) {
	?>
		<tr align="center">
			<td><?php echo $answer['name']; ?></td>
			<td><?php echo $answer['total']; ?></td>
		</tr>
		<?php } ?>
	<?php } ?>
</table>
<br><br>
<h1>App Analytics</h1>
<table border="1px">	
	<tr>
		<td>Item Engagement: <?php echo $metrics['engagement']; ?></td>
	</tr>
	<tr>
		<td>Item Conversion (%): <?php echo $metrics['conversion']; ?></td>
	</tr>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Modules</td>
	</tr>
	<tr>
		<th>Name</th>
		<th>Engagement</th>
		<th>Views</th>
		<th>Conversion (%)</th>
	</tr>
	<?php 
	foreach ($metrics['modules'] as $metric) { 
		?>
		<tr align="center">
			<td><?php echo $metric['name']; ?></td>
			<td><?php echo $metric['engagement']; ?></td>
			<td><?php echo $metric['views']; ?></td>
			<td><?php echo $metric['conversion']; ?></td>
		</tr>
	<?php } ?>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Items</td>
	</tr>
	<tr>
		<th>Name</th>
		<th>Engagement</th>
		<th>Views</th>
		<th>Conversion (%)</th>
	</tr>
	<?php 
	foreach ($metrics['items'] as $metric) { 
		?>
		<tr align="center">
			<td><?php echo $metric['name']; ?></td>
			<td><?php echo $metric['engagement']; ?></td>
			<td><?php echo $metric['views']; ?></td>
			<td><?php echo $metric['conversion']; ?></td>
		</tr>
	<?php } ?>
</table>