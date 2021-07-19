function msg(value){
    var style = value;
    var time = 3000;
    var message;
    switch(value){
        case "alert-success": message ="Successful !";break;
        case "alert_warning": message ="error warning";break;
        case "alert-danger": message = "Failed !";break;
        case "alert_info": message ="Data not found";break;
        default:
            message =value ;
            style = "alert-success";
    }


    $('<div id="promptModal">')
        .appendTo('body')
        .addClass('alert ' + style)
        .css({
            "display": "block",
            "z-index": 99999,
            "left": ($(document.body).outerWidth(true) - 180),
            "top": ($(window).height() - 45)/5 ,
            "position": "absolute",
            "padding": "20px",
            "border-radius": "5px",
            "width":"200px",
            "text-align":"center",

        })
        .html(message)
        .show()
        .delay(time)
        .fadeOut(10, function () {
            $('#promptModal').remove();
        });
}