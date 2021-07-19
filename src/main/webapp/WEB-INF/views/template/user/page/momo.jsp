<h1>Momo Payment Request</h1>
<%--${payment}--%>
<br>
<pre>
{
"partnerCode" : "${payment['partnerCode']}",
"orderId" :"${payment['orderId']}",
"orderInfo" :"${payment['orderInfo']}",
"accessKey" :"${payment['accessKey']}",
"amount" :"${payment['amount']}",
"signature" :"${payment['signature']}",
"extraData" :"${payment['extraData']}",
"requestId" :"${payment['requestId']}",
"notifyUrl" :"${payment['notifyUrl']}",
"returnUrl" :"${payment['returnUrl']}",
"requestType" :"${payment['requestType']}"
}
</pre>
