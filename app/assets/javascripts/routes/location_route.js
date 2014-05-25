Emberjs1.LocationRoute = Ember.Route.extend({
  model: function(params) {
    alert('here i am with: ' + params.location_id );
    var loc=Emberjs1.Location.find(params.location_id);
    return loc;
  }
});