Emberjs1.UsersRoute = Ember.Route.extend({
  model: function() {
    return [{
      name: "Jonathan",
      title: "Tomster",
      url: "http://emberjs.com/images/about/ember-productivity-sm.png"
    }, {
      name: "Carolyn",
      title: "Eiffel Tower",
      url: "http://emberjs.com/images/about/ember-structure-sm.png"
    }];
  }
});