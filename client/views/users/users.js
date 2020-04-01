Template.usersPill.helpers({
  usersOnline: function () {
    Meteor.users.find();
  },
  userPillClass: function () {
    return {
      class: 'users-pill label ' + (this.status && this.status.idle ? 'label-warning' : 'label-success')
    };
  }
});
