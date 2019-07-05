{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
  <div class="card">
    <div class="card-body">

      <div class="row">
        <div class="col-md-9">
          <h2 style="display:inline;">{$VIEWING_ALL_RELEASES}</h2>
        </div>
        <div class="col-md-3">
          <span class="float-right"><a href="{$BACK_LINK}" class="btn btn-danger">{$BACK}</a></span>
        </div>
      </div>

	  <br /><br />

	  {foreach from=$RELEASES item=release}

	  <a href="{$release.url}">{$release.name}</a>
	  <span class="float-md-right">
	    <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$release.date_full}">{$release.date}</span>
	  </span>
	  <hr />
	  <div class="forum-post">
	    {$release.description}
	  </div>
	  <br />
	  {$release.downloads} |
	  <div class="star-rating view" style="display:inline;">
	    <span class="fa fa-star" data-rating="1" style="color:gold;"></span>
	    <span class="fa fa-star" data-rating="2" style="color:gold"></span>
	    <span class="fa fa-star" data-rating="3" style="color:gold;"></span>
	    <span class="fa fa-star" data-rating="4" style="color:gold;"></span>
	    <span class="fa fa-star" data-rating="5" style="color:gold;"></span>
	    <input type="hidden" name="rating" class="rating-value" value="{$release.rating}">
	  </div>
	  <hr />

	  {/foreach}

	  {$PAGINATION}

    </div>
  </div>
</div>

{include file='footer.tpl'}
