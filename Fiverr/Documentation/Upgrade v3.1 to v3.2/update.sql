UPDATE `config` SET `value` = '3.2' WHERE CONVERT( `config`.`setting` USING utf8 ) = 'ver' LIMIT 1 ;