<div class="footer">
	<div class="centerwrap footertop">
    	<div class="flogo"><a href="{$baseurl}/"><img src="{$imageurl}/scriptolution_logo.png" alt="scriptolution" /></a></div>
      	<p>Copyright &copy; 2014 {$site_name}<br /><a href="http://www.fiverrscript.com" target="_blank"><b>Powered by FiverrScript.com</b></a></p>
        <div class="bottomlink">
        	<ul>
            	<li><a href="{$baseurl}/terms_of_service">{$lang253}</a></li>
                <li><a href="{$baseurl}/privacy_policy">{$lang415}</a></li>
                <li><a href="{$baseurl}/contact">{$lang417}</a></li>
            </ul>
            <ul>
            	<li><a href="{$baseurl}/about">{$lang416}</a></li>
                <li><a href="{$baseurl}/advertising">{$lang418}</a></li>
                {if $enable_levels eq "1" AND $price_mode eq "3"}<li><a href="{$baseurl}/levels">{$lang500}</a></li>{/if}
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
{if $viewpage eq "1"}
<script type="text/javascript" src="//assets.pinterest.com/js/pinit.js"></script>
{/if}
</body>
</html>