$(document).ready(function () {
    $('#btnSearch').click(function(event){
        event.preventDefault();
        let data = JSON.stringify( $("#blocks").val());

        $.ajax({
            url: "http://localhost:9699/student/attendanceReport",
            data: data,
            type: "POST",
            contentType: "application/json",
            dataType: "json",
            
            success: function(result){

                $("#ajaxId").empty();
                $("#ajaxId").append('<H3>Sessions: ' + result.sessions+'</H3><p>');
                $("#ajaxId").append('<H3>Attended: ' + result.attended+'</H3><p>') ;
                $("#ajaxId").append('<H3>Percentage: ' + result.percentage+'</H3><p>') ;
                $("#ajaxId").append('<H3>CreditScore: ' + result.creditScore+'</H3><p>').show();

            },
            error: function () {

                $("#ajaxId").empty();
                $("#ajaxId").append("<h2>FAILED</h2>").show();
            }
        });
    });
});
