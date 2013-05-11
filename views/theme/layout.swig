{% macro js url %}<script type="text/javascript" src="/static/{{ url }}"></script>{% endmacro %}
{% macro css url %}<link rel="stylesheet" href="/static/{{ url }}">{% endmacro %}
<html>
<head>
	<title>{% block title %}{% endblock %}</title>
	{% block css %}
	{{ css('css/style.css') }}
	{{ css('css/jquery.ultrawidget-1.0.css') }}
	{{ css('fancybox/jquery.fancybox.css') }}
	{% endblock %}
</head>
<body>
<div id="header_bar">
	<div id="header_wrapper">
		<div id="logo">
		</div>
		<div id="user_container_wrapper"></div>
	</div>
</div>
{% include 'theme/navbar.swig' %}
{% block js %}
{{ js('js/jquery-1.8.0.min.js') }}
{{ js('js/jquery.lavalamp-1.4.min.js') }}
{{ js('js/jquery.ultrawidget-1.0.js') }}
{{ js('js/jquery.fancybox.pack.js') }}
{{ js('js/core.js') }}
{% endblock %}
<script type="text/javascript">
	$(document).ready(function() {
		var global_StartItem = {{ nav_index }}; //this javascript variable need to convert to php variable.
		navMenuBuilding(global_StartItem);

	});
</script>
</body>
</html>