UPDATE `config` SET `value` = '4.3' WHERE CONVERT( `config`.`setting` USING utf8 ) = 'ver' LIMIT 1 ;