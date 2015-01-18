var ready = function() {
  $('.sidenav').affix({
    offset: {
      top: function () {
        return (this.top = $('#bienvenue').outerHeight(true)+$('#english').outerHeight(true))
      },
      bottom: function () {
        return (this.bottom = $('.footer').outerHeight(true))
      }
    }
  });
  // $('body').scrollspy({
  //   target: '.sidebar-nav'
  // });
}


$(document).ready(ready);
$(document).on('page:load', ready);
