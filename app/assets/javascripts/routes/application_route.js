Emberjs1.ApplicationRoute = Ember.Route.extend({
    events: {
        showModal: function() {
            Emberjs1.ModalView.create({ title: "My title", content: "My content" }).append();
        }
    }
});