<div id="work_id_001" class="works_panel">
	<div class="work_content_wrapper">
		<div class="preview_img_wrapper">
			<a href="{{ url }}">
				<img src="img/prev1.jpg" />
			</a>
			<div class="img_lightbox_controls">
				<a href="img/prev2_big.jpg" class="zoom_in_tool"></a>
			</div>
		</div>
		<div class="work_title">
			<a href="{{ url }}" title="{{ title }}">
				{{ title }}
			</a>
		</div>
		<div class="work_author">
			<span>by</span>
			<a href="{{ author_url }}">
				{{ author_name }}
			</a>
		</div>
		<div class="work_tags">
			<!-- data attribute in li element is tagID, the text is tagName -->
			<ul>
				<li data="0000">Windows 7</li>
				{% for tag in tags %}<li data-id="{{ tag.id }}">{{ tag.name }}</li>{% endfor %}
				<div style="clear:both;display:block;"></div>
			</ul>
		</div>
		<div class="work_panel_divider"></div>
		<div class="statistics_show_wrapper">
			<div class="statistics_downloads_wrapper" title="{{ dl_count }}次下载">
				<div class="downloads_icon"></div>
				<span>{{ dl_count }}</span>
			</div>
			<div class="statistics_comments_wrapper" title="{{ comm_count }}条评论">
				<div class="comments_icon"></div>
				<span>{{ comm_count }}</span>
			</div>
			<div class="statistics_favorites_wrapper" title="{{ fav_count }}次收藏">
				<div class="favorites_icon"></div>
				<span>{{ fav_count }}</span>
			</div>
		</div>
	</div>
	<div class="work_special_indicator"></div>
</div>