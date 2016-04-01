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

  $(".post-comment").on("click", function(event){
    event.preventDefault();
    // debugger;
    $.ajax({
      url : $(event.target).attr('href'),
      data: $(this).serialize(),
    }).done(function(response){
      debugger;
      console.log("success!");
    }).fail(function(response){
      alert("You are unable to post a comment.");
    });
  });

});
