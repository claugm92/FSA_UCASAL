<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inicio.aspx.cs" Inherits="Challenge" %>

<!-- this is the markup. you can change the details (your own name, your own avatar etc.) but don’t change the basic structure! -->
<link href="StyleInicio.css" rel="stylesheet" />




<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css'><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css'><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css'>
<style class="cp-pen-styles">.u-text-center {
  text-align: center;
}

i.fa.fa-heart {}
.timer {
  width: 100%;
  height: 10px;
  background-color: #e6f3f8;
}
.timer .timer-value {
  height: 100%;
  background-color: #add8e6;
}
.toolbar {
  height: 60px;
  border-bottom: 1px solid #eaeaea;
  line-height: 60px;
}
.hearts .fa-heart {
  color: #f08080;
  margin-right: 3px;
}
.hearts .fa-heart:last-child {
  margin: 0;
}
.hearts .fa-heart.broken {
  color: #fce6e6;
}
.app.paused * {
  color: #b7b7b7 !important;
}
.app.paused .fa-heart.broken {
  color: #e7e7e7 !important;
}
.app.paused .timer-value {
  background-color: #d3d3d3 !important;
}
.app.gameover {
  color: rgba(51,51,51,0.8);
}
.app.gameover .result {
  background-color: rgba(211,211,211,0.2);
}
.app.gameover .timer-value {
  background-color: #f08080 !important;
}
.app .container {
  margin-top: 10%;
  text-align: center;
}
.app .container .equation {
  margin: 0;
}
.app .container .equals {
  color: #c7c7c7;
  margin: 0;
}
.app .container .result {
  text-align: center;
}
.app .container .result.success {
  border-color: #90ee90;
}
.app .container .result.error {
  border-color: #f08080;
}
.label {
  margin-right: 10px;
}
.l-success {
  color: #90ee90;
}
.l-error {
  color: #f08080;
}
.l-score {
  color: #ebeb00;
}
.input-eq {
  /*position: relative;*/
  display: inline-block;
  height: 38px;
  line-height: 38px;
  margin: 0 0 15px;
}
.input-eq input {
  width: 100%;
  left: 0;
  position: absolute;
}
.input-eq span {
  position: absolute;
  left: 10px;
  color: #a9a9a9;
  z-index: 3;
}
.input-eq span:before {
  content: "x";
  font-size: 13px;
}</style>




<aside class="profile-card">

    <div class="app">
  <div class="timer"><div class="timer-value"></div></div>
  
  <div class="toolbar row">
      <div class="four columns">&nbsp;</div>
      <div class="hearts four columns u-text-center"></div>
    </div>

  <div class="container">
    
    <div class="row">
      <div class="twelve columns">
        <h1 class="equation">VIEJITOS PIOLAS CHALLENGE</h1>
      </div>
    </div>

    <div class="row">
      <div class="twelve columns">
        <h3 class="equals">=</h3>
      </div>
    </div>

    
    <div class="row">
      <div class="four columns">&nbsp;</div>
      <div class="four columns">
        <div class="input-eq u-full-width">
          <input class="result" placeholder="Tocar para empezar" type="text" />
          <span class="combo">1</span>
        </div>
      </div>
    </div>
    
    <div class="mark">
      <span class="label l-success">
        <i class="fa fa-check"></i> <span class="success">0</span>
      </span>
      <span class="label l-error">
        <i class="fa fa-times"></i> <span class="errors">0</span>
      </span>
      <span class="label l-score">
        <i class="fa fa-trophy"></i> <span class="score">0</span>
      </span>
    </div>

  </div>
</div>

</aside>
<!-- that’s all folks! -->

<script src='//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js'></script><script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script >/*
 * feel free to fork it !:)
 */

