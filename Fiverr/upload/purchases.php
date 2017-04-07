<?php
/**************************************************************************************************
| Fiverr Script
| http://www.fiverrscript.com
| webmaster@fiverrscript.com
|
|**************************************************************************************************
|
| By using this software you agree that you have read and acknowledged our End-User License 
| Agreement available at http://www.fiverrscript.com/eula.html and to be bound by it.
|
| Copyright (c) 2011 FiverrScript.com. All rights reserved.
|**************************************************************************************************/

include("include/config.php");
include("include/functions/import.php");

if ($_SESSION['USERID'] != "" && $_SESSION['USERID'] >= 0 && is_numeric($_SESSION['USERID']))
{		
	$templateselect = "purchases.tpl";
	$pagetitle = $lang['461'];
	STemplate::assign('pagetitle',$pagetitle);	
	
	$query="SELECT A.gtitle, B.* FROM posts A, featured B WHERE A.USERID='".mysql_real_escape_string($_SESSION['USERID'])."' AND A.PID=B.PID order by B.ID desc";
	$results=$conn->execute($query);
	$o = $results->getrows();
	STemplate::assign('o',$o);	
}
else
{
	header("Location:$config[baseurl]/");exit;
}

//TEMPLATES BEGIN
STemplate::assign('message',$message);
STemplate::assign('sm4',"1");
STemplate::display('header.tpl');
STemplate::display($templateselect);
STemplate::display('footer.tpl');
//TEMPLATES END
?>