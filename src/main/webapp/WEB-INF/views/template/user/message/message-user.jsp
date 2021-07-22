<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${sessionScope.message !=null}">
    <script>
        $( document ).ready(function() {
            window.onload = init();
            function init() {
                var value = '${sessionScope.message}'
                if (value !="" || value !=null){
                    var style = value;
                    var time = 4000;
                    var message;
                    switch(value){
                        case "alert-success": message ="Successful !";break;
                        case "alert_warning": message ="error warning";break;
                        case "alert-danger": message = "Failed !";break;
                        case "alert_info": message ="Data not found";break;
                        default:
                            if (value.toLocaleLowerCase().includes("invalid")||value.toLocaleLowerCase().includes("failed")){
                                style = "alert-danger";
                            }else{
                                style = "alert-success";
                            }
                            message =value ;

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
            }
        });

    </script>

    <c:remove var="message" scope="session" />
</c:if>


<c:if test="${param.containsKey('error')}">
    <script>
        $( document ).ready(function() {
            window.onload = init();
            function init() {
                var value = "Account invalid !"
                if (value !="" || value !=null){
                    var style = value;
                    var time = 3000;
                    var message;
                    switch(value){
                        case "alert-success": message ="Successful !";break;
                        case "alert_warning": message ="error warning";break;
                        case "alert-danger": message = "Failed !";break;
                        case "alert_info": message ="Data not found";break;
                        default:
                            if (value.includes("invalid")||value.includes("failed")){
                                style = "alert-danger";
                            }else{
                                style = "alert-success";
                            }
                            message =value ;

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
            }
        });

    </script>
</c:if>