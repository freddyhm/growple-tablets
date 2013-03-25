
<table border="1px">	
	<tr>
		<td>Total Views: <?php echo $metrics['total activity']; ?></td>
	</tr>
	<tr>
		<td>Total Engaged: <?php echo $metrics['total engaged']; ?></td>
	</tr>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td> Activities & Engagements</td>
	</tr>
	<tr>
		<th>Items</th>
		<th>Engagement</th>
		<th>Activities</th>
		
		<th>Conv</th>
	</tr>
	<?php foreach ($metrics['act and eng'] as $metric) { ?>
		<tr align="center">
			<td><?php echo $metric['name']; ?></td>
			<td><?php echo $metric['eng']; ?></td>
			<td><?php echo $metric['act']; ?></td>
			<td><?php echo $metric['conv']; ?></td>
		</tr>
	<? } ?>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Top Views</td>
	</tr>
	<tr>
		<th>Item</th>
		<th>Total</th>
		<th>Conv</th>
	</tr>
	<?php foreach ($metrics['top activity'] as $metric) { ?>
		<tr align="center">
			<td><?php echo $metric['name']; ?></td>
			<td><?php echo $metric['total']; ?></td>
			<td><?php echo $metric['conv']; ?></td>
		</tr>
	<? } ?>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Top Loved</td>
	</tr>
	<tr>
		<td>Total: 1000</td>
	</tr>
	<tr>
		<th>Item</th>
		<th>Total</th>
		<th>Conv</th>
	</tr>
	<?php foreach ($metrics['top loved'] as $metric) { ?>
		<tr align="center">
			<td><?php echo $metric['name']; ?></td>
			<td><?php echo $metric['total']; ?></td>
			<td><?php echo $metric['conv']; ?></td>
		</tr>
	<? } ?>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Top Unloved</td>
	</tr>
	<tr>
		<td>Total: 1000</td>
	</tr>
	<tr>
		<th>Item</th>
		<th>Total</th>
		<th>Conv</th>
	</tr>
	<?php foreach ($metrics['top unloved'] as $metric) { ?>
		<tr align="center">
			<td><?php echo $metric['name']; ?></td>
			<td><?php echo $metric['total']; ?></td>
			<td><?php echo $metric['conv']; ?></td>
		</tr>
	<? } ?>
</table>
<br><br>
<table border="1px">	
	<tr>
		<td>Top Unloved Comments</td>
	</tr>
	<tr>
		<td>Total: 100</td>
	</tr>
	<tr>
		<th>Item</th>
		<th>Comment</th>
		<th>Total</th>
	</tr>
	<?php foreach ($metrics['top unloved comments'] as $metric) { ?>
		<tr align="center">
			<td><?php echo $metric['item']; ?></td>
			<td><?php echo $metric['comment']; ?></td>
			<td><?php echo $metric['total']; ?></td>
		</tr>
	<? } ?>
</table>
<br><br>
