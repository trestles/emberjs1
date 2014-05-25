
Emberjs1.Location = Ember.Object.extend({
});

Emberjs1.Location.reopenClass({
  // override `say` to add an ! at the end
  find: function(id) {
  	//alert('here is find with:' + id);
    //this._super(thing + "!");
    return $.getJSON("/v1/api/locations/" + id).then(
      function(response) {
        return response.data.children.map(function (child) {
          return App.RedditLink.create(child.data);
        });
      }
    );
  },

  findAll: function(id) {
  	//alert('here is find with:' + id);
    //this._super(thing + "!");
    return $.getJSON("/v1/api/locations").then(
      function(response) {
      	return response;
//        return response.data.children.map(function (child) {
  //        return App.RedditLink.create(child.data);
  //      });
      }
    );
  }

});
