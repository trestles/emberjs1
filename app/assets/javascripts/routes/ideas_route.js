Emberjs1.IdeasRoute = Ember.Route.extend({
  model: function() {
  	var result=[];
  	Ember.$.ajax({
       url:'/v1/api/ideas'
  	}).then(function(r){
      //return r;
      Ember.$.each(r, function(k,v){
         result.pushObject(v);
      });
  	});
    return result;  
  }

});