-- --------------------------
--       DISABLE CACHE     --
-- --------------------------
update core_cache_option set value = 0;

-- --------------------------
--     HIDE FROM ROBOTS    --
-- --------------------------
update core_config_data set value = 'NOINDEX,NOFOLLOW' where path like '%default_robots%';


-- --------------------------
--         EMAILS         --
-- --------------------------

update customer_entity set email='hack@getbrandid.com';
update newsletter_subscriber set subscriber_email='hack@getbrandid.com';
update sales_flat_order set customer_email='hack@getbrandid.com';


-- --------------------------
--      MAGENTO URLs      --
-- --------------------------

update core_config_data set value=replace(value,'http://www.getbrandid.com/','http://brandid.macbook.pro/') where path like 'web/%secure%';
update core_config_data set value=replace(value,'https://www.getbrandid.com/','http://brandid.macbook.pro/') where path like 'web/%secure%';


-- --------------------------
--  MAGENTO COOKIE DOMAIN  --
-- --------------------------

update core_config_data set value='brandid.macbook.pro' where path like 'web/cookie/cookie_domain';




-- ----------------------------
-- MAGENTO CSS/JS/MEDIA CDN --
-- ----------------------------

-- delete from core_config_data where value like '%cloudfront.%' and path like 'web/%secure%';


-- ----------------------------
--     MAGENTO ORDER IDs    --
-- ----------------------------
-- You don't want to create new orders on dev site with the same numbering (simpler payment gateways will not allow you to create orders with the same increment ids)

update eav_entity_store set increment_last_id=concat('DEV',increment_last_id), increment_prefix=concat('DEV',increment_prefix);




-- ---------------------------------------------------------------------------------
--     CUSTOM MODULES     ---------------------------------------------------------
-- ---------------------------------------------------------------------------------


-- --------------------------
--     ABANDONED CART     --
-- --------------------------

-- update adjcartalert set customer_email='hack@getbrandid.com';
-- update adjreminder set customer_email='hack@getbrandid.com';


-- --------------------------
--    ONEPICA IMAGE CDN   --
-- --------------------------

update core_config_data set value = NULL where path like 'imagecdn/general/status%';




-- --------------------------
--    GOOGLE ANALYTICS    --
-- --------------------------

update core_config_data set value = 0 where path like 'google/analytics/active%';




-- ----------------------------------------
-- ARUSH OLARK LIVECHAT                 --
-- https://github.com/arush/olark-mage  --
-- ----------------------------------------

update core_config_data set value = 0 where path like 'olark_on%';




-- ------------------------------------------------------------
-- ARUSH CHARTBEAT                                          --
-- ------------------------------------------------------------
-- https://github.com/arush/Arush-Chartbeat-Magento-Module  --
-- ------------------------------------------------------------
update core_config_data set value = 0 where path like '%chartbeat_on%';




-- --------------------------------------------
-- ARUSH MIXPANEL                           --
-- --------------------------------------------
-- https://github.com/arush/arush-mixpanel  --
-- --------------------------------------------
update core_config_data set value = 0 where path like '%mixpanel_on%';




-- -----------------------------------------------
-- ARUSH KISSMETRICS                           --
-- -----------------------------------------------
-- https://github.com/arush/arush-kissmetrics  --
-- -----------------------------------------------
update core_config_data set value = 0 where path like '%kissmetrics_on%';


-- -----------------------------------------------
-- EBIZMARTS MAGEMONKEY                        --
-- -----------------------------------------------
update core_config_data set value = 'mailchimp-dev-api-key' where path like '%monkey/general/apikey%';
update core_config_data set value = 'mailchimp-dev-list-id' where path like '%monkey/general/list%';



-- -----------------------------------------------
-- SWEET TOOTH REWARDSREF                       --
-- -----------------------------------------------
update core_config_data set value=replace(value,'http://www.getbrandid.com/','http://brandid.macbook.pro/') where path like 'rewards/referral/affiliate_redirect_url';



exit