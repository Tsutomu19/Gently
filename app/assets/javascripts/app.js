
$(function() {

    const btn = document.getElementById('btn');
    const content = document.getElementById('content');

    const speech = new webkitSpeechRecognition();　 //音声認識APIの使用

    speech.lang = "ja";

    btn.addEventListener('click' , function() {
        speech.start();
    });

    speech.addEventListener('result', function(e) {　

        var text = e.results[0][0].transcript;　// 認識された「言葉」を、変数「text」に格納

        content.textContent = text;　// 認識された「言葉(text)」を、表示用のdivタグに代入する

    });
});
