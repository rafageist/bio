<html>
	<head>
	<style>
		body {
			font-family: Verdana;
		}
		
		span.role {
			background: #eeeee;
			margin: 5px;
			padding: 5px;
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
			<li>{$value}</li>
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

</body>
</html>
