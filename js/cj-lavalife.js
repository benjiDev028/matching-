/*
* Also look at cjAffiliate directive in app.js
*/

function getParameterByName(name) {
    var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
    return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
}

jQuery(document).ready(function ($) {
    
    // this will ensure that query string will be appended in every href on the page
    // http://stackoverflow.com/a/23035665
    var theName = 'source';
    var persistedQueryParam = getParameterByName( theName );
    
    // if source=cjaffiliate is found in query string
    if (persistedQueryParam && persistedQueryParam.length > 0) {
        
        // append source=cjaffliate to all href(s)
        $('a[href]').each(function () {
          var elem = $(this);
          var href = elem.attr('href');
          elem.attr('href', href + (href.indexOf('?') != -1 ? '&' : '?') + theName + '=' + persistedQueryParam);
        });
        
        // set cookie
        $.cookie("Source", persistedQueryParam, {
            expires: 45,
            path: '/',
        });
    }
});
