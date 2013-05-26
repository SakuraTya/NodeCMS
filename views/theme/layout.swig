{% macro js url %}<script type="text/javascript" src="/static/{{ url }}"></script>{% endmacro %}
{% macro css url %}<link rel="stylesheet" href="/static/{{ url }}">{% endmacro %}
<html>
<head>
	<title>{% block title %}{% endblock %}</title>
	{{ css('css/theme.css') }}
	{{ css('fancybox/jquery.fancybox.css') }}
	{% block css %}{% endblock %}
</head>
<body>
<div id="header-bar">
	<div id="header-wrapper">
		<div id="logo">
		</div>
		<div id="user-container-wrapper"></div>
	</div>
</div>
{% include 'theme/navbar.swig' %}
{% block body %}{% endblock %}
{{js('js/theme.js')}}
{{ js('js/core.js') }}
{{ js('js/jquery.ultrawidget-1.0.js') }}
{% block js %}{% endblock %}
<script type="text/javascript">
	$(document).ready(function() {
		var global_StartItem = {{ nav_index }}; //this javascript variable need to convert to php variable.
		navMenuBuilding(global_StartItem);

	});
</script>
</body>
</html>