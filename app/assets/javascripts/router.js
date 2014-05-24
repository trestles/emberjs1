// For more information see: http://emberjs.com/guides/routing/

Emberjs1.Router.map(function() {
  // this.resource('posts');
  this.route("favorites", {path: "/favs"});
  this.route("about", {path: "/about"});
  this.route("users", {path: "/users"});
  this.route("locations", {path: "/locations"});
  this.route("books", {path: "/books"});


});
