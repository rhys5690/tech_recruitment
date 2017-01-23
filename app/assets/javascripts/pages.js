var displayEnterEmail = function() {

    var $enterEmail = $(".enter_email");
    $enterEmail.removeClass("none");

};

var displayEnterDescription = function() {
    var $enterDescription = $(".enter_description");
    $enterDescription.removeClass("none");

    // Grab the next button
    var $enteredDescription = $(".entered_description");
    $enteredDescription.on("click", function(e) {


        //Prevent default page submit
        e.preventDefault();


        //remove class display none from the suburb div
        $enterDescription.addClass("none");

        //call function for display enter Front-end or Back-end
        displayEnterEmail();

    });
};

var displayCompanySize = function() {
    var $companySize = $(".enter_company_size");
    $companySize.removeClass("none");

    // Grab the next button
    var $enteredCompanySize = $(".entered_company_size");
    $enteredCompanySize.on("click", function(e) {


        //Prevent default page submit
        e.preventDefault();


        //remove class display none from the suburb div
        $companySize.addClass("none");

        //call function for display enter Front-end or Back-end
        displayEnterDescription();

    });
};

var displayYearsExperience = function() {
    var $yearsExperience = $(".enter_years_experience");
    $yearsExperience.removeClass("none");

    // Grab the next button
    var $enteredYearsExperience = $(".entered_years_experience");
    $enteredYearsExperience.on("click", function(e) {


        //Prevent default page submit
        e.preventDefault();


        //remove class display none from the suburb div
        $yearsExperience.addClass("none");

        //call function for display enter Front-end or Back-end
        displayCompanySize();

    });
};

var displayEnterTechnology = function() {
    var $enterTechnology = $(".enter_relevant_technologies");
    $enterTechnology.removeClass("none");

    // Grab the next button
    var $enteredTechnology = $(".entered_relevant_technologies");
    $enteredTechnology.on("click", function(e) {


        //Prevent default page submit
        e.preventDefault();


        //remove class display none from the suburb div
        $enterTechnology.addClass("none");

        //call function for display enter Front-end or Back-end
        displayYearsExperience();

    });
};

var displayFrontBack = function() {
    var $frontBack = $(".enter_front_back");
    $frontBack.removeClass("none");

    var $enteredFrontBack = $(".entered_front_back");
    $enteredFrontBack.on("click", function(e) {
        e.preventDefault();
        $frontBack.addClass("none");
        displayEnterTechnology();
    });
};

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
        displayFrontBack();

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

        $(".submit_form").on("ajax:success", function(e, data, status, xhr) {
        console.log(data);



    });
});