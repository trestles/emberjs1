Emberjs1.ApplicationController = Ember.Controller.extend({
    events: {
        showModal: function(obj) {
        	alert('in showModal');
            //Emberjs1.ModalView.create({ title: "My title", content: "My content" }).append();
            //this.createChildView(Emberjs1.ModalView.create({ title: "My title", content: "My content" })).append();
            /*
            var v = this.container.lookup('view:modal');
            v.set('title','hello');
            v.set('content',obj.name);   
            //var v=Emberjs1.ModalView.create({ title: "My title", content: "My content" });
            v.appendTo(Emberjs1.rootElement);
            */


        }
    }
});	