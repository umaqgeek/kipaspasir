ALTER TABLE `payments` CHANGE `PAYPAL` `PAYPAL` BIGINT( 20 ) NOT NULL DEFAULT '0';
ALTER TABLE `payments` CHANGE `wd` `wd` BIGINT( 20 ) NOT NULL DEFAULT '0';
ALTER TABLE `payments` CHANGE `IID` `IID` BIGINT( 20 ) NOT NULL DEFAULT '0';
ALTER TABLE `order_items` CHANGE `multi` `multi` BIGINT( 5 ) NOT NULL DEFAULT '0',
CHANGE `EID` `EID` BIGINT( 20 ) NOT NULL DEFAULT '0',
CHANGE `EID2` `EID2` BIGINT( 20 ) NOT NULL DEFAULT '0',
CHANGE `EID3` `EID3` BIGINT( 20 ) NOT NULL DEFAULT '0';
ALTER TABLE `orders` CHANGE `IID` `IID` BIGINT( 20 ) NOT NULL DEFAULT '0';
ALTER TABLE `featured` CHANGE `PAYPAL` `PAYPAL` BIGINT( 20 ) NOT NULL DEFAULT '0';
UPDATE `config` SET `value` = '4.4' WHERE CONVERT( `config`.`setting` USING utf8 ) = 'ver' LIMIT 1 ;