/*
 * JQuery URL Parser
 * Version 1.0
 * Parses URLs and provides easy access to information within them.
 * Author: Mark Perkins
 * Author email: mark@allmarkedup.com
 * LICENCE:
 * Released under a MIT Licence. See licence.txt that should have been supplied with this file,
 * or visit http://projects.allmarkedup.com/jquery_url_parser/licence.txt
*/
jQuery.url=function(){var e={};var b={};var d={url:window.location,strictMode:false,key:["source","protocol","authority","userInfo","user","password","host","port","relative","path","directory","file","query","anchor"],q:{name:"queryKey",parser:/(?:^|&)([^&=]*)=?([^&]*)/g},parser:{strict:/^(?:([^:\/?#]+):)?(?:\/\/((?:(([^:@]*):?([^:@]*))?@)?([^:\/?#]*)(?::(\d*))?))?((((?:[^?#\/]*\/)*)([^?#]*))(?:\?([^#]*))?(?:#(.*))?)/,loose:/^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/)?((?:(([^:@]*):?([^:@]*))?@)?([^:\/?#]*)(?::(\d*))?)(((\/(?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/}};var c=function(){str=decodeURI(d.url);var j=d.parser[d.strictMode?"strict":"loose"].exec(str);var l={};var k=14;while(k--){l[d.key[k]]=j[k]||""}l[d.q.name]={};l[d.key[12]].replace(d.q.parser,function(m,i,n){if(i){l[d.q.name][i]=n}});return l};var f=function(i){if(!b.length){a()}if(i=="base"){if(b.port!==null&&b.port!==""){return b.protocol+"://"+b.host+":"+b.port+"/"}else{return b.protocol+"://"+b.host+"/"}}return(b[i]==="")?null:b[i]};var h=function(i){if(!b.length){a()}return(b.queryKey[i]===null)?null:b.queryKey[i]};var a=function(){b=c();g()};var g=function(){var i=b.path;e=[];e=b.path.length==1?{}:(i.charAt(i.length-1)=="/"?i.substring(1,i.length-1):path=i.substring(1)).split("/")};return{setMode:function(i){strictMode=i=="strict"?true:false;return this},setUrl:function(i){d.url=i===undefined?window.location:i;a();return this},segment:function(i){if(!b.length){a()}if(i===undefined){return e.length}return(e[i]===""||e[i]===undefined)?null:e[i]},attr:f,param:h}}();