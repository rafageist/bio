<html>
	<head>
	<style>
		body {
			font-family: "Verdana";
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

<img src="{$avatar}" width="200">

<h1>{$name}</h1>
<p>{$resume}</p>
<p>[$roles]<span class="role">{$value}</span>[/$roles]</p>
<p><a href="{$website}">{$website}</a></p>
<p><a href="mailto:{$email}">{$email}</a></p>

<h2>Skills</h2>
	[$skills]
		<h3>{$name}</h3>
		<ul>
		[$details]
			<li class="skill">{$value}</li>
		[/$details]
		</ul>
	[/$skills]

<h2>Language</h2>
	<ul>
	[$languages]
		<li>{$name}: {$description}</li>
	[/$languages]
	</ul>
<h2>Education</h2>
<ul>
[$education]
	<li>{$date}: {$title}</li>
[/$education]
</ul>
<h2>Experience</h2>
[$experience]
<h3>{$title}</h3>
<p>{$date}</p>
<p>{$type}</p>
<p>Company: {$company} [$links]<a href="{$value}">{$value}</a>[/$links]</p>
<p>[$roles]<span class="role">{$value}</span>[/$roles]</p>
[/$experience]
<h2>Events</h2>
[$events]
	<h3>{$description}</h3>
	<p>{$date}</p>
	<p><i>{$location}</i></p>
	<p>[$links]<a href="{$value}">{$value}</a>[/$links]</p>
[/$events]
</body>
</html>
