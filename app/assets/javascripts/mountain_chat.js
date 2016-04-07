$(document).on("ready", function() {

  // $("a").click(".snowflake", function(event){
  //   event.preventDefault();
  //   event.stopPropagation();
  //   debugger
  //   // var target = $(event.target).parent().find("#vote_count")
  //   $.ajax({
  //     type: "POST",
  //     url : $(this).attr('href'),
  //     dataType: "json",
  //   }).done(function(response){
  //     debugger
  //     alert("Success!")
  //   }).fail(function(response){
  //     console.log(response);
  //   });
  // });

  $("#post").on("click", function(event){
    event.preventDefault();
    $.ajax({
      url : $(event.target).attr('href'),
    }).done(function(response){
      $(".comment-form").show();
    }).fail(function(response){
      alert("You are unable to post a comment.");
    });
  });

  $('.comment-form').on("submit", 'form', function(event){
    event.preventDefault();
    var id = $('#comment_trail_id').val()
    $.ajax({
      type: $(event.target).attr('method'),
      url : '/trails/' + id + '/comments',
      data: $(this).serialize()
    }).done(function(response){
      debugger;
      $(".river").append(response);
      $(".comment-form").remove();
      $(".comment-form").hide();
    }).fail(function(){
      alert("Your post has not been posted")
    });
  });

});
