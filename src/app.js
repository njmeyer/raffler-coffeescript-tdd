// Generated by CoffeeScript 1.6.3
window.Raffler = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  init: function() {
    new Raffler.Routers.Entries;
    return Backbone.history.start();
  }
};

$(document).ready(function() {
  return Raffler.init();
});
