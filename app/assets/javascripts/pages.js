

var displayEnterName = function() {
    var $enterName = $(".enter_name");
    $enterName.removeClass("none");

    // Grab the next button
    var $enteredName = $(".entered_name");
    $enteredName.on("click", function(e) {


        //Prevent default page submit
        e.preventDefault();


        //remove class display none from the suburb div
        $enterName.addClass("none");

        //call function for display enter Front-end or Back-end
        displayEnterFrontBack();

    });
};

$(document).ready(function() {
    console.log("hello");

    var $findTechTalent = $(".find-tech-talent-button");

    $findTechTalent.on("click", function() {

        // Add css to form here

        // end Add css to evaluation-container
        $findTechTalent.addClass("none");
        displayEnterName();




    });
});
