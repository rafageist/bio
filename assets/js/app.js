$(function(){
   
    // memory images
    $("#show-memory-images").click(function(){
        $("#memory-images").modal();
    });
    
    // contact me
    $("#contact-me").click(function(){
        $("#contact-me-form").modal();
    });
    
    $("#contact-send").click(function(){
       $("#form-contact-me").submit();
       $("#contact-me-form").modal('hide'); 
    });
});