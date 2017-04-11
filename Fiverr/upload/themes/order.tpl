            {if $enable_paypal eq "1" AND $enable_alertpay eq "0" AND $funds LT $p.totalprice AND $afunds LT $p.totalprice}
            {literal}
            <script type="text/javascript"> 
            $(document).ready( function() {
                $('#paypal_form').submit();
            });
            </script>
            {/literal}
            {elseif $enable_paypal eq "0" AND $enable_alertpay eq "1" AND $funds LT $p.totalprice AND $afunds LT $p.totalprice}
            {literal}
            <script type="text/javascript"> 
            $(document).ready( function() {
                $('#alertpay_form').submit();
            });
            </script>
            {/literal}
            {/if}
              <div class="main-wrapper">
                <div id="main">
                  <div class="content">
                  {if $message ne ""}
                  {include file="error.tpl"}
                  {/if}                   
                     
                    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" id="paypal_form" name="paypal_form">
                    <input type="hidden" name="cmd" value="_xclick">
                    <input type="hidden" name="business" value="{$paypal_email}">
                    <input type="hidden" name="item_name" value="#{$p.PID|stripslashes} - {$p.gtitle|stripslashes}">
                    <input type="hidden" name="item_number" value="{$p.IID|stripslashes}">
                    <input type="hidden" name="custom" value="{$smarty.session.USERID}">
                    <input type="hidden" name="amount" value="{$p.totalprice|stripslashes}">
                    <input type="hidden" name="currency_code" value="{$currency}">
                    <input type="hidden" name="button_subtype" value="services">
                    <input type="hidden" name="no_note" value="1">
                    <input type="hidden" name="no_shipping" value="2">
                    <input type="hidden" name="rm" value="2">
                    <input type="hidden" name="return" value="{$baseurl}/thank_you?g={$eid}">
                    <input type="hidden" name="cancel_return" value="{$baseurl}/">
                    <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted">
                    <input type="hidden" name="address_override" value="1">
                    <input type="hidden" name="notify_url" value="{$baseurl}/ipn_res.php">
                    </form>
                    
                    <form action="" method="post" id="bal_form" name="bal_form">
                    <input type="hidden" name="subbal" value="1">
                    </form>                    
                    
                    <form method="post" action="https://secure.payza.com/checkout" id="alertpay_form" name="alertpay_form">
                    <input type="hidden" name="ap_merchant" value="{$alertpay_email}"/>
                    <input type="hidden" name="ap_purchasetype" value="service"/>
                    <input type="hidden" name="ap_itemname" value="#{$p.PID|stripslashes}"/>
                    <input type="hidden" name="ap_amount" value="{$p.totalprice|stripslashes}"/>
                    <input type="hidden" name="ap_currency" value="{$alertpay_currency}"/>
                    <input type="hidden" name="ap_quantity" value="1"/>
                    <input type="hidden" name="ap_itemcode" value="{$smarty.session.USERID}"/>
                    <input type="hidden" name="ap_description" value="{$p.gtitle|stripslashes}"/>
                    <input type="hidden" name="ap_returnurl" value="{$baseurl}/thank_you?g={$eid}"/>
                    <input type="hidden" name="ap_cancelurl" value="{$baseurl}/"/>
                    <input type="hidden" name="apc_1" value="{$p.IID|stripslashes}"/>                        
                    </form>
                    
                    <form action="" method="post" id="scriptolution_mybal_form" name="scriptolution_mybal_form">
                    <input type="hidden" name="scriptolution_mybal" value="1">
                    </form>  
                    
                    <div class="section"> 
                      <div class="t">&nbsp;</div> 
                      <div class="c"> 
                        <div class="page"> 
                          <div class="to-payment"> 
                          	
                            {if $afunds LT $p.totalprice}
                                {if $enable_paypal eq "1" AND $enable_alertpay eq "1" AND $funds LT $p.totalprice}
                                <h1><strong>{$lang410}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2>                             
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {elseif $enable_paypal eq "1" AND $enable_alertpay eq "1" AND $funds gte $p.totalprice}
                                <h1><strong>{$lang446}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2>                             
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2> 
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {elseif $enable_paypal eq "1" AND $enable_alertpay eq "0" AND $funds LT $p.totalprice}
                                <h1><strong>{$lang259}</strong></h1> 
                                <h2>{$lang258}</h2> 
                                <div class="progress"></div>
                                {elseif $enable_paypal eq "1" AND $enable_alertpay eq "0" AND $funds gte $p.totalprice}
                                <h1><strong>{$lang410}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2> 
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {elseif $enable_paypal eq "0" AND $enable_alertpay eq "1" AND $funds LT $p.totalprice}
                                <h1><strong>{$lang259}</strong></h1> 
                                <h2>{$lang258}</h2> 
                                <div class="progress"></div>
                                {elseif $enable_paypal eq "0" AND $enable_alertpay eq "1" AND $funds gte $p.totalprice}
                                <h1><strong>{$lang410}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2>
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {else}
                                <h1><strong>{$lang446}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2> 
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {/if}
                            {else}
                            	{if $enable_paypal eq "1" AND $enable_alertpay eq "1" AND $funds LT $p.totalprice AND $afunds gte $p.totalprice}
                                <h1><strong>{$lang410}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2>                             
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.scriptolution_mybal_form.submit();">{$lang518}</a></h2> 
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {elseif $enable_paypal eq "1" AND $enable_alertpay eq "1" AND $funds gte $p.totalprice AND $afunds gte $p.totalprice}
                                <h1><strong>{$lang446}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2>                             
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.scriptolution_mybal_form.submit();">{$lang518}</a></h2> 
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {elseif $enable_paypal eq "1" AND $enable_alertpay eq "0" AND $funds LT $p.totalprice AND $afunds gte $p.totalprice}
                                <h1><strong>{$lang446}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.scriptolution_mybal_form.submit();">{$lang518}</a></h2> 
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {elseif $enable_paypal eq "1" AND $enable_alertpay eq "0" AND $funds gte $p.totalprice AND $afunds gte $p.totalprice}
                                <h1><strong>{$lang410}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.scriptolution_mybal_form.submit();">{$lang518}</a></h2> 
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {elseif $enable_paypal eq "0" AND $enable_alertpay eq "1" AND $funds LT $p.totalprice AND $afunds gte $p.totalprice}
                                <h1><strong>{$lang446}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.scriptolution_mybal_form.submit();">{$lang518}</a></h2>     
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>                            
                                {elseif $enable_paypal eq "0" AND $enable_alertpay eq "1" AND $funds gte $p.totalpric AND $afunds gte $p.totalpricee}
                                <h1><strong>{$lang410}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.scriptolution_mybal_form.submit();">{$lang518}</a></h2>   
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {else}
                                <h1><strong>{$lang446}</strong></h1>
                                <h2><a style="text-decoration:none" href="#" onclick="document.paypal_form.submit();">{$lang411}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.alertpay_form.submit();">{$lang447}</a></h2>
                                <h2><a style="text-decoration:none" href="#" onclick="document.bal_form.submit();">{$lang412}</a></h2> 
                                <h2><a style="text-decoration:none" href="#" onclick="document.scriptolution_mybal_form.submit();">{$lang518}</a></h2>  
                                <h2>{$lang489}: {$lang197}{$p.totalprice}</h2>
                                {/if}
                            {/if}
                            
                            
                            
                          </div> 
                        </div> 
                      </div> 
                      <div class="b">&nbsp;</div> 
                    </div>
                    
                  </div>
                  {include file="side.tpl"}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>