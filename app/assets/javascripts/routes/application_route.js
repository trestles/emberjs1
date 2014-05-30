Emberjs1.ApplicationRoute = Ember.Route.extend({
	/*
 setupController: function(controller, obj) {
 	//alert('you are setting up controller');
    controller.set('model', obj);
  },
  */
    events: {
        showModal: function(obj) {
            //Emberjs1.ModalView.create({ title: "My title", content: "My content" }).append();
            //this.createChildView(Emberjs1.ModalView.create({ title: "My title", content: "My content" })).append();
            var v = this.container.lookup('view:modal');
            //var controller = this.container.lookup('controller:modal');
            
            var controller=this.container.lookup('controller:modal');
            v.set('controller',controller);
            controller.set('model',obj);
            
			//this.get('controller').set('model',obj);
            //console.log(this.get('controller'));
            //this._super(controller, obj);             
            //this.get('controller').set('model',obj);
            //v.set('title','hello');
            //v.set('content',obj.name);   
            //var v=Emberjs1.ModalView.create({ title: "My title", content: "My content" });
            v.appendTo(Emberjs1.rootElement);


        }
    }
});