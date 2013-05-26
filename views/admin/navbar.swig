<ul class="nav nav-list well">
	<li class="nav-header">喵~</li>
	<li>
		<a href="/admin"><i class="icon-black icon-home"></i>首页</a>
	</li>
	<li>
		<a href="/admin/info"><i class="icon-black icon-align-justify"></i>个人信息</a>
	</li>
	<li>
		<ul class="nav nav-list">
			<li>
				<a href="/admin/info/sns"><i class="icon-black icon-plus"></i>社交网站</a>
			</li>
			<li>
				<a href="/admin/info/avatar"><i class="icon-black icon-picture"></i>头像设置</a>
			</li>
		</ul>
	</li>
	{% if is_admin %}
	<li>
		<a href="/admin/posts"><i class="icon-black icon-file"></i>文章/主题管理</a>
	</li>
	<li>
		<ul class="nav nav-list">
			<li>
				<a href="/admin/posts/new"><i class="icon-black icon-align-left"></i>发布文章/主题</a>
			</li>
		</ul>
	</li>
	{% endif %}
</ul>