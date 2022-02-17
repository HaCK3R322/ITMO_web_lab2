let form = document.getElementsByName("form");

function getR() {
    let all_R_checkboxes = document.getElementsByName("R-checkbox");
    for(let i = 0; i < all_R_checkboxes.length; i++) {
        if(all_R_checkboxes[i].checked) {
            return all_R_checkboxes[i].value;
        }
    }
    return 0;
}

function xIsInScope(x) {
    return x == -2 ||
        x == -1.5 ||
        x == -1 ||
        x == -0.5 ||
        x == 0 ||
        x == 0.5 ||
        x == 1 ||
        x == 1.5 ||
        x == 2;
}

function rIsInScope(r) {
    return r == 1 ||
        r == 2 ||
        r == 3 ||
        r == 4 ||
        r == 5;
}

function validate() {
    let x = document.getElementsByName("X-select")[0].value;
    let y = document.getElementsByName("Y-textarea")[0].value;
    let r = getR();

    if(isNaN(x)) {
        alert("X is not a number! Select a number idk...");
        return false;
    } else {
        if(!xIsInScope(x)) {
            alert("Stop hacking me pls");
            return false;
        }
    }

    if(isNaN(y) || y === "") {
        alert("Y is not a number! Input a number idk...");
        return false;
    } else {
        if(!(-3 < y && y < 3)) {
            alert("Sorry, but Y must be between -3 and 3");
            return false;
        }
    }

    if(isNaN(r)) {
        alert("R is not a number! Enter a number idk...");
        return false;
    } else {
        if(!rIsInScope(r)) {
            alert("Choose R, just choose R");
            return false;
        }
    }

    return true;
}