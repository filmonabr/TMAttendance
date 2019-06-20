$(document).ready(function () {
    $('#btnSearch').click(function(event){
        event.preventDefault();
        let data = JSON.stringify( $("#blocks").val());

        $.ajax({
            url: "http://localhost:2019/student/attendanceReport",
            data: data,
            type: "POST",
            contentType: "application/json",
            dataType: "json",


            
            success: function(result){

                $("#ajaxId").empty();
                $("#ajaxId").append('<p>Sessions: ' + result.sessions+'</p>');
                $("#ajaxId").append('<p>Attended: ' + result.attended+'</p>') ;
                $("#ajaxId").append('<p>Percentage: ' + result.percentage+' %</p>') ;
                $("#ajaxId").append('<p>CreditScore: ' + result.creditScore+'</p>').show();

            },
            error: function () {

                $("#ajaxId").empty();
                $("#ajaxId").append("<h2>FAILED</h2>").show();
            }
        });
    });
});
