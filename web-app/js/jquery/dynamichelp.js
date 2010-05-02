window.dynamichelp = window.dynamichelp || {};
var dynamichelp = window.dynamichelp;

dynamichelp.createTip = function(id,tle,msg) {
    $(function() {
        $("#"+id+"").after( '<a href="#" id="' + id + 'HelpTip" rel="' + id + '" class="empty icon icon_help"></a>' );
        $(document.body).after(
                '<div id="'+id+'_tip">'+
                    '<div class="ui-dialog ui-widget">'+
                    '<div class="ui-dialog-titlebar ui-widget-header ui-corner-all"><strong>'+tle+'</strong></div>'+
                    '<div class="ui-dialog-content ui-widget-content">'+msg+'</div>'+
                '</div></div>');
        $("#"+id+"_tip").hide();
        $("#"+id+"HelpTip").bt({contentSelector: $("#"+id+"_tip"), width: '350px', closeWhenOthersOpen: true, shrinkToFit: 'true', positions: ['right', 'top', 'left'], margin: 0, padding: 6, fill: '#fff', strokeWidth: 1, strokeStyle: '#c2c2c2', spikeGirth: 12, spikeLength:9, hoverIntentOpts: {interval: 100, timeout: 1000}});
    });
};


