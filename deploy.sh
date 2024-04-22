#!/bin/sh
php bin/magento maintenance:enable;
 rm -rf var/cache/* var/di/* var/generated/* var/page_cache/*
 rm -rf pub/static/*;
 php bin/magento setup:upgrade;
 php bin/magento setup:di:compile;
 php bin/magento setup:static-content:deploy -f en_US
 php bin/magento cache:flush;
 php bin/magento cache:clean;
 php bin/magento maintenance:disable;

