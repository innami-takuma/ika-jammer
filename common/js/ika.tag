<ika>

  <div class="wrap-all">
    <header class="header">
      <h1>Ika Jammer</h1>
      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 100 100" preserveAspectRatio="none" id="header-bg">
      <path d="M0,0 v50 q10,10 20,0 t20,0 t20,0 t20,0 t20,0 v-50 Z" fill="#252424"></path>
      </svg>
    </header>

    <div class="tree">
      <img src="common/img/tree1.svg" alt="">
    </div>

    <div class="bg-city"></div>

    <div class="main-content">
      <ul class="list-btn">
        <li id="btn-1" class={'clicked': btn1Painted}><a href="#" onclick={showSlot}>スロットを<br>まわす</a></li>
        <li id="btn-2" class={'clicked': btn2Painted}><a href="#" onclick={showList}>Jammer<br>リスト</a></li>
      </ul>
      <p></p>
    </div>

    <div class={'slot-container': true, 'show': slotIsShow}>
      <div class="slot-bg-1"></div>
      <div class="slot-bg-2"></div>
      <div class="slot-container-inner">
        <div class="slot-container-inner-adjust">
          <h2>Jammer Slot</h2>
          <div class="slot-content">
            <div class={'slot': true, 'start': isSlotStarted}>
              <p>?????</p>
              <ul class="slot-jammer-list" id="js-slot">
                <li class="lines">ぜんいん<br>リッター4K</li>
                <li class="lines">ぜんいん<br>タケ</li>
                <li class="lines">ぜんいん<br>パブロ</li>
                <li class="lines">ぜんいん<br>ホクサイ</li>
                <li class="lines">ぜんいん<br>ダイナモ</li>
                <li class="lines">ぜんいん<br>スパイガジェット</li>
                <li class="lines">ぜんいん<br>パラシェルター</li>
                <li class="lines">ぜんいん<br>リールガン</li>
                <li class="lines">スペシャル<br>ナイスダマのみ</li>
                <li class="lines">スペシャル<br>バブルのみ</li>
                <li class="lines">スペシャル<br>ハンコのみ</li>
                <li class="lines">シューター<br>禁止</li>
                <li class="lines">ジャイロ機能<br>OFF</li>
                <li class="lines">ジャイロ機能<br>リバース</li>
              </ul>
            </div>
            <ul class={'slot-list-btn': true, 'disabled': !isSlotBtnAlive}>
              <li><a href="#" onclick={slotStart}>Start</a></li>
              <li><a href="#" onclick={hideSlot}>Back</a></li>
            </ul>
          </div>
          <p class="slot-desc">Push start button.</p>
        </div>
      </div>
    </div>

    <div class={'list-container': true, 'show': listIsShow}>
      <h2>Jammer List</h2>
      <a href="#" class="btn-list-close" onclick={hideList}></a>
      <ul class="jammer-list">
        <li>ぜんいん<br>リッター4K</li>
        <li>ぜんいん<br>タケ</li>
        <li>ぜんいん<br>パブロ</li>
        <li>ぜんいん<br>ホクサイ</li>
        <li>ぜんいん<br>ダイナモ</li>
        <li>ぜんいん<br>スパイガジェット</li>
        <li>ぜんいん<br>パラシェルター</li>
        <li>ぜんいん<br>リールガン</li>
        <li>スペシャル<br>ナイスダマのみ</li>
        <li>スペシャル<br>バブルのみ</li>
        <li>スペシャル<br>ハンコのみ</li>
        <li>シューター<br>禁止</li>
        <li>ジャイロ機能<br>OFF</li>
        <li>ジャイロ機能<br>リバース</li>
      </ul>
    </div>

    <a href="#" id="btn-howto" onclick={showHowto}>i</a>

    <div class={'howto-container': true, 'show': howtoIsShow}>
      <h2>How to use</h2>
      <a href="#" class="btn-howto-close" onclick={hideHowto}></a>
      <div class="howto-inner">
        <h3>利用条件</h3>
        <p>チーム総当たり戦において、バトルの<span>勝利数の差が2以上ひらいた時</span>に、<span>負けている側のチームが勝っているチームに対して使う</span>ことができます。</p>
        <h3>使い方</h3>
        <ol>
        <li>「スロットをまわす」からスロット画面に移動します。</li>
        <li>「Start」ボタンを押下するとスロットが回り出します。</li>
        <li>そのまましばらく待つとスロットの結果が出るので、<span>表示されたJammerの内容を相手チームに科してください</span>。</li>
        </ol>
        <h3>各Jammerについて</h3>
        <ul>
        <li>「ぜんいん〜〜（ブキ指定）」のJammerに関しては、基本的に使用したいブキ名にその名前が入っていればokです。（例:「ぜんいんパブロ」でパブロ・ヒューを使う 等）</li>
        <li>「スペシャル〜〜（スペシャル指定）」のJammerに関しては、そのスペシャルウェポンが付いているブキであればどんなブキを使ってもokです。</li>
        </ul>
      </div>
    </div>

  </div>


  <script>

    var pathes = {
      from: 'M212.4,264.6c0.9-2.3,0.5-3.9-1.1-5.6c-1.6-1.6-2.8-1.7-4.3-2.2s-8.4-2.2-9.8-3.6c-1.4-1.4-2-3.4-1.1-6c0.9-2.6,1.8-3.5,4.5-5.7s5.8-5.1,6.8-8.1c1-3,0.7-2.4,0.5-4.4c-0.3-2.6-1.7-5.9-2.5-7.7s-1.5-4.1-0.6-6.4s2.5-3.3,4.4-4.3c1.9-1,8.6-1.1,11.8-3.1c3.2-2-15-16.8-12-19.3c4.3-3.6,18.7,19.3,16.1,3.1c0.9-3.1,10.3,6.2,14,1.7c3.7-4.5,0.9-11.8,4-14.1c3.1-2.3,7.7,3.5,8.7,4.5s5.3,4.9,8.6,5.4s7.7-1.7,8.8-2.4c1.2-0.7,5.6-4.4,8.2-3.5s2.3,6.3,5,6.3s7.8-22.3,11.3-22c3.6,0.3-5.8,24.2-3,25c2.8,0.8,3.9-2.8,5.8-2.2c1.9,0.6,2.5,4.7,2.5,4.7s1.1,3.6,2.5,5.2s2.6,2.4,4.1,3.1c2.5,1.1,5,0.6,6.3,0.6s5.6,0,5.6,0s3.5,0.3,5,1s2.8,2.3,3.1,3.5s0.2,2.5-0.4,3.9c-0.6,1.5-1.4,2.6-2.8,4c-1.4,1.4-3,4.3-3,6.3s0.1,4.1,2.8,6.2c2.8,2.1,20.9,5.3,20.9,7.3s-19.4,3.5-19.4,6.1s5.7,1.5,5.7,3.8c0,2.3-5,2.4-6.3,3.1c-1.3,0.8-2,1.5-2.2,2.9c-0.1,2.1,0.8,3.3,1.2,4s1.6,2.1,1.8,3.2c0.2,1.1,0.3,0.6,0,2.7s-1.8,3-2.6,3.7c-0.9,0.7-3.7,1.7-4.5,2.1c-0.8,0.4-3.2,1.5-3.9,2.2c-0.7,0.7-1.8,1.5-1.1,4.8s3.8,9,1.6,11.3c-3.6,3.6-19.9-3.2-23.7-2.6c-3.8,0.6-4,2-4.7,3.1s-1,5-1.3,8.6c-0.2,3.7,0.1,13,0.1,13.8s-0.2,2.7-2.3,3.2s-3.6-2.5-3.6-2.5s-3.4-9.2-4.8-12.4c-1.3-2.9-2.7-5.4-4.6-7.2c-3.1-2.7-5.8-0.2-7.3,1.6c-1.5,1.8-4.6,5.3-4.6,5.3s-4,3.9-6.3,3.6c-2.3-0.3-3.7-1.6-5.7-3.4c-2-1.8-2.1-3.1-4.3-3.9s-3.5,0-6.4,0.3c-3.4,0.3-4.6,0.7-7.8,0.4c-3-0.3-5.1-1.9-6-3.3c-1.4-2.3-1.7-4-1.4-5.7c0.3-1.7,2.8-4.9,2-7.2c-0.8-2.3-24.9,11.9-26.9,9.9S211.5,266.8,212.4,264.6z',
      to: 'M73.9,337.5c21.3-4.9,63.2-13.6,57.5-34.2c-5.8-20.9-33.1-3.4-39.1,1c-5.9,4.4-28.7,19.3-34.9,11.3c-6.1-8.1,3.9-16.3,13.3-20.2c9.3-3.9,34.6-8.9,38.1-20.1c7.7-24.5-23.4-29.4-22.6-43.7c0.9-15.4,18.2-11.7,24.6-30.8c2.3-6.8-4.6-11.5-16.4-35c-0.7-1.5-3.3-8.6-3-10.3c2.5-15.8,51.8,9.2,58.1-8.5c2.6-7.4-26.5-39.9-32.1-48.3c-11-16.6,1.6-22.1,6.5-19.7c9.3,4.7,40.8,45.2,47.5,43.2c8-2.3,3-17.5,19.5-21.3c29.2-6.7,20.8-7.9,29.2-23.3c4.9-8.9,23-11.1,37.3-2.8c6.7,3.8,15.8,7.9,21.1,6.1c8.1-2.8,16.2-11.4,16.9-19c0.8-7.7,9.7-20.5,21.6-16.8c11.9,3.8,12,14.5,8.5,25.6c-1.8,5.6,0.3,14.1,5,19.4c2.4,2.7,15.5-6.5,20.2-5.2c4.8,1.3-0.1,17.8,5.1,16.6c9.3,2.4,16-3.4,20.8,2.7c6,7.6,20-19.2,29.4-20.2c1.5-0.2,3-0.2,4.5-0.1c10.4,0.4,16.2,11.6,9.2,18.6c-0.7,0.7-1.5,1.3-2.4,1.7c-6.9,3.3-19,3.4-25.3,9c-6.3,5.6-5,12.4-1.5,13.4c3.5,1,19.1,10.4,20.2,23.8c1.1,13.4-7.2,18.8-3.5,27.5c3.7,8.6,17.6,16.7,22.5,27.4c4.9,10.7-5.3,23.1-1.2,28.7c4.1,5.6,13,4.7,19.7,3.2c6.7-1.5,24.4-8,28.4,1.8c4,9.8-6.3,14.6-13.6,14.4c-7.3-0.2-19.7-8-30-0.3c-5.5,4.2-4.7,7.9-2.8,10.5c1.7,2.3,4.4,3.6,7.3,3.9c3.4,0.3,9.5,0.5,18.9-0.2c25.2-1.9,41.2,11.3,38.1,24c-3.1,13-30,12.7-43.3,6.8c-13.3-5.8-35.2-7.1-40.4,5.4c-5,12.1-3.4,16.9,10.6,26.6c9,6.3,64.4,16.4,45.8,37.6c-12.3,14-42.1-20.8-53.5-25c-13.8-5.1-18-4.5-27.8,1c-18.4,10.3,5.5,27.1-5.4,29.7c-10.7,2.5-45-14.3-52.5-13.9c-9.7,0.5-20.7,7.2-14,36.3c0.1,0.7,0.4,1.3,0.6,1.9c12.6,28.4,22.5,62.8-1.6,66c-24.3,3.3-23.6-36.3-25.8-60.9c-2.2-26.2-27.6-24.8-35.6-18.9c-9.1,6.7-16.9,23.6-18.2,30.7c-1.1,3.1-4.3,5.7-6,2.4c-1.9-3.6-4.2-22.2-10.3-20.8c-6.1,1.4-14.9,12.3-23.8,23.5c-8.9,11.2-15,11.3-16.4,7.6c-2.7-7.2,13.6-33.9,9.2-45.3c-4.4-11.4-14-2-23.1-14.5c-6.7-9.1-3.3-24-13.3-25.2c-10.6-1.3-17.3,3.4-24.4,10.3c-7.2,7-19.3,28-36.4,37.7c-19,10.8-34,7-42-0.7C30.2,373.1,37.9,345.7,73.9,337.5z'
    };
    this.slotIsShow = false;
    this.listIsShow = false;
    this.howtoIsShow = false;
    this.btn1Painted = false;
    this.btn2Painted = false;
    this.isSlotStarted = false;
    this.isSlotBtnAlive = true;

    this.on('mount', function () {

      this.s1 = Snap(200, 200).remove();
      this.s2 = Snap(200, 200).remove();
      this.s1.attr({viewBox:'0, 0, 500, 500'});
      this.s2.attr({viewBox:'0, 0, 500, 500'});

      this.s1.appendTo(document.getElementById('btn-1'));
      this.s2.appendTo(document.getElementById('btn-2'));
      this.slot = document.getElementById('js-slot');
    });

    var self = this;

    showSlot (e) {
      e.preventDefault();
      this.btn1Painted = true;
      this.isSlotStarted = false;
      this.update();
      this.path1 = this.s1.path({
        path: pathes.from,
        fill:'#F65883'
      });
      this.path1.animate({
        path: pathes.to,
        fill:'#F65883'
      }, 250, mina.easeinout, function () {
        // callback
        self.slotIsShow = true;
        self.update();
      });
    }

    hideSlot (e) {
      e.preventDefault();
      this.btn1Painted = false;
      this.slotIsShow = false;
      this.path1.remove();
      this.update();
    }

    showList (e) {
      e.preventDefault();
      this.btn2Painted = true;
      this.path2 = this.s2.path({
        path: pathes.from,
        fill:'#F65883'
      });
      this.path2.animate({
        path: pathes.to,
        fill:'#F65883'
      }, 250, mina.easeinout, function () {
        // callback
        self.listIsShow = true;
        self.update();
      });
    }

    hideList (e) {
      e.preventDefault();
      this.listIsShow = false;
      this.btn2Painted = false;
      this.path2.remove();
      this.update();
    }

    showHowto (e) {
      e.preventDefault();
      this.howtoIsShow = true;
      this.update();
    }

    hideHowto (e) {
      e.preventDefault();
      this.howtoIsShow = false;
      this.update();
    }

    slotStartAnim () {
      this.isSlotStarted = false;
      this.isSlotBtnAlive = false;
      this.update();
      anime({
        targets: '.slot-bg-2',
        opacity: 1,
        duration: 0,
        complete: function() {
          anime({
            duration: 1000,
            complete: function() {
              self.slotLotteryAnim();
            }
          });
        }
      });
    }

    randNumInRange (min, max) {
      return Math.floor(Math.random() * (max + 1 - min) + min);
    };

    eq (selector, index) {
      var nodeList = document.querySelectorAll(selector),
          length = nodeList.length;
      if (0 < index && index < length) {
        return nodeList[index];
      }
      if (0 <= length + index) {
        return nodeList[length + index];
      }
      return null;
    };

    slotLotteryAnim () {
      var itemMaxIdx = this.slot.childElementCount - 1;
      var count = 0;
      var resultNum = 0;
      var timer;
      this.isSlotStarted = true;
      this.update();
      timer = setInterval(function () {
        count++;
        resultNum = self.randNumInRange(0, itemMaxIdx);
        self.slot.style.transform = 'translateY(-' + resultNum * 150 + 'px)';
        self.update();
        if (count === 30) {
          clearInterval(timer);
          anime({
            targets: self.slot.children[resultNum],
            direction: 'alternate',
            scale: 1.3,
            rotate: 3,
            duration: 200,
            easing: 'linear'
          });
          anime({
            targets: '.slot-bg-2',
            opacity: 0,
            delay: 1000,
            duration: 1000,
            complete: function() {
              self.isSlotBtnAlive = true;
              self.update();
            }
          });
        }
      } , 100);
    }

    slotStart (e) {
      e.preventDefault();
      this.slotStartAnim();
    }

  </script>

</ika>