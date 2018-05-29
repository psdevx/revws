{*
* Copyright (C) 2017 Petr Hucik <petr@getdatakick.com>
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@getdatakick.com so we can send you a copy immediately.
*
* @author    Petr Hucik <petr@getdatakick.com>
* @copyright 2018 Petr Hucik
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*
*
*                             WARNING
*
*   do NOT MODIFY this template unless you modify javascript as well
*
*
*}
{assign "product" $reviewEntities.products[$review.productId]}
{strip}
<div class="revws-review-with-product">
  <div>
    <a href="{$product.url}">
      <img src="{$product.image}" alt="{$product.name|escape:'html':'UTF-8'}"></img>
    </a>
  </div>
  <div class="revws-review-wrapper">
    <h2>
      <a href="{$product.url}">{$product.name|escape:'html':'UTF-8'}</a>
    </h2>
    {include
      file=revws::getWidgetTemplate('list/item')
      review=$review
      shopName=$shopName
      criteria=$criteria
      shape=$shape
      displayCriteria=$displayCriteria
      microdata=false
    }
  </div>
</div>
{/strip}