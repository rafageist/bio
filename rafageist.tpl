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
	[$details]
		<p>{$value}</p>
	[/$details]
[$/skills]
</body>
</html>
