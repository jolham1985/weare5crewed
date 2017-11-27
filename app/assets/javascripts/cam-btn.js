$(document).ready(function() {
  $('.cam-btn').on("click", function(){
    $('.attachinary-input').click()
  });
  $('.attachinary-input').on("fileuploaddone", function(){
    setTimeout(function() {
      $('#new_issue').submit();
    }, 200);

  });
});
