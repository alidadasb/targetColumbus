<div id="Navbar" class="navbar navbar-fixed-top navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
			<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
			</a>

			<a class="brand" href="${createLink(uri: '/')}">
				<img class="logo" src="${resource(plugin: 'kickstart-with-bootstrap', dir:'kickstart/img',file:'grails.png')}" alt="${meta(name:'app.name')}" />
				${meta(name:'app.name')}
				<small> v${meta(name:'app.version')}</small>
			</a>

       		<div class="nav-collapse">
       		
       			<ul class="nav">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Browse <b class="caret"></b></a>
						<ul class="dropdown-menu">
                            <li><a href="${createLink(uri: '/')}">Home</a></li>

						</ul>
					</li>
				</ul>


			</div>
			
		</div>
	</div>
</div>
