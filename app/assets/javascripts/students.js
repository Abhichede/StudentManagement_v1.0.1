$(function() {
    $('input#student_date_of_birth').datepicker({
        dateFormat: 'dd-mm-yy',
        showButtonPanel: true,
        changeYear: true
    }).on('focusout', function () {
        $('div#student_date_of_birth_div').addClass('is-dirty');
    });
    $('input#admission_date').datepicker({
        dateFormat: 'dd-mm-yy',
        showButtonPanel: true,
        changeYear: true
    }).on('focusout', function () {
        $('div#admission_date_div').addClass('is-dirty');
    });
    $('input#payment_date').datepicker({
        dateFormat: 'dd-mm-yy',
        showButtonPanel: true,
        changeYear: true
    }).on('focusout', function () {
        $('div#payment_date_div').addClass('is-dirty');
    });
    $('input#payment_start_date').datepicker({
        dateFormat: 'dd-mm-yy',
        showButtonPanel: true,
        changeYear: true
    }).on('focusout', function () {
        $('div#payment_start_date_div').addClass('is-dirty');
    });
    $('input#payment_end_date').datepicker({
        dateFormat: 'dd-mm-yy',
        showButtonPanel: true,
        changeYear: true
    }).on('focusout', function () {
        $('div#payment_end_date_div').addClass('is-dirty');
    });

});