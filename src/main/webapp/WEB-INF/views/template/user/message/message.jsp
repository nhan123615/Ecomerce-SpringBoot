<c:if test="${sessionScope.message !=null}">
    <b style="color: red">${sessionScope.message}</b>
    <c:remove var="message" scope="session" />
</c:if>


