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
	<div id="popular-works-show">
	<div id="popworks-group-header" class="group-header-bg">
		<div id="popworks-group-label"></div>
		<div id="search-box-for-pop">
			<div class="search-box-wrapper">
				<span class="search-box-icon"></span>
				<input class="search-box-input" name="search" id="search-pop" placeholder="搜索..." type="text" />
			</div>
		</div>
		<div id="tags-selector-for-pop">
			<ul>
				{% for tag in pop_tags %}<li data-id="{{ tag.id }}">{{ tag.name }}</li>{% endfor %}
				<div style="clear:both;display:block;"></div>
			</ul>
		</div>
		<div id="platform-selector-for-pop">
			<ul>
				<li data="Windows 7" class="selected">Windows 7</li>
				<li data="Windows XP">Windows XP</li>
				<li data="Android">Android</li>
				<li data="Other">Other</li>
			</ul>
		</div>
		<div id="time-selector-for-pop">
			<ul>
				<li data="week" class="selected">最近一周</li>
				<li data="months">最近一个月</li>
				<li data="3months">最近三个月</li>
				<li data="all">全部</li>
			</ul>
		</div>
	</div>
	<!--This is works panel area where all panels place here, a template should modify to a loop structure-->
	<div class="works-panel-wrapper">
		{% for post in posts %}
			{% include "theme/post-block.swig" with post only %}
		{% endfor %}
		<div style="clear:both;display:block;"></div>
	</div>
	<div class="page-navigator-holder">
		<a id="pop-more-content-button" class="more-content-button-wrapper" href="/category">
			<span>更多</span>
			<div class="right-arrow-icon">
			</div>
		</a>
		<div style="clear:both;display:block;"></div>
	</div>
	</div>
{% endblock %}