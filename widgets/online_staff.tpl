<div class="ui fluid card" id="widget-online-staff">
    <div class="content">
        <a class="ui ribbon label" style="margin-bottom: 10px;"><i class="fa-solid fa-users-gear"></i>
            {$ONLINE_STAFF}</a>
        <div class="description">
            {if isset($ONLINE_STAFF_LIST)}
                {foreach from=$ONLINE_STAFF_LIST name=online_staff_arr item=user}
                    <div class="ui relaxed list">
                        <div class="item">
                            <img class="ui mini circular image" src="{$user.avatar}" alt="{$user.username}">
                            <div class="content">
                                <a class="" href="{$user.profile}" data-poload="{$USER_INFO_URL}{$user.id}"
                                    style="{$user.style}">{$user.nickname}</a>
                                {$user.group}
                            </div>
                        </div>
                    </div>
                {/foreach}
            {else}
                {$NO_STAFF_ONLINE}
            {/if}
        </div>
    </div>
    <div class="extra content">
        {$TOTAL_ONLINE_STAFF}
    </div>
</div>