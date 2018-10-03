$(document).ready(function() {
  renderChartFatturazioneMensile();
  //gestione FORM
  $("#form-cliente-deroga-box").click(function(){
     $("#form-cliente-deroga-container").toggle();
  });
  
  $('#modal-aggiungi-elemento').on('show.bs.modal', function (e) {
    document.getElementById("form-aggiungi-elemento").reset();
  });
  
  $("#form-aggiungi-elemento-save").click(function(){
     $('<input>').attr({
        type: 'hidden',
        name: 'form-cliente-tipo[]',
        value: $("#form-cliente-tipo").val()
    }).appendTo('#form-cliente');
    
    $("#form-cliente-elementi").find('tbody')
    .append($('<tr>')
        .append($('<td>')
            .text($( "#form-cliente-tipo option:selected" ).text())
        )
        .append($('<td>')
            .text($( "#form-cliente-pagina option:selected" ).text())
        )
        .append($('<td>')
            .text($( "#form-cliente-posizione option:selected" ).text())
        )
        .append($('<td>')
            .text($( "#form-cliente-dtinizio" ).val() + " - " + $( "#form-cliente-dtfine" ).val())
        )
        .append($('<td>')
            .text("azioni")
        )               
    );
    
    
     $('#modal-aggiungi-elemento').modal('hide');
  });
 
  
  
  $(window).scroll(function() {
      if($(this).scrollTop() > 100)
      {
          $('.navbar-inverse').addClass('afterscroll');
          $('.sidebar').addClass('afterscroll');
        $('.hamburger').addClass('afterscroll');
      } else
      {
          $('.navbar-inverse').removeClass('afterscroll');
          $('.sidebar').removeClass('afterscroll');
        $('.hamburger').removeClass('afterscroll');
      }  

  });  
  
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
      isClosed = false;

    trigger.click(function () {
      hamburger_cross();      
    });

    function hamburger_cross() {

      if (isClosed == true) {
        overlay.show();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {
        overlay.hide();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }
  
  $('[data-toggle="offcanvas"]').click(function () {
        $('.main').toggleClass('toggled');
        $('.sidebar').toggleClass('toggled');
        $('.hamburger').toggleClass('toggled');
  });    
  
  
});


function inserimentoContratto () {
  console.log($("#form-cliente").serializeArray());
}

function renderChartFatturazioneMensile () {
  var ctx = document.getElementById("chartFatturazioneMensile");
  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: ["gennaio", "febbraio", "marzo", "aprile", "maggio", "giugno"],
          datasets: [{
              label: '€ fatturazione mensile',
              data: [1000, 500, 2100, 550, 200, 310],
              backgroundColor: [
                  'rgba(20, 156, 130, 0.2)'
              ],
              borderColor: [
                  'rgba(20, 156, 130, 1)'
              ],
              borderWidth: 1
          }]
      },
      options: {
        tooltips: {
               callbacks: {
                    label: function(tooltipItems, data) { 
                        return ' ' + tooltipItems.yLabel.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + ' €';
                    }
                }
            },
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero:true,
                      callback: function(value, index, values) {
                          return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + ' €';
                      }
                  }
              }]
          }
      }
  });
}