<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:if test="${sessionScope.message !=null}">--%>
<%--    <b style="color: red" onload="alert(${sessionScope.message})">${sessionScope.message}</b>--%>
<%--    <c:remove var="message" scope="session" />--%>
<%--</c:if>--%>


<c:if test="${sessionScope.message !=null}">
    <script>
        $( document ).ready(function() {
            window.onload = init();
            function init() {
                var value = '${sessionScope.message}'
                if (value !="" || value !=null){
                    var style = value;
                    var time = 1200;
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
                            "top": ($(window).height() - 45) / 13,
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
