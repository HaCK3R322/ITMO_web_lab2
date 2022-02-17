const RIGHT_MAX = 28;
const RIGHT_MIN = 3;
const TOP_MAX = 80;
const TOP_MIN = 4;

const NUMBER_OF_BUTTONS = 14;

let I = {
    i: 0
}

// let centerButton = document.getElementById("submit-button-center");
function randNextButton(I) {
    let i = I.i;

    if(i === NUMBER_OF_BUTTONS)
        I.i = 0;
    else
        I.i = I.i + 1;

    let button = document.getElementById("submit-button-" + i);
    let right = Math.floor(Math.random() * (RIGHT_MAX - RIGHT_MIN + 1) + RIGHT_MIN) + "%";
    let top = Math.floor(Math.random() * (TOP_MAX - TOP_MIN + 1) + TOP_MIN) + "%";
    button.style.right = right;
    button.style.top = top;
}
setInterval(function() { randNextButton(I) }, 100);