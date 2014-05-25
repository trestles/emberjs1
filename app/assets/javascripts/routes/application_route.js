Emberjs1.ApplicationRoute = Ember.Route.extend({
    events: {
        showModal: function() {
            //Emberjs1.ModalView.create({ title: "My title", content: "My content" }).append();
            //this.createChildView(Emberjs1.ModalView.create({ title: "My title", content: "My content" })).append();
            var v = this.container.lookup('view:modal');
            v.set('title','My title and other things');
            v.set('content','more content for you');   
            //var v=Emberjs1.ModalView.create({ title: "My title", content: "My content" });
            v.appendTo(Emberjs1.rootElement);


        }
    }
});