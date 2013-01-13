<table border="1px">
	<?php foreach ($reports as $report) { ?>
		<tr>
			<td><?php echo $report['name']; ?></td>
			<td><?php echo $report['date']; ?></td>
		</tr>
		<tr>
			<th>Module</th>
			<th>Section</th>
			<th>Duration</th>
			<th>Engagement</th>
		</tr>
		<tr>
			<td>Major parts of the app</td>
			<td>Level</td>
			<td>Avg user time in section (seconds)</td>
			<td>% of users interacting with the section (excl. menu for overall app)</td>
		</tr>
		
		<?php foreach ($report['snapshots'] as $snapshot) { ?>
			<tr align="center">
				<td><?php echo $snapshot['module']; ?></td>
				<td><?php echo $snapshot['section']; ?></td>
				<td><?php echo $snapshot['duration']; ?></td>
				<td><?php echo $snapshot['engagement'] * 100 . '%'; ?></td>
			</tr>
		<?php } ?>
	<?php } ?>
</table>

