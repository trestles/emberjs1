// For more information see: http://emberjs.com/guides/routing/

Emberjs1.Router.map(function() {
  // this.resource('posts');
  this.route("index", {path: ""});
  this.route("favorites", {path: "/favs"});
  this.route("about", {path: "/about"});
  this.route("users", {path: "/users"});
  //this.route("locations", {path: "/locations"});
  this.route("books", {path: "/books"});
  this.resource('locations');
  this.resource('location', {path: '/locations/:location_id' });
  this.resource('ideas');


});
