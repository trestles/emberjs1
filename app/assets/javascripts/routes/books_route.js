Emberjs1.BooksRoute = Ember.Route.extend({
  model: function() {
  	var result=[];
  	Ember.$.ajax({
       url:'/v1/api/books'
  	}).then(function(r){
      //return r;
      Ember.$.each(r, function(k,v){
         result.pushObject(v);
      });
  	});
    return result;  
  }
});  

