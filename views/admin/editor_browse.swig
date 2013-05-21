{% macro js url %}<script type="text/javascript" src="/static/{{ url }}"></script>{% endmacro %}
{% macro css url %}<link rel="stylesheet" href="/static/{{ url }}">{% endmacro %}
<!DOCTYPE html>
<html>
<head>
	<title>图片浏览</title>
	{{ css('css/bootstrap.min.css') }}
	{{ css('css/bootstrap-responsive.min.css') }}
</head>
<body>
<div class="navbar">
	<div class="navbar-inner">
		<ul class="nav">
			<span class="brand">图片浏览</span>
		</ul>
	</div>
	<div class="container">
		<ul class="thumbnails">
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
			<li class="span3">
				<a href="#" class="thumbnail">
					<img data-src="holder.js/260x180" alt="260x180">
				</a>
			</li>
		</ul>
	</div>
</div>
{{ js('js/holder.js') }}
{{ js('js/jquery-1.8.0.min.js') }}
{{ js('js/jquery-ui-1.10.3.custom.min.js') }}
{{ js('js/editor_browse.js') }}
</body>
</html>