                        <form name="langselect" id="langselect" method="post">                        
                            <select name="language" onChange="document.langselect.submit()" style="font-family: Tahoma, Verdana; font-size: 11px"> 
                                <option value="english" {if $smarty.session.language eq "english"}selected{/if} >English</option> 
                                <option value="spanish" {if $smarty.session.language eq "spanish"}selected{/if}>Español</option> 
                                <option value="french" {if $smarty.session.language eq "french"}selected{/if}>Français</option> 
                                <option value="portuguese" {if $smarty.session.language eq "portuguese"}selected{/if}>Português</option>
                                <option value="hebrew" {if $smarty.session.language eq "hebrew"}selected{/if}>עברית</option>
                                <option value="german" {if $smarty.session.language eq "german"}selected{/if}>Deutsch</option>
                            </select>
                        </form>