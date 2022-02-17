function getPosition(e) {
    let rect = e.target.getBoundingClientRect();
    let x = e.clientX - rect.left;
    let y = e.clientY - rect.top;
    return {
        x,
        y
    }
}

function getR() {
    let all_R_checkboxes = document.getElementsByName("R-checkbox");
    for(let i = 0; i < all_R_checkboxes.length; i++) {
        if(all_R_checkboxes[i].checked) {
            return all_R_checkboxes[i].value;
        }
    }
    return 0;
}

function reformatCoordinates(x, y, r) {
    x = x / 500;
    y = y / 500;

    x = 2.5 * (x - 0.5);
    y = -2.5 * (y - 0.5);

    x *= r;
    y *= r;

    return {
        x,
        y
    }
}

function check(e) {
    let r = getR();
    if(r !== 0) {
        let cursor_pos = getPosition(e);
        let x = cursor_pos.x;
        let y = cursor_pos.y;
        x = reformatCoordinates(x, y, r).x;
        y = reformatCoordinates(x, y, r).y;
        let params = "?X-select=" + x + "&Y-textarea=" + y + "&R-checkbox=" + r;
        document.location.href += "/controllerServlet" + params;
    } else {
        alert("Please, input R");
    }
}


document.getElementById('interactive-area').addEventListener('click', check);
