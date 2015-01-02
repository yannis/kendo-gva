var ready = function() {
  $('.sidenav').affix({
    offset: {
      top: function () {
        return (this.top = $('.jumbotron').outerHeight(true)+$('#english').outerHeight(true))
      },
      bottom: function () {
        return (this.bottom = $('.footer').outerHeight(true))
      }
    }
  });
  $('body').scrollspy({
    target: '.sidenav'
  });
}


$(document).ready(ready);
$(document).on('page:load', ready);
