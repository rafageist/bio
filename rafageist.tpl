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

<p>[$roles]<span class="role">{$value}</span>[/$roles]</p>

<p>
	<a href="{$website}">{$website}</a>
</p>


</body>
</html>
