{include file='common/header.tpl'}

<link rel="stylesheet" href="{$BASE_URL}css/manageOrders.css">


<div class="container">
    <h3>Manage Users</h3>
    <hr>
    <div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Users</h3>
                <div class="pull-right">
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            <table id="has_context" class="table table-hover">
                <thead>
                    <tr class="filters">
                        <th><input type="text" class="form-control" placeholder="User ID" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Level" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Email" disabled></th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>

</div>

<ul id="contextMenu" class="dropdown-menu" role="menu" style="display:none" >
    <li role="presentation" class="dropdown-header">Set Permission level</li>
    <li class="divider"></li>
    <li><a href="#">Buyer</a></li>
    <li><a href="#">Manager</a></li>

</ul>

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="{$BASE_URL}javascript/manageUsers.js"></script>
<script src="{$BASE_URL}javascript/contextMenu.js"></script>


{include file='common/footer.tpl'}