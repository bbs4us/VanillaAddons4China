<!DOCTYPE html>
<html>
<head>
  {asset name="Head"}
  {literal}
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  {/literal}
</head>
<body id="{$BodyID}" class="{$BodyClass}">
   <div id="Frame">
      <div class="Head" id="Head">
         <div class="Row">
            <strong class="SiteTitle"><a href="{link path="/"}">{logo}</a></strong>
            <div class="SiteSearch">{searchbox}</div>
            <ul class="SiteMenu">
               {discussions_link}
               {activity_link}
               {custom_menu}
            </ul>
         </div>
      </div>
      <div id="Body">
         <div class="Row">
            <div class="BreadcrumbsWrapper">{breadcrumbs}</div>
            <div class="Column PanelColumn" id="Panel">
               {module name="MeModule"}
               {asset name="Panel"}
            </div>
            <div class="Column ContentColumn" id="Content">{asset name="Content"}</div>
         </div>
      </div>
      <div id="Foot">
         <div class="Row">
            Base theme by <a href="http://designmodo.com/">DesignModo</a> &amp; ported to <a href="{vanillaurl}" class="PoweredByVanilla" title="Community Software by Vanilla Forums">Powered by Vanilla</a> by Chris Ireland         
            {asset name="Foot"}
         </div>
      </div>
   </div>
   {event name="AfterBody"}
   {literal}
   <script>
   // Scrollbar Fix, assembled from StackOverflow
   $(window).scroll(function(){
     if(isPageScrolling()){
       $('head').append('<link rel="stylesheet" href="//cdn.tama63.co.uk/van/scrollbar.css" type="text/css" />');
     }
   }); 

   function isPageScrolling() {
     var docHeight = $(document).height();
     var scroll    = $(window).height() + $(window).scrollTop();
     return (docHeight == scroll);
   }
   </script>
   {/literal} 
</body>
</html>