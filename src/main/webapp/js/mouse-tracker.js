function getPosition(e) {
    let rect = e.target.getBoundingClientRect();
    let x = e.clientX - rect.left;
    let y = e.clientY - rect.top;
    return {
        x,
        y
    }
}

function printPosition(e) {
    let position = getPosition(e);
    alert(position.x + " " + position.y);
}


document.getElementById('interactive-area').addEventListener('click', printPosition);
