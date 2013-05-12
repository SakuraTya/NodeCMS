{% extends "theme/layout.swig" %}

{% block title %}喵喵{% endblock %}

{% block js %}
{% parent %}
{{ js('js/index.js') }}
{% endblock %}

{% block css %}
{% parent %}
{{ css('css/index.css') }}
{% endblock %}

{% block body %}
	<div id="popular_works_show">
	<div id="popworks_group_header" class="group_header_bg">
		<div id="popworks_group_label"></div>
		<div id="search_box_for_pop">
			<div class="search_box_wrapper">
				<span class="search_box_icon"></span>
				<input class="search_box_input" name="search" id="search_pop" placeholder="搜索..." type="text" />
			</div>
		</div>
		<div id="tags_selector_for_pop">
			<ul>
				{% for tag in pop_tags %}<li data-id="{{ tag.id }}">{{ tag.name }}</li>{% endfor %}
				<div style="clear:both;display:block;"></div>
			</ul>
		</div>
		<div id="platform_selector_for_pop">
			<ul>
				<li data="Windows 7" class="selected">Windows 7</li>
				<li data="Windows XP">Windows XP</li>
				<li data="Android">Android</li>
				<li data="Other">Other</li>
			</ul>
		</div>
		<div id="time_selector_for_pop">
			<ul>
				<li data="week" class="selected">最近一周</li>
				<li data="months">最近一个月</li>
				<li data="3months">最近三个月</li>
				<li data="all">全部</li>
			</ul>
		</div>
	</div>
	<!--This is works panel area where all panels place here, a template should modify to a loop structure-->
	<div class="works_panel_wrapper">
		{% for post in posts %}
			{% include "theme/post-block.swig" with post only %}
		{% endfor %}
		<div style="clear:both;display:block;"></div>
	</div>
	<div class="page_navigator_holder">
		<a id="pop_more_content_button" class="more_content_button_wrapper" href="/category">
			<span>更多</span>
			<div class="right_arrow_icon">
			</div>
		</a>
		<div style="clear:both;display:block;"></div>
	</div>
	</div>
{% endblock %}