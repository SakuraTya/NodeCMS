<div id="work-id-001" class="works-panel">
	<div class="work-content-wrapper">
		<div class="preview-img-wrapper">
			<a href="{{ url }}">
				<img src="{{ prev }}" />
			</a>
			<div class="img-lightbox-controls">
				<a href="{{ prev_big }}" class="zoom-in-tool"></a>
			</div>
		</div>
		<div class="work-title">
			<a href="{{ url }}" title="{{ title }}">
				{{ title }}
			</a>
		</div>
		<div class="work-author">
			<span>by</span>
			<a href="{{ author.url }}">
				{{ author.name }}
			</a>
		</div>
		<div class="work-tags">
			<!-- data attribute in li element is tagID, the text is tagName -->
			<ul>
				{% for tag in tags %}<li data-id="{{ tag.id }}">{{ tag.name }}</li>{% endfor %}
				<div style="clear:both;display:block;"></div>
			</ul>
		</div>
		<div class="work-panel-divider"></div>
		<div class="statistics-show-wrapper">
			<div class="statistics-downloads-wrapper" title="{{ dl_count }}次下载">
				<div class="downloads-icon"></div>
				<span>{{ dl_count }}</span>
			</div>
			<div class="statistics-comments-wrapper" title="{{ comm_count }}条评论">
				<div class="comments-icon"></div>
				<span>{{ comm_count }}</span>
			</div>
			<div class="statistics-favorites-wrapper" title="{{ fav_count }}次收藏">
				<div class="favorites-icon"></div>
				<span>{{ fav_count }}</span>
			</div>
		</div>
	</div>
	<div class="work-special-indicator"></div>
</div>