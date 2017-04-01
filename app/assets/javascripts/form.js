/**
 * Created by dipenrarai on 3/31/17.
 */

$(function() {
    $('form').submit(function( event ) {
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
});
