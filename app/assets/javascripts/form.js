/**
 * Created by dipenrarai on 3/31/17.
 */

$(function() {
    $('form').submit(function( event ) {
        event.preventDefault();
        var request = $.post( $(this).attr('action'), $(this).serialize());
        request.done(function(data){
            $('#resultContainer').html(data);
        });
        request.fail(function( jqXHR, textStatus ) {

        });
        request.always(function(){
            $('#resultContainer').removeClass("hidden");
        });
    });

    $('#inputProductName').change( function( event ) {
        $('#searchSemantics').find('#page').val('1');
    });
});
