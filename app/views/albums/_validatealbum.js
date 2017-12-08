/* global $ */
$('#albumform').validate({
    //validation rules
    rules: {
        "album[album_title]":{
            required: true
        },
        "album[album_artist]":{
            required: true
        },
        "album[release_date]":{
            required: true
        }
    },
    //error messages
    messages: {
        album_title:{
            required: "Please enter an album title."
        },
        album_artist:{
            required: "Please enter an album artist."
        },
        release_date:{
            required: "Please enter a release date."
        }
    }
});