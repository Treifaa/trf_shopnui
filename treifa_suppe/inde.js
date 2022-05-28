
$(function() {
    $('body').hide();
    window.addEventListener('message', function(event) {
        var data = event.data;
        if (data.action == 'showui') {
        $('body').fadeIn();
    
        } else {
            $('body').hide();
        }
    });

    $(document).keyup(function(e) {
        if (e.keyCode == 27) {
            $.post('https://treifa_suppe/close');
            $("body").fadeOut();
        }
    })




    
})




function boiss() {
    $.post('https://treifa_suppe/boiss', JSON.stringify({}))
}  

function pain() {
    $.post('https://treifa_suppe/pain', JSON.stringify({}))
}   

function cook() {
    $.post('https://treifa_suppe/cook', JSON.stringify({}))
}   