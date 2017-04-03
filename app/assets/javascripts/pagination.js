/**
 * Created by dipenrarai on 3/31/17.
 */

$(function() {
    $( "body" ).delegate( "._nav", "click", function() {
        event.preventDefault();
        var page = $(this).data('page');
        $('#searchSemantics').find('#page').val(page);
        $('#searchSemantics').submit();
    });
});