(function ($) {

  /* SETTINGS VARIABLES */

  var elements = {
    "app": $(".app"),
    "output": $(".equation"),
    "input": $(".result"),
    "timer": $(".timer-value") };


  var ui = {
    "hearts": ".hearts",
    "success": ".success",
    "errors": ".errors",
    "rounds": ".rounds",
    "combo": ".combo",
    "score": ".score" };


  var output = {
    errors: 0,
    success: 0,
    rounds: 0,
    continued_success: 0,
    combo: 1,
    score: 0 };


  var config = {
    max_errors_allowed: 4,
    pause_game_allowed: true,
    range: [1, 99],
    init_timeout: 10000 };


  var cache = {
    "result": null,
    "timer": setTimeout(function () {}, 1),
    "timeout": config.init_timeout





    /* UTILERY FUNCTIONS */ };

  var random = function (range)
  {
    return Math.ceil(Math.random() * range[1] + range[0]);
  };

  var startTimeout = function ()
  {
    abortTimeout();
    elements.timer.animate({ width: '0%' }, cache.timeout, "linear");
    cache.timer = setTimeout(function () {validate();}, cache.timeout);
  };

  var abortTimeout = function ()
  {
    clearTimeout(cache.timer);
    elements.timer.stop();
    elements.timer.css({ width: "100%" });
  };




  /* APPLICATION LOGIC FUNCTIONS */

  var generateEq = function ()
  {
    var pasive = random(config.range);
    var active = random(config.range);

    startTimeout();

    cache.result = pasive + active;
    return pasive + " + " + active;
  };

  var validate = function ()
  {
    if (elements.input.val() == cache.result)
    success();else

    error();

    setTimeout(function () {elements.input.removeClass("success error");}, 1000);

    run();
  };




  /* UI ACTIONS */

  var success = function ()
  {
    elements.input.addClass("success");
    output.success++;
    output.continued_success++;
    if (output.continued_success >= output.combo + 1 && output.combo < 8)
    {
      output.combo++;
      output.continued_success = 1;
      if (cache.timeout > 5000)
      cache.timeout -= 1000;
    }
    output.score += 1 * output.combo;
  };

  var error = function ()
  {
    elements.input.addClass("error");
    output.errors++;
    output.continued_success = 0;
    output.combo = 1;
    cache.timeout = config.init_timeout;
    breakHeart();
  };

  var breakHeart = function ()
  {
    var h = $(ui.hearts + " :not(.broken).fa-heart"); // Select non-broken hearts
    $(h.get(h.length - 1)).addClass("broken");
  };

  var refreshMark = function ()
  {
    $.each(ui, function (key, element)
    {
      if (key == 'hearts') return;
      $(element).html(output[key]);
    });
    elements.input.val("");
  };



  /* APPLICATION STATUS FUNCTIONS */

  var pause = function ()
  {
    abortTimeout();
    elements.output.html("Paused");
    elements.app.addClass("paused");
    cache.result = false;
  };

  var gameover = function ()
  {
    abortTimeout();
    elements.app.addClass("gameover");
    elements.output.html("<i class='fa fa-wheelchair'></i> GAME OVER");
    elements.input.attr("disabled", 1);
    elements.input.attr("placeholder", "Refresca para volver a jugar");
    cache.result = Math.random();
  };




  /* ONE-TIME-RUN FUNCTIONS */

  var addListeners = function ()
  {
    elements.input.on('focusin', function () {
      if (!cache.result) setTimeout(run, 100);
    });

    elements.input.on('focusout', function () {
      if (output.errors < config.max_errors_allowed)
      pause();
    });

    elements.input.on('keyup', function (e) {
      if (e.which == 13 || $(this).val() == cache.result) validate();
    });

  };

  var generateHearts = function ()
  {
    $(ui.hearts).html("");
    for (var i = 1; i <= config.max_errors_allowed; i++) {if (window.CP.shouldStopExecution(0)) break;
      $(ui.hearts).append("<i class='fa fa-heart'></i>");
    }window.CP.exitedLoop(0);;
  };




  /* MAIN */

  var run = function ()
  {
    elements.app.removeClass("paused");

    output.rounds++;
    refreshMark();

    if (output.errors >= config.max_errors_allowed)
    gameover();else
    if (!$(":focus").hasClass("result") && config.pause_game_allowed && output.rounds > 1)
    pause();else

    elements.output.html(generateEq());
  };

  /* RUN */
  generateHearts();
  addListeners();

})(jQuery);
//# sourceURL=pen.js
</script>