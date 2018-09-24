jQuery(function ()
{
    jQuery("input[type=file]").change(function() {
        readURL(this);
    });
 
    const readURL = (input) => {
 
        if (input.files && input.files[0]) {
            const reader = new FileReader();
 
            reader.onload = (e) => {
                jQuery('#logo-img').attr('src', e.target.result)
                jQuery('#container-logo').css('display', 'block');
            }
            reader.readAsDataURL(input.files[0]);
        }
    };
})