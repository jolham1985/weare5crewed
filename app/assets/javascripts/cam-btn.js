$(document).ready(function() {
  $('.cam-btn').on("click", function(){
    $('.attachinary-input').click()
  });
  $('.attachinary-input').on("fileuploadsend", function(){
    $('#loadingModal').modal('show');
  });
  $('.attachinary-input').on("fileuploaddone", function(){
    setTimeout(function() {
      $('#new_issue').submit();
    }, 200);
    $('#loadingModal').find('.modal-footer h3').html("Identifying Appliance");
  });
});
