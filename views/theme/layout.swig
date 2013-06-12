<!DOCTYPE html>
{% macro js url %}<script type="text/javascript" src="/static/{{ url }}"></script>{% endmacro %}
{% macro css url %}<link rel="stylesheet" href="/static/{{ url }}">{% endmacro %}
<html>
<head>
	<title>{% block title %}{% endblock %}</title>
	<script type='text/javascript'>
	window.itemIndex = 1;
	</script>
	{{ css('css/style.css') }}
	{{ css('css/jquery.ultrawidget-1.0.css') }}
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
{% include 'theme/footer.swig'%}
{{ js('js/require.js') }}
<script type="text/javascript">
	require.config({
		baseUrl:'/static/js/',
		paths:{
			jquery:'jquery-1.8.0',
			'jquery.fancybox':'jquery.fancybox',
			'jquery.lavalamp':'jquery.lavalamp-1.4',
			'jquery.ultrawidget':'jquery.ultrawidget-1.0',
            'jquery.modal':'jquery.modal.min',
			'dropdown':'theme/dropdown'
		},
		shim:{
			'jquery.fancybox':['jquery'],
			'jquery.lavalamp':['jquery'],
			'jquery.ultrawidget':['jquery'],
            'jquery.modal':['jquery']
		}
	});
	requirejs(['/static/js/theme/nav.js','/static/js/theme/pages/{{ requirejs }}.js']);
</script>
</body>
</html>