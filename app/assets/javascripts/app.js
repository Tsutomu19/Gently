
$(function() {

    const btn = document.getElementById('btn');　          //要素を取得
    const content = document.getElementById('content');

    const speech = new webkitSpeechRecognition();　        //音声認識APIの使用 speechオブジェクトを取得する

    speech.lang = "ja";

    btn.addEventListener('click' , function() {　          //クリックしたら次の操作を行いなさい
        // btn.disabled = true;                               //2度押しを防ぐ
        speech.start();
    });

    speech.addEventListener('result', function(e) {　
        $.ajax({
            url: '/posts/new',
            type: 'GET',
            date: {
                content: text　　// JSの変数の中のデータをRailsに渡す。変数text
            },
        })

        var text = e.results[0][0].transcript;　           // 認識された「言葉」を、変数「text」に格納

        content.textContent = text;　                      // 認識された「言葉(text)」を、表示用のdivタグに代入する  textContentプロパティはテキスト内容の表示

        document.getElementById("speech").value = text;     // domを使ってformへ


    });
});


