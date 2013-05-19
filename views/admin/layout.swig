{% macro js url %}<script type="text/javascript" src="/static/{{ url }}"></script>{% endmacro %}
{% macro css url %}<link rel="stylesheet" href="/static/{{ url }}">{% endmacro %}
<!DOCTYPE html>
<html>
<head>
	<title>{% block title %}{% endblock %}</title>
	{{ css('css/bootstrap.min.css') }}
	{{ css('css/bootstrap-responsive.min.css') }}
	{% block css %}
	{% endblock %}
</head>
<body>
{% include "admin/topbar.swig" with user %}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span2">{% include 'admin/navbar.swig' %}</div>
		<div class="span10">{% block body %}{% endblock %}</div>
	</div>
</div>
{{ js('js/jquery-1.8.0.min.js') }}
{{ js('js/bootstrap.min.js') }}
{% block js %}
{% endblock %}
</body>
</html>