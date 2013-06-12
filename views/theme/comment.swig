<li class="depth-{{ depth }}">
    <div class="comment" data-id="{{ comment._id }}">
        <div class="comment-meta">
            <div class="comment-author">
                <a class="comment-author-avatar" href=""><img src="{{ comment.author_ava }}" /></a>
                <a class="comment-author-name" href="">{{ comment.author }}</a>
            </div>
            <div class="comment-timestamp">
                <span>发表于</span>
                <a href="#comment-{{ comment._id }}">
                    <time datetime="{{ comment.pub|date('c') }}">{{ comment.pub|date('Y年n月j日 G:i:s') }}</time>
                </a>
            </div>
        </div>
        <div class="comment-content">
            <p>{{ comment.content }}</p>
        </div>
        <div style="display:block;clear:both;" class="s"></div>
    </div>
    {% if childrens.length != 0 %}
    <ul class="children">
        {{ childrens|join|raw }}
    </ul>
    {% endif %}
</li>