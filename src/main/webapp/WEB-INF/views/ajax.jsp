<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>ajax testing</h1>

<table border="1" id="tblUser">
    <thead>
    <tr>
        <th>id</th>
        <th>username</th>
        <th>role</th>
        <th>enable</th>
    </tr>
    </thead>
   <tbody></tbody>
</table>

<hr>

<select name="username" id="username" >
</select>
<hr>

<div id="checkboxUsername">
</div>


<script>
    var username = document.querySelector('#username');
    var checkboxUsernameDiv = document.querySelector('#checkboxUsername');

    var tblUser = document.querySelector('#tblUser tbody');

    const data = null;
    const xhr = new XMLHttpRequest();
    xhr.addEventListener("readystatechange", function () {
        if (this.readyState === this.DONE) {
            var json = JSON.parse(this.responseText);
            username.innerHTML = getSelectUser(json)
            tblUser.innerHTML = getUserTable(json)
            checkboxUsernameDiv.innerHTML= getChekboxUser(json)
        }
    });

    xhr.open("GET", "${pageContext.request.contextPath}/rest");
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(data);


    //select box
    username.addEventListener('change', function() {
        const data = null;
        const xhr = new XMLHttpRequest();
        xhr.addEventListener("readystatechange", function () {
            if (this.readyState === this.DONE) {
                var json = JSON.parse(this.responseText);
                tblUser.innerHTML = getUserTable(json)
            }
        });

        if (this.value =='all'){
            xhr.open("GET","${pageContext.servletContext.contextPath}/rest");
        }else{
            xhr.open("GET", "${pageContext.servletContext.contextPath}/rest?username="+this.value);
        }
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(data);
    });


    checkboxUsernameDiv.addEventListener('click', function() {
        var checkboxUsername = document.querySelectorAll('#checkboxUsername input[name="checkboxUser"]');
        var query =""
        for (const checkbox of checkboxUsername) {

            if (checkbox.checked){
                console.log(checkbox.value)
                query +="username="+checkbox.value+"&"
            }

        }
        query = query.substring(0, query.length - 1)
        console.log(query)
        const data = null;
        const xhr = new XMLHttpRequest();
        xhr.addEventListener("readystatechange", function () {
            if (this.readyState === this.DONE) {
                var json = JSON.parse(this.responseText);
                tblUser.innerHTML = getUserTable(json)
            }
        });

        if (this.value =='all'){
            xhr.open("GET","${pageContext.servletContext.contextPath}/rest/checkbox");
        }else{
            xhr.open("GET", "${pageContext.servletContext.contextPath}/rest/checkbox?"+query);
        }
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(data);

    });

    function  getUserTable(json) {
        var userTable =""
        for (let i = 0; i <json.length; i++) {
            userTable += " <tr>"
            userTable +="<td>"+json[i].id+"</td>"
            userTable +="<td>"+json[i].username+"</td>"
            userTable +="<td>"+json[i].role+"</td>"
            userTable +="<td>"+json[i].enabled+"</td>"
            userTable+="</tr>"
        }
        return userTable;
    }

    function  getSelectUser(json) {
        var selectUser ="<option value='all' selected>All</option>"
        for (let i = 0; i <json.length; i++) {
            selectUser +=   " <option value="+json[i].username+">"+json[i].username+"</option>"
        }
        return selectUser;
    }

    function  getChekboxUser(json) {
        var checkboxUser =""
        for (let i = 0; i <json.length; i++) {
            checkboxUser +=   "  <input type='checkbox' name='checkboxUser' value='"+json[i].username+"' >"+json[i].username +"</br>"
        }
        return checkboxUser;
    }

</script>

</body>
</html>