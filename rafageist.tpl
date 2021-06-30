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
				text-decoration: underline;
				margin-right: 3px;
			}
			
			li.skill {
				
			}
			
			img.avatar {
				margin:5px;	
				border-radius: 5px;
			}
			
			* {
				font-size: 11px;	
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
	<body onload="window.print();" style="background: gray;">
		<table width="800" align="center" style="background: white; padding: 20px;">
			<tr>
				<td valign="top" width="50%">
					<table width="100%" align="left">
						<tr>
							<td valign="top" width="50%">
								<img class="avatar" src="{$avatar}" width="90%">
							</td>
							<td valign="top">
								<p><i>{$resume}</i></p>
								<p>[$roles]<span class="chip">{$value}</span>[/$roles]</p>
								
							</td>
						</tr>
					</table>
					
					(( skills ))
				</td>
				<td valign="top">
					(( contact ))
					(( education ))
					(( language ))
					(( experience ))
				</td>
			</tr>
			<tr>
				<td colspan="2">
				(( events ))
				</td>
			</tr>
		</table>
	
		{{contact
		<h2>Contact</h2>
		<b>{$name}</b> 
		<p>{$company.role} of {$company.name}</p>
		<p>{$company.phone} | {$company.location}</p>
		<p><a href="{$website}">{$company.link}</a> | <a href="{$website}">{$website}</a> | <a href="mailto:{$email}">{$email}</a></p>
		contact}}
		
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
				[$tags]<span class="chip">{$value}</span> !$_is_last | $_is_last! [/$tags] <br/>
				[$roles]<span class="chip2">{$value}</span> !$_is_last | $_is_last! [/$roles]
				?$links <br/>
				[$links]<a href="{$value}">{$value}</a>&nbsp;[/$links]
				$links?
				</p>
			[/$projects]
		[/$experience]
		experience}}

		{{events
		<h2>Events</h2>
		<table width ="100%" align="center">
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
