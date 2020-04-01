Template.applicationLayout.rendered = function () {
  // Closes the Responsive Menu on Menu Item Click
  $('.navbar-collapse ul li a').click(function () {
    $('.navbar-toggle:visible').click();
  });

  Template.applicationLayout.helpers({
    loggingIn: function () {
      var user = Meteor.user();
      return user != null;
    }
  });
};
