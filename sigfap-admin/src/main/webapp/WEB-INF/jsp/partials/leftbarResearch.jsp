<!-- Left panel : Navigation area -->
<!-- Note: This width of the aside area can be adjusted through LESS variables -->
<aside id="left-panel">

	<!-- User info -->
	<div class="login-info">
		<span> <!-- User image size is adjusted inside CSS, it should stay as it --> 
			
			<a href="javascript:void(0);" id="show-shortcut" data-action="toggleShortcut">
				<img src="${pageContext.request.contextPath}/static/img/avatars/sunny.png" alt="me" class="online" /> 
				<span>
					john.doe 
				</span>
				<i class="fa fa-angle-down"></i>
			</a> 
			
		</span>
	</div>
	<!-- end user info -->

	<!-- NAVIGATION : This navigation is also responsive
	To make this navigation dynamic please make sure to link the node
	(the reference to the nav > ul) after page load. Or the navigation
	will not initialize.
	-->
	<nav>
		<!-- NOTE: Notice the gaps after each icon usage <i></i>..
		Please note that these links work a bit different than
		traditional href="" links. See documentation for details.
		-->

		<ul>
			<li class="active">
				<a href="${pageContext.request.contextPath}/" title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Dashboard</span></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/user" title="Users"><i class="fa fa-lg fa-fw fa-group"></i> <span class="menu-item-parent">Users</span></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/editResearch/" title="Editar Pesquisador"><i class="fa fa-lg fa-fw fa-group"></i> <span class="menu-item-parent">Editar Cadastro</span></a>
			</li>
		</ul>
	</nav>
	<span class="minifyme" data-action="minifyMenu"> 
		<i class="fa fa-arrow-circle-left hit"></i> 
	</span>

</aside>
<!-- END NAVIGATION -->