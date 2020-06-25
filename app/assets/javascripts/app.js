
$(function() {

    var btn = document.getElementById('btn');
    var content = document.getElementById('content');

    var speech = new webkitSpeechRecognition();

    speech.lang = "ja";

    btn.addEventListener('click' , function() {
        // btn.disabled = true;
        speech.start();
    });

    speech.addEventListener('result', function(e) {
        $.ajax({
            url: '/posts/new',
            type: 'GET',
            date: {
                content: text
            },
        })

        var text = e.results[0][0].transcript;

        content.textContent = text;

        document.getElementById("speech").value = text;


    });
});


