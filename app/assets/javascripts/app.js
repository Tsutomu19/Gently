
const btn = document.getElementById('btn');
const content = document.getElementById('content');

//音声認識APIの使用
const speech = new webkitSpeechRecognition();
//言語を日本語に設定
speech.lang = "ja";


btn.addEventListener('click' , function() {
    speech.start();
});

speech.addEventListener('result', function(e) {

    var text = e.results[0][0].transcript;

    content.textContent = text;

});
