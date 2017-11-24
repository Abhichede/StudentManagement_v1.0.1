$(function() {
    $('input#student_date_of_birth').datepicker().on('focusout', function () {
        $('div#student_date_of_birth_div').addClass('is-dirty');
    });
    $('input#admission_date').datepicker().on('focusout', function () {
        $('div#admission_date_div').addClass('is-dirty');
    });
    $('input#payment_date').datepicker().on('focusout', function () {
        $('div#payment_date_div').addClass('is-dirty');
    });;
});