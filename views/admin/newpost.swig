{% extends "admin/layout.swig" %}

{% block body %}
	<h2 class="page-header">主题&文章发布处喵。</h2>
	<form>
		<input type="text" placeholder="标题" id="title" class="input-block-level" style="height: 3em;">
		<textarea id="post-content" placeholder="内容..." style="width:95%; height: 200px"></textarea>
	</form>

{% endblock %}

{% block js %}
{{ js('ckeditor/ckeditor.js') }}
{{ js('js/new_post.js') }}

{% endblock %}