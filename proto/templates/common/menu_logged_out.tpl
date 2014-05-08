<li class="dropdown">
    <a href="http://www.jquery2dotnet.com" class="dropdown-toggle" data-toggle="dropdown">Sign in <b class="caret"></b></a>
    <ul class="dropdown-menu" style="padding: 15px;min-width: 250px;">
        <li>
            <div class="row">
                <div class="col-md-12">
                    <form class="form" role="form" method="post" action="{$BASE_URL}actions/users/login.php" accept-charset="UTF-8" id="login-nav">
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputEmail2">Email address</label>
                            {if isset($FORM_VALUES.login)}
                            <input name="login" type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required value="{$FORM_VALUES.login}">
                                {else}
                                <input name="login" type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required value="">

                            {/if}
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputPassword2">Password</label>
                            <input name="password" type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember me
                            </label>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success btn-block">Sign in</button>
                        </div>
                    </form>
                </div>
            </div>
        </li>
        <li class="divider"></li>
        <li>
            <a href="{$BASE_URL}pages/users/register.php" style="padding:0px"  >
            <input class="btn btn-primary btn-block" type="button" id="" value="Register" >
             </a>
        </li>
    </ul>
</li>
				  