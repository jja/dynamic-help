window.dynamichelp = window.dynamichelp || {};
var dynamichelp = window.dynamichelp;

dynamichelp.createTip = function(id,selector, title,msg) {
    $(function() {
        $(selector).after( '<a href="#" id="' + id + 'HelpTip" rel="' + id + '" class="empty icon icon_help"></a>' );
		  var tipId = id + '_tip';
        $(document.body).after(
                '<div id="'+tipId+'" style="position:relative;">'+
                    '<div class="ui-dialog ui-widget">'+
                    '<div class="ui-dialog-titlebar ui-widget-header ui-corner-all"><strong>'+title+'</strong></div>'+
                    '<div class="ui-dialog-content ui-widget-content">'+msg+'</div>'+
                '</div></div>');
        $("#"+tipId).hide();
        $("#"+id+"HelpTip").bt({contentSelector: $("#"+tipId), width: '350px', closeWhenOthersOpen: true, shrinkToFit: 'true', positions: ['right', 'top', 'left'], margin: 0, padding: 6, fill: '#fff', strokeWidth: 1, strokeStyle: '#c2c2c2', spikeGirth: 12, spikeLength:9, hoverIntentOpts: {interval: 100, timeout: 1000}});
    });
};


