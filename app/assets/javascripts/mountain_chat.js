$(document).on("ready", function() {

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

  // $('.comment-form').on("submit", 'form', function(event){
  //   event.preventDefault();
  //   var id = $('#comment_trail_id').val()
  //   // debugger;
  //   $.ajax({
  //     type: $(event.target).attr('method'),
  //     url : '/trails/' + id + '/comments',
  //     data: $(this).serialize()
  //   }).done(function(response){
  //     debugger;
  //     $(".river").toggle().toggle();
  //     $(".comment-form").remove();
  //     $(".comment-form").hide();
  //   }).fail(function(){
  //     alert("Your post has not been posted")
  //   });
  // });

});
