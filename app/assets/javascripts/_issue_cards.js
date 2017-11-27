$(document).ready(function(){

  // Lift card and show stats on Mouseover
  $('#issue-card').hover(function(){
      $(this).addClass('animate');
      $('div.carouselNext, div.carouselPrev').addClass('visible');
     }, function(){
      $(this).removeClass('animate');
      $('div.carouselNext, div.carouselPrev').removeClass('visible');
  });

  // Flip card to the back side
  $('#view_details').click(function(){
    $('div.carouselNext, div.carouselPrev').removeClass('visible');
    $('#issue-card').addClass('flip-10');
    setTimeout(function(){
      $('#issue-card').removeClass('flip-10').addClass('flip90').find('div.shadow').show().fadeTo( 80 , 1, function(){
        $('#issue-front, #issue-front div.shadow').hide();
      });
    }, 50);

    setTimeout(function(){
      $('#issue-card').removeClass('flip90').addClass('flip190');
      $('#issue-back').show().find('div.shadow').show().fadeTo( 90 , 0);
      setTimeout(function(){
        $('#issue-card').removeClass('flip190').addClass('flip180').find('div.shadow').hide();
        setTimeout(function(){
          $('#issue-card').css('transition', '100ms ease-out');
          $('#cx, #cy').addClass('s1');
          setTimeout(function(){$('#cx, #cy').addClass('s2');}, 100);
          setTimeout(function(){$('#cx, #cy').addClass('s3');}, 200);
          $('div.carouselNext, div.carouselPrev').addClass('visible');
        }, 100);
      }, 100);
    }, 150);
  });

  // Flip card back to the front side
  $('#flip-back').click(function(){

    $('#issue-card').removeClass('flip180').addClass('flip190');
    setTimeout(function(){
      $('#issue-card').removeClass('flip190').addClass('flip90');

      $('#issue-back div.shadow').css('opacity', 0).fadeTo( 100 , 1, function(){
        $('#issue-back, #issue-back div.shadow').hide();
        $('#issue-front, #issue-front div.shadow').show();
      });
    }, 50);

    setTimeout(function(){
      $('#issue-card').removeClass('flip90').addClass('flip-10');
      $('#issue-front div.shadow').show().fadeTo( 100 , 0);
      setTimeout(function(){
        $('#issue-front div.shadow').hide();
        $('#issue-card').removeClass('flip-10').css('transition', '100ms ease-out');
        $('#cx, #cy').removeClass('s1 s2 s3');
      }, 100);
    }, 150);

  });


  /* ----  Image Gallery Carousel   ---- */

  var carousel = $('#carousel ul');
  var carouselSlideWidth = 335;
  var carouselWidth = 0;
  var isAnimating = false;

  // building the width of the casousel
  $('#carousel li').each(function(){
    carouselWidth += carouselSlideWidth;
  });
  $(carousel).css('width', carouselWidth);

  // Load Next Image
  $('div.carouselNext').on('click', function(){
    var currentLeft = Math.abs(parseInt($(carousel).css("left")));
    var newLeft = currentLeft + carouselSlideWidth;
    if(newLeft == carouselWidth || isAnimating === true){return;}
    $('#carousel ul').css({'left': "-" + newLeft + "px",
                 "transition": "300ms ease-out"
               });
    isAnimating = true;
    setTimeout(function(){isAnimating = false;}, 300);
  });

  // Load Previous Image
  $('div.carouselPrev').on('click', function(){
    var currentLeft = Math.abs(parseInt($(carousel).css("left")));
    var newLeft = currentLeft - carouselSlideWidth;
    if(newLeft < 0  || isAnimating === true){return;}
    $('#carousel ul').css({'left': "-" + newLeft + "px",
                 "transition": "300ms ease-out"
               });
      isAnimating = true;
    setTimeout(function(){isAnimating = false;}, 300);
  });
});
