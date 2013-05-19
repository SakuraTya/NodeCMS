`function getUrlParam( paramName ) {
    var reParam = new RegExp( '(?:[\?&]|&)' + paramName + '=([^&]+)', 'i' ) ;
    var match = window.location.search.match(reParam) ;

    return ( match && match.length > 1 ) ? match[ 1 ] : null ;
}`


$ ->
	funcNum = getUrlParam 'CKEditorFuncNum'
	setTimeout ->
		window.opener.CKEDITOR.tools.callFunction(funcNum,'http://127.0.0.1/static/img/ava.png')
		window.close()
	,2000




