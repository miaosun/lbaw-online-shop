{if isset($cat) }

<div class="col-md-3 column margintop20">
	<ul class="nav nav-pills nav-stacked">
		<li id="cattitle" class="active" catid="{$cat}">  <a><span class="glyphicon "></span> {$catname}</a></li>
                
                {if (!$filters)}
                   <li class="active2"><a href="#"><span class="glyphicon"></span> No Filters!</a></li>
                {/if}

		{foreach $filters as $filter}
		<li class="filter active2" id="filter{$filter.id}" fid="{$filter.id}"><a href="#"><span class="glyphicon glyphicon-chevron-right"></span> {$filter.name}</a></li>
		{/foreach}
		<!-- <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span> Others</a></li> -->
		<!-- {$filters|@var_dump} -->
	</ul>
</div>

{elseif isset($dep)}

<div class="col-md-3 column margintop20">
	<ul class="nav nav-pills nav-stacked">
		<li class="active"><a><span class="glyphicon "></span> {$dep} </a></li>              
		{foreach $categories as $cat}
		<li><a href="{$BASE_URL}pages/products/search-prods.php?cat={$cat.id}"><span class="glyphicon glyphicon-chevron-right"></span> {$cat.name} </a></li>
		{/foreach}
	</ul>
</div>

{elseif isset($search)}

<div class="col-md-3 column margintop20">
	<ul class="nav nav-pills nav-stacked">
		<li id="searchtitle" class="active" search="{$search}">  <a><span class="glyphicon "></span> Filters</a></li>          
		{if (!isset($filters))}
                   <li class="active2"><a href="#"><span class="glyphicon"></span> No Filters!</a></li>
                {else}
                    {foreach $filters as $filter}
                    <li class="filter active2" id="filter{$filter.id}" fid="{$filter.id}"><a href="#"><span class="glyphicon glyphicon-chevron-right"></span> {$filter.name}</a></li>
                    {/foreach}
                {/if}
	</ul>
</div>

{else}
<div class="col-md-3 column margintop20">
	<ul class="nav nav-pills nav-stacked">
		<li class="active"><a><span class="glyphicon "></span> Departments </a></li>              
		{foreach $departments as $dep}
		<li><a href="{$BASE_URL}pages/products/search-prods.php?dep={$dep.iddepartment}"><span class="glyphicon glyphicon-chevron-right"></span> {$dep.name} </a></li>
		{/foreach} 
		<!--   { var_dump($departments) } -->
	</ul>
</div>
{/if}

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="{$BASE_URL}javascript/sidebar.js"></script>