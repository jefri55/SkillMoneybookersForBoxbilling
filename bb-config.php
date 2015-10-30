<?php 
return array (
  'debug' => true,
  'license' =>'FREE-1E38-ZB4M-ZD73-FDD8-FA7H',
  'salt' => '2297f21e6307cb61e490fcc236cef426',
  'url' => 'https://localhost/box/',
  'admin_area_prefix' => '/bb-admin',
  'sef_urls' => true,
  'timezone' => 'Asia/Jakarta',
  'locale' => 'en_US',
  'locale_date_format' => '%A, %d %B %G',
  'locale_time_format' => ' %T',
  'path_data' => 'C:\\xampp\\htdocs\\box/bb-data',
  'path_logs' => 'C:\\xampp\\htdocs\\box/bb-data/log/application.log',
  'log_to_db' => true,
  'db' => 
  array (
    'type' => 'mysql',
    'host' => 'localhost',
    'name' => 'boxbilling',
    'user' => 'root',
    'password' => '',
  ),
  'twig' => 
  array (
    'debug' => true,
    'auto_reload' => true,
    'cache' => 'C:\\xampp\\htdocs\\box/bb-data/cache',
  ),
  'api' => 
  array (
    'require_referrer_header' => false,
    'allowed_ips' => 
    array (
    ),
    'rate_span' => 3600,
    'rate_limit' => 1000,
  ),
);