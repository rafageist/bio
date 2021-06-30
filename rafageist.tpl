<html>
	<head>
		<title>Rafa Rodríguez (@rafageist)</title>
		<style>
			body {
				font-family: "Open Sans", Arial, sans-serif;
			}
			
			span.role {
				background: #eeeee;
				margin: 5px;
				padding: 5px;
			}
			
			li.skill {
				
			}
		</style>
	</head>
	<body>
		<table width="90%" align="center">
			<tr>
				<td valign="top">
					<img src="{$avatar}" width="200">
				</td>
				<td valign="top">
					<h1>{$name}</h1>
					<p>{$resume}</p>
					<p>[$roles]<span class="role">{$value}</span>[/$roles]</p>
					<p><a href="{$website}">{$website}</a> | <a href="mailto:{$email}">{$email}</a></p>
				</td>
			</tr>
		</table>
		<table width="90%" align="center">
			
			<tr>
				<td valign="top" width="50%">
					(( skills ))
					(( language ))
					(( events ))
				</td>
				<td valign="top">
					(( education ))
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
		<h3>{$title}</h3>
		<p>{$date}</p>
		<p>{$type}</p>
		<p>Company: {$company} [$links]<a href="{$value}">{$value}</a>[/$links]</p>
		<p>[$roles]<span class="role">{$value}</span>[/$roles]</p>
		[/$experience]
		experience}}

		{{events
		<h2>Events</h2>
		[$events]
			<h3>{$description}</h3>
			<p>{$date}</p>
			<p><i>{$location}</i></p>
			<p>[$links]<a href="{$value}">{$value}</a>[/$links]</p>
		[/$events]
		events}}
	</body>
</html>
