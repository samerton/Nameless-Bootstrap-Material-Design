{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row">
        <div class="col-md-3">
            {include file='user/navigation.tpl'}
        </div>
        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title" style="display:inline;">{$RESOURCES}</h2>
                    <div class="float-md-right">
                        <a href="{$MY_RESOURCES_LINK}" class="btn btn-primary">{$MY_RESOURCES}</a>
                    </div>
                    <hr />

                    {if isset($SUCCESS)}
                        <div class="alert alert-success">
                            {$SUCCESS}
                        </div>
                    {/if}
                    {if isset($ERROR)}
                        <div class="alert alert-danger">
                            {$ERROR}
                        </div>
                    {/if}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputPaypalEmail">{$PAYPAL_EMAIL_ADDRESS}</label> <span class="badge badge-info" data-toggle="popover" data-title="{$INFO}" data-content="{$PAYPAL_EMAIL_ADDRESS_INFO}"><i class="fa fa-question-circle"></i></span>
                            <input type="text" class="form-control" id="inputPaypalEmail" name="paypal_email" placeholder="{$PAYPAL_EMAIL_ADDRESS}" value="{$PAYPAL_EMAIL_ADDRESS_VALUE}">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                        </div>
                    </form>

                    <h3>{$PURCHASED_RESOURCES}</h3>
                    <hr />
                    {if count($PURCHASED_RESOURCES_VALUE)}

                    {else}
                        <div class="alert alert-info">{$NO_PURCHASED_RESOURCES}</div>
                    {/if}
                </div>
            </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}