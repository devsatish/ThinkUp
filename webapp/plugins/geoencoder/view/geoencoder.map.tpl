   {if $post}
      <div class="clearfix">
        <div class="grid_2 alpha">
        <div class="avatar-container">
          <img src="{$post->author_avatar}" class="avatar2"/><img src="{$site_root_path}plugins/{$post->network|get_plugin_path}/assets/img/favicon.ico" class="service-icon2"/>
         </div>
        </div>
        <div class="{if $retweets}grid_12{else}grid_16{/if}">
          <span class="tweet">
            {if $post->post_text}
              {$post->post_text|link_usernames_to_twitter}
            {else}
              <span class="no-post-text">No post text</span>
            {/if}
          </span>
          {if $post->link->expanded_url and !$post->link->image_src and $post->link->expanded_url != $post->link->url}
            <br><a href="{$post->link->expanded_url}" title="{$post->link->expanded_url}">
              {$post->link->expanded_url}
            </a>
          {/if}
          <div class="grid_6 omega small gray prefix_10">
            <img src="{$site_root_path}assets/img/social_icons/{$post->network|get_plugin_path}.png" class="float-l">
            {if $post->network eq 'twitter'}
            Posted at <a href="http://twitter.com/{$post->author_username}/statuses/{$post->post_id}">{$post->adj_pub_date}</a>{if $post->source} via {$post->source}{/if}<br>
            {else}
            Posted at {$post->adj_pub_date}{if $post->source} via {$post->source}{/if}<br>
            {/if}
            {if $post->location}From: {$post->location}{/if}
              </div>
            </div>
          </div>
        {/if}

<script type="text/javascript" src="{$site_root_path}plugins/geoencoder/assets/js/iframe.js"></script>
<iframe width="710" frameborder=0 src="{$site_root_path}plugins/geoencoder/map.php?pid={$post->post_id}&n={$post->network}&t=post" name="childframe" id="childframe" >
</iframe>
