<html>
	<head>
		<title>Rafa Rodríguez (@rafageist)</title>
		<style>
			body {
				font-family: "Open Sans", Arial, sans-serif;
			}
			
			span.chip {
				background: #eeeeee;
				margin-right: 5px;
				padding: 5px;
				border-radius: 3px;
			}
			
			li.skill {
				
			}
			
			img.avatar {
				margin:5px;	
				border-radius: 5px;
			}
			
			* {
				font-size: 10px;	
			}
			
			h2 {
				font-size: 15px !important;
			}
		</style>
	</head>
	<body>
		<table width="90%" align="center">
			<tr>
				<td valign="top">
					<img class="avatar" src="{$avatar}" height="100">
				</td>
				<td valign="top">
					<h1>{$name}</h1>
					<p>{$resume}</p>
					<p>[$roles]<span class="chip">{$value}</span>[/$roles]</p>
					<p><a href="{$website}">{$website}</a> | <a href="mailto:{$email}">{$email}</a></p>
				</td>
			</tr>
		</table>
		
		<table width="90%" align="center">
			<tr>
				<td valign="top" width="50%">
					(( skills ))
					(( events ))
				</td>
				<td valign="top">
					(( education ))
					(( language ))
					(( experience ))
				</td>
			</tr>
		</table>

		{{skills
		<h2>Skills</h2>
			[$skills]
				<h3>{$name}</h3>
				<ul>
				[$details]
					<li class="skill">{$value}</li>
				[/$details]
				</ul>
			[/$skills]
		skills}}

		{{language
		<h2>Language</h2>
		<ul>
		[$languages]
			<li>{$name}: {$description}</li>
		[/$languages]
		</ul>
		language}}

		{{education
		<h2>Education</h2>
		<ul>
		[$education]
			<li>{$date}: {$title}</li>
		[/$education]
		</ul>
		education}}

		{{experience
		<h2>Experience</h2>
		[$experience]
			<h3>{$date}: {$title}</h3>
			<p>[$tags]<span class="chip">{$value}</span>[/$tags]</p>
			<p>for {$company}<br/>[$links]<a href="{$value}">{$value}</a>&nbsp;[/$links]</p>
			<p>[$roles]<span class="role">{$value}</span>[/$roles]</p>
		[/$experience]
		experience}}

		{{events
		<h2>Events</h2>
		[$events]
			<p><b>{$date}: {$description}</b>, <i>{$location}</i>, [$links]<a href="{$value}">{$value}</a> &nbsp; [/$links]</p>
		[/$events]
		events}}
	</body>
</html>
