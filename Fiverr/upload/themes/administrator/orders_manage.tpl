		<div class="middle" id="anchor-content">
            <div id="page:main-container">
				<div class="columns ">
                
					<div class="side-col" id="page:left">
    					<h3>Orders</h3>
						
                        <ul id="isoft" class="tabs">
    						<li >
        						<a href="orders_manage.php" id="isoft_group_1" name="group_1" title="Manage Orders" class="tab-item-link ">
                                    <span>
                                        <span class="changed" title=""></span>
                                        <span class="error" title=""></span>
                                        Manage Orders
                                    </span>
        						</a>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                <div id="isoft_group_1_content" style="display:none;">
                                	<div class="entry-edit">
                                        <div class="entry-edit-head">
                                            <h4 class="icon-head head-edit-form fieldset-legend">Manage Orders</h4>
                                            <div class="form-buttons">

                                            </div>
                                    	</div>

                                        <div>
        			<div id="customerGrid">
        				<table cellspacing="0" class="actions">
        				<tr>
                    		<td class="pager">
                            	Showing {if $total gt 0}{$beginning} - {$ending} of {/if}{$total} Orders
                    		</td>
                			<td class="export a-right"></td>
            				<td class="filter-actions a-right">
                            	<button  id="id_ffba3971e132ae3d78c160244ea09b39" type="button" class="scalable " onclick="document.location.href='orders_manage.php'" style=""><span>Reset Filter</span></button>
            					<button  id="id_56a0b03bf0b3be131176f3243cc289ff" type="button" class="scalable task" onclick="document.main_form.submit();" style=""><span>Search</span></button>        
                            </td>
        				</tr>
    					</table>
                        
                        <div class="grid">
							<div class="hor-scroll">
								<table cellspacing="0" class="data" id="customerGrid_table">
                                <col  width="120" />
                                <col   />
                                <col  width="100"  />
                                <col  width="100"  />
                                <col  width="150"  />
                                <col  width="125"  />
	    	    	        	<thead>
	            	                <tr class="headings">
                                        <th ><span class="nobr"><a href="orders_manage.php?page={$currentpage}&sortby=OID&sorthow={if $sortby eq "OID"}{if $sorthow eq "desc"}asc{else}desc{/if}{else}{$sorthow}{/if}{if $search eq "1"}&fromid={$fromid}&toid={$toid}&title={$title}&gtitle={$gtitle}&username={$username}&status={$status}{/if}" name="id" class="{if $sortby eq "OID"}sort-arrow-{if $sorthow eq "desc"}desc{else}asc{/if}{else}not-sort{/if}"><span class="sort-title">ID</span></a></span></th>
                                        <th ><span class="nobr"><a href="orders_manage.php?page={$currentpage}&sortby=gtitle&sorthow={if $sortby eq "gtitle"}{if $sorthow eq "desc"}asc{else}desc{/if}{else}{$sorthow}{/if}{if $search eq "1"}&fromid={$fromid}&toid={$toid}&title={$title}&gtitle={$gtitle}&username={$username}&status={$status}{/if}" name="gtitle" class="{if $sortby eq "gtitle"}sort-arrow-{if $sorthow eq "desc"}desc{else}asc{/if}{else}not-sort{/if}"><span class="sort-title">Gig Ordered</span></a></span></th>
                                        <th ><span class="nobr"><a href="orders_manage.php?page={$currentpage}&sortby=username&sorthow={if $sortby eq "username"}{if $sorthow eq "desc"}asc{else}desc{/if}{else}{$sorthow}{/if}{if $search eq "1"}&fromid={$fromid}&toid={$toid}&title={$title}&gtitle={$gtitle}&username={$username}&status={$status}{/if}" name="username" class="{if $sortby eq "username"}sort-arrow-{if $sorthow eq "desc"}desc{else}asc{/if}{else}not-sort{/if}"><span class="sort-title">Buyer</span></a></span></th>
                                        <th ><span class="nobr"><a href="orders_manage.php?page={$currentpage}&sortby=time_added&sorthow={if $sortby eq "time_added"}{if $sorthow eq "desc"}asc{else}desc{/if}{else}{$sorthow}{/if}{if $search eq "1"}&fromid={$fromid}&toid={$toid}&title={$title}&gtitle={$gtitle}&username={$username}&status={$status}{/if}" name="time_added" class="{if $sortby eq "time_added"}sort-arrow-{if $sorthow eq "desc"}desc{else}asc{/if}{else}not-sort{/if}"><span class="sort-title">Date Ordered</span></a></span></th>
                                        <th ><span class="nobr"><a href="orders_manage.php?page={$currentpage}&sortby=status&sorthow={if $sortby eq "status"}{if $sorthow eq "desc"}asc{else}desc{/if}{else}{$sorthow}{/if}{if $search eq "1"}&fromid={$fromid}&toid={$toid}&title={$title}&gtitle={$gtitle}&username={$username}&status={$status}{/if}" name="status" class="{if $sortby eq "status"}sort-arrow-{if $sorthow eq "desc"}desc{else}asc{/if}{else}not-sort{/if}"><span class="sort-title">Status</span></a></span></th>
                                        <th  class=" no-link last"><span class="nobr">Action</span></th>
	                	            </tr>
	            	            	<tr class="filter">
                                        <th >
                                            <div class="range">
                                                <div class="range-line">
                                                    <span class="label">From:</span> 
                                                    <input type="text" name="fromid" id="fromid" value="{$fromid}" class="input-text no-changes"/>
                                                </div>
                                                <div class="range-line">
                                                    <span class="label">To : </span>
                                                    <input type="text" name="toid" id="toid" value="{$toid}" class="input-text no-changes"/>
                                                </div>
                                            </div>
                                        </th>
                                        <th ><input type="text" name="gtitle" id="gtitle" value="{$gtitle|stripslashes}" class="input-text no-changes"/></th>
                                        <th ><input type="text" name="username" id="username" value="{$username|stripslashes}" class="input-text no-changes"/></th>
                                        <th></th>
                                        <th ></th>
                                        <th  class=" no-link last">
                                            <div style="width: 100%;">&nbsp;</div>
                                        </th>
	                	            </tr>
	            	        	</thead>
	    	    	    		<tbody>
                                	{section name=i loop=$results}
                                    <tr id="" >
                                        <td class=" a-right ">{$results[i].OID}</td>
                                        <td class=" "><a href="{$adminurl}/gigs_edit.php?PID={$results[i].PID}">{$results[i].gtitle|stripslashes|truncate:300:"...":true}</a></td>
                                        <td class=" ">{$results[i].username|stripslashes|truncate:20:"...":true}</td>
                                        <td class=" ">{$results[i].time_added|date_format:"%b %e, %Y"}</td>
                                        <td class=" " style="background-color:#FFC">
                                        	<b>
                                            {if $results[i].status eq "0"}
                                            {$lang362}
                                            {elseif $results[i].status eq "1"}
                                                {insert name=late value=a assign=late time=$results[i].stime days=$results[i].days}
                                                {if $late eq "1"}
                                                {$lang363}
                                                {else}
                                                {$lang365}
                                                {/if}
                                            {elseif $results[i].status eq "2"}
                                            {$lang203}
                                            {elseif $results[i].status eq "3"}
                                            {$lang368}
                                            {elseif $results[i].status eq "4"}
                                            {$lang201}
                                            {elseif $results[i].status eq "5"}
                                            {$lang202}
                                            {elseif $results[i].status eq "6"}
                                                {insert name=late value=a assign=late time=$results[i].stime days=$results[i].days}
                                                {if $late eq "1"}
                                                {$lang363}
                                                {else}
                                                {$lang320}
                                                {/if}
                                            {elseif $results[i].status eq "7"}
                                            {$lang373}
                                            {/if}
                                            </b>
                                        </td>
                                        <td class=" last">{if $results[i].status eq "2" OR $results[i].status eq "7" OR $results[i].status eq "3"}Cancel Order{else}<a href="orders_manage.php?page={$currentpage}&sortby={$sortby}&sorthow={$sorthow}{if $search eq "1"}&fromid={$fromid}&toid={$toid}&title={$title}&gtitle={$gtitle}&username={$username}&status={$status}{/if}&acancel=1&OID={$results[i].OID}">Cancel Order</a>{/if}</td>
                                	</tr>
                                    {/section}
                                    <tr>
                                    	<td colspan="6">
                                        {$pagelinks}
                                        </td>
                                    </tr>
	    	    	    		</tbody>
								</table>
                            </div>
                        </div>
					</div>
				</div>
									</div>
								</div>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                               
                                
                                
                                
    						</li>
    
						</ul>
                        
						<script type="text/javascript">
                            isoftJsTabs = new varienTabs('isoft', 'main_form', 'isoft_group_1', []);
                        </script>
                        
					</div>
                    
					<div class="main-col" id="content">
						<div class="main-col-inner">
							<div id="messages">
                            {if $message ne "" OR $error ne ""}
                            	{include file="administrator/show_message.tpl"}
                            {/if}
                            </div>

                            <div class="content-header">
                               <h3 class="icon-head head-products">Orders - Manage Orders</h3>
                            </div>
                            
                            <form action="orders_manage.php" method="post" id="main_form" name="main_form" enctype="multipart/form-data">
                            	<input type="hidden" id="submitform" name="submitform" value="1" >
                            	<div style="display:none"></div>
                            </form>
						</div>
					</div>
				</div>

                        </div>
        </div>