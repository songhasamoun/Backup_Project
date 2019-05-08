let btn=document.getElementById('btn');
var info = document.getElementById('info');
btn.addEventListener('click', function() {
    let requestApi = new XMLHttpRequest();

    requestApi.open('GET','https://raw.githubusercontent.com/radytrainer/api-training/master/person.json');

    requestApi.onload = function() {
        let getDta = JSON.parse(requestApi.responseText);
        renderToHtml(getDta);
        // console.log(requestApi.responseText);
    }
    requestApi.send();  
});
function renderToHtml(data) {
    var text = "<thead><tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Gender</th></tr></thead>";
    for(let i = 0; i <data.length; i++) {
        text+= "<tr><td>" + data[i].id+ "</td>" +
                "<td>" + data[i].first_name+ "</td>"+
                "<td>" + data[i].last_name+ "</td>" +
                "<td>" + data[i].email+ "</td>" +
                "<td>" + data[i].gender+ "</td>";
    }
    info.insertAdjacentHTML("Beforeend","<table>"+text+"</table");
}
