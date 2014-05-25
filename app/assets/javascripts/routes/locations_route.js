Emberjs1.LocationsRoute = Ember.Route.extend({
  model: function() {
    var locs=Emberjs1.Location.findAll();
    return locs;
    /*
    return [{
      id: 1,
      name: "Lucques",
    }, 
    {
      id: 2,
      name: "AOC",
    },
    {
      id: 3,
      name: "Providence",
  }

    ];
    */
  }
});