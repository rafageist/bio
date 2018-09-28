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
    
    $("#show-esd-10").click(function(){
        $("#esd-10").modal();
    });
    
    $("#show-ancora-goh").click(function(){
        $("#ancora-goh").modal();
    });
});