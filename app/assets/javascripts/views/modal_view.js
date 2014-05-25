Emberjs1.ModalView = Ember.View.extend({
    templateName: "modal",
    title: "",
    content: "",
    classNames: ["modal", "fade"],
    didInsertElement: function() {
        this.$().modal('show');
        this.$().one("hidden", this._viewDidHide);
    },
    // modal dismissed by example clicked in X, make sure the modal view is destroyed
    _viewDidHide: function() {
         alert('called _viewDidHide');
        if (!this.isDestroyed) {
            this.destroy();
        }
    },
    // here we click in close button so _viewDidHide is called
    close: function() {        
        alert('you want to close');
        this.$(".close").click();
    },
    actions:{
    saveChanges: function() {        
        //this.$(".close").click();
        alert('you are about to save');
    }
}


});