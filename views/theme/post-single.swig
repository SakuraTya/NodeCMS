{% extends "theme/layout.swig" %}

{% block css %}
    {% parent %}
    {{ css('css/detail.css') }}
{% endblock %}

{% block body %}
    <div class="main-content-wrapper">
        <div id="detail_header" class="group-header-bg">
            <div id="detail-title" class="title-wrapper">
                <div class="title-wrapper-left"></div>
                <div class="title-content"><span>{{ post.title }}</span></div>
                <div class="title-wrapper-right"></div>
            </div>
            <!-- this link should be modifed according to the article's category and sub category -->
            <div id="detail-category" class="detail-properties-link"><a href="">系统主题</a></div>
            <div id="detail-subcategory" class="detail-properties-link"><a href="">Windows 7</a></div>
        </div>
        <div id="work-content-wrapper">
            <div id="article">
                {{ post.content }}
            </div>
            <div id="comments">
                <div id="comments-title"><span>5条评论</span></div>
                <ol class="commentlist">
                    {{ comment|join|raw }}
                </ol>
                <div id="respond">
                    <div class="respond-account">
                        <a class="respond-avatar" href=""><img src="img/comment_avatar.jpg" /></a>
                        <a class="respond-name" href="">Bob Yuan</a>
                    </div>
                    <span class="respond-tips">来说点什么吧</span>
                    <div id="compose-comment"><textarea id="comment" name="comment" cols="45" rows="8"></textarea></div>
                    <a href="" id="comment-submit"><span>发表评论</span></a>
                    <div style="display:block;clear:both;"></div>
                </div>
                <!-- #respond -->
            </div>
            <!-- #comments -->
        </div>
        <div id="work-info-wrapper">
            <div id="author-info">
                <!-- The href property of #author-avatar-wrapper and #author-name is both the author profile page's url -->
                <a id="author-avatar-wrapper" href=""><img src="img/avatar.jpg" /></a>
                <a id="author-name" href="">星月战隼</a>
                <div id="author-sign">这个世界上没有奇迹，有的只是必然和偶然，还有谁做了什么……</div>
                <div id="author-function-wrapper"></div>
                <div class="info-section-label">
                    <div id="info-label-author"></div>
                    <div class="info-section-divider"></div>
                </div>
            </div>
            <div id="project-info">
                <div id="project-brief">
                    <span>发表于：2011年9月28日</span>
                    <span>查看：4480</span>
                    <span>评论：160</span>
                </div>
                <!-- This button need ajax load the real download link -->
                <div id="project-download-button">
                    <div id="download-icon"></div>
                    <span class="button-title">查看下载地址</span>
                    <span class="button-desc">已下载3801次</span>
                </div>
                <div id="project-favorite-button">
                    <div id="favorite-icon"></div>
                    <span class="button-title">收藏这个作品</span>
                    <span class="button-desc">收藏次数1080次</span>
                </div>
                <div class="info-section-label">
                    <div id="info-label-project"></div>
                    <div class="info-section-divider"></div>
                </div>
            </div>
            <div id="work-tags">
                <ul id="work-tags-list">
                    <!-- work-tags are dynamically generated -->
                    <li data="Memeries Off">Memeries Off</li>
                    <li data="秋之回忆 7">秋之回忆 7</li>
                    <li data="Galgame">Galgame</li>
                    <div style="clear:both;display:block;"></div>
                </ul>
                <div class="info-section-label">
                    <div id="info-label-tags"></div>
                    <div class="info-section-divider"></div>
                </div>
            </div>
            <div id="share-buttons">
                <div id="share-buttons-wrapper">

                </div>
                <div class="info-section-label">
                    <div id="info-label-share"></div>
                    <div class="info-section-divider"></div>
                </div>
            </div>
        </div>
        <div style="display:block;clear:both;">
        <div class="modal" id="comment-edit-modal">
            Test
        </div>
{% endblock %}