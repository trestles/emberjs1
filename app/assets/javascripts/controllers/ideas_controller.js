

Emberjs1.IdeasController = Ember.ArrayController.extend({
  actions:{
  	sayHello:function(){
  	  var source   = $("#first-modal").html();
      var template = Handlebars.compile(source);
      var html    = template();
      console.log(html);

      //$('.jt').html("what i'm thinking");	

      $('#tmp-modal').html(html);	
      $('#tmp-modal').modal('show');	
      $('.jt').html(html);	
      $('.jt').modal('show');	

      //alert('hello there');	
      /*
      var source   = $("#first-modal").html();
      console.log(source);
      var template = Handlebars.compile(source);
      //var html    = template();
      $('.tmp-modal').text('here the fuck i am');	
      //return html;

      Ember.$('#tmp-modal').modal();	
      */
  	}
  }
});	