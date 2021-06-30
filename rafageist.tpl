<html>
	<head>
		<title>Rafa Rodríguez (@rafageist)</title>
		<style>
			body {
				font-family: "Open Sans", Arial, sans-serif;
			}
			
			span.chip {
				color: #eeeeee;
				margin-right: 5px;
			}
			
			span.chip2 {
				font-weight: bold;
				color: gray;
				color: white;
				margin-right: 5px;
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
			h4 {
				font-size: 12px !important;
			}
			
		</style>
	</head>
	<body>
		
		
		<table width="90%" align="center">
			<tr>
				<td valign="top" width="50%">
					<table width="100%" align="left">
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
		<table>
			<tr>
			[$skills]
				<td width="50%" valign="top">
					<h3>{$name}</h3>
					[$details]- {$value}<br/>[/$details]
				</td>
				{?( {$_order} % 2 === 0 )?} </tr><tr> {/?}
			[/$skills]
			</tr>
		</table>
		skills}}

		{{language
		<h2>Language</h2>
		[$languages]- {$name}: {$description} <br/>[/$languages]
		language}}

		{{education
		<h2>Education</h2>
		[$education]- {$date}: {$title}<br/> [/$education]
		education}}

		{{experience
		<h2>Experience</h2>
		[$experience]
			<h3>{$company}</h3>
			[$projects]
				<h4>{$date}: {$title}</h4>
				?$links
				<p>[$links]<a href="{$value}">{$value}</a>&nbsp;[/$links]</p>
				$links?
				<p>[$roles]<span class="chip2">{$value}</span>[/$roles]</p>
				<p>[$tags]<span class="chip">{$value}</span>[/$tags]</p>
			[/$projects]
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
