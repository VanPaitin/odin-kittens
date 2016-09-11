$(document).ready(function () {
  $(".modal-trigger").on('click',  function () {
    var object =  $(this).data("object");
    $("#name").html(object.name)
    $('span#softness').html(object.softness);
    $("span#cuteness").html(object.cuteness);
    $("span#age").html(object.age);
  });
});

