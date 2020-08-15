HTMLWidgets.widget({

  name: 'flashCard',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {

        flashCard(el, x);

      },

      resize: function(width, height) {}

    };
  }
});
