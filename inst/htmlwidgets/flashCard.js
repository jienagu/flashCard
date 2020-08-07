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


function flashCard(el, x){
var jsonData = x.data;

var flipwrapperdiv = document.getElementById(el.id);

flipwrapperdiv.classList.add("flash-card");
let flipinnerdiv = document.createElement("div");
flipinnerdiv.classList.add("flash-card-inner");

  let frontdiv = document.createElement("div");
  frontdiv.classList.add("flash-card-front");
  let htagFront = document.createElement("H2");
  htagFront.innerHTML = jsonData.front[0];
  frontdiv.appendChild(htagFront);
  frontdiv.style.background = x.frontColor;
  frontdiv.style.color = x.front_text_color;


  let backdiv = document.createElement("div");
  backdiv.classList.add("flash-card-back");
  let htagBack = document.createElement("H2");
  htagBack.innerHTML = jsonData.back[0];
  backdiv.appendChild(htagBack);
  backdiv.style.background = x.backColor;
  backdiv.style.color = x.back_text_color;

for (var i = 1; i < jsonData.front.length; i++) {
    let pFront = document.createElement("p");
    pFront.innerHTML = jsonData.front[i];
    frontdiv.appendChild(pFront);

  flipinnerdiv.appendChild(frontdiv);
}

for (var j = 1; j < jsonData.back.length; j++) {

    let pBack = document.createElement("p");
    pBack.innerHTML = jsonData.back[j];
    backdiv.appendChild(pBack);

  flipinnerdiv.appendChild(backdiv);
}

  flipwrapperdiv.appendChild(flipinnerdiv);
}
