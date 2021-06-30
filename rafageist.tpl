<html>
	<head>
		<title>Rafa Rodríguez (@rafageist)</title>
		<style>
			body {
				font-family: "Open Sans", Arial, sans-serif;
			}
			
			span.chip {
				margin-right: 5px;
			}
			
			span.chip2 {
				font-weight: bold;
				margin-right: 3px;
				padding: 2px;
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
				text-decoration: underline;
			}
			h3 {
				font-size: 12px !important;
			}
			h4 {
				font-size: 11px !important;
			}
			
			p.item {
				margin-bottom: 0px;
				margin-left: 5px;
				margin-top: 3px;
			}
			
			p.item2 {
				margin-left: 5px;
				margin-top: 3px;
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
								
							</td>
						</tr>
					</table>
					<p><a href="{$website}">{$website}</a> | <a href="mailto:{$email}">{$email}</a></p>
					(( skills ))
				</td>
				<td valign="top">
					(( education ))
					(( language ))
					(( experience ))
				</td>
			</tr>
		</table>
	
		(( events ))
		
		{{skills
		<h2>Skills</h2>
		<table>
			<tr>
			[$skills]
				<td width="50%" valign="top">
					<h3>{$name}</h3>
					[$details]<p class="item">{$value}</p>[/$details]
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
				<p class="item2"><b>{$date}: {$title}</b>,<br/>
				[$tags]<span class="chip">{$value}</span>[/$tags] <br/>
				[$roles]<span class="chip2">{$value}</span>[/$roles]
				?$links <br/>
				[$links]<a href="{$value}">{$value}</a>&nbsp;[/$links]
				$links?
				</p>
			[/$projects]
		[/$experience]
		experience}}

		{{events
		<h2>Events</h2>
		<table width ="100%">
			<tr>
			[$events]
				<td width="50%" valign="top">
				<b>{$date}: {$description}</b>, <i>{$location}</i>, [$links]<a href="{$value}">{$value}</a> &nbsp; [/$links]
				</td>
				{?( {$_order} % 2 === 0 )?} </tr><tr> {/?}
			[/$events]
			</tr>
		</table>
		events}}
	</body>
</html>
