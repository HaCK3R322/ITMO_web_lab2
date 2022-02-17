<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/index.css">
      <script src="js/mouse-tracker.js" defer></script>
      <script src="js/formValidation.js" defer></script>
      <script src="js/submit-buttons-randomization.js" defer></script>
  </head>
  <body>
    <div id="body-animated-background"></div>

    <header>
        <p>Андросов Иван P3210 10777</p>
    </header>

    <div id="interactive-area-top-text-container">
      <p>Your form</p>
    </div>
    <div id="interactive-area-container">
      <div id="interactive-area"></div>
    </div>
    <div id="interactive-area-bottom-text-container">
      <p>Your opportunity</p>
    </div>

    <form name="form" action="controllerServlet" method="GET" onsubmit="return validate()">
        <div class="select-container" id="select-X-container">
            <select name="X-select" class="input-container" style="background-color: transparent">
                <option selected disabled>Select X</option>
                <option value=-2>-2</option>
                <option value="-1.5">-1.5</option>
                <option value="-1">-1</option>
                <option value="-0.5">-0.5</option>
                <option value="-0">0</option>
                <option value="0.5">0.5</option>
                <option value="1">1</option>
                <option value="1.5">1.5</option>
                <option value="2">2</option>
            </select>
        </div>

        <div class="select-container" id="select-Y-container">
            <textarea name="Y-textarea" class="input-container" placeholder="Input Y"></textarea>
        </div>

        <div class="select-container" id="select-R-container">
            <div style="position: absolute;
                        left:50%;
                        transform: translate(-50%);
                        width: 100%;
                        top: 22%;
                        color: lightgreen;
                        font-weight: 800;
                        font-size: 32px;
                        text-align: center;
                        justify-content: center;
                        text-shadow: 0 0 15px;
                        font-family: Arial,serif;
            ">
                Choose R
            </div>
            <div class="input-container">
                <br>
                <input type="checkbox" value="1" name="R-checkbox" onclick="clearOtherCheckboxes(this)" />1
                <input type="checkbox" value="2" name="R-checkbox" onclick="clearOtherCheckboxes(this)" />2
                <input type="checkbox" value="3" name="R-checkbox" onclick="clearOtherCheckboxes(this)" />3
                <input type="checkbox" value="4" name="R-checkbox" onclick="clearOtherCheckboxes(this)" />4
                <input type="checkbox" value="5" name="R-checkbox" onclick="clearOtherCheckboxes(this)" />5
            </div>

            <script> //only 1 checkbox at time
                function clearOtherCheckboxes(checkbox) {
                    let checkboxes = document.getElementsByName('R-checkbox')
                    checkboxes.forEach((item) => {
                        if (item !== checkbox) item.checked = false;
                    })
                }
            </script>
        </div>

        <button type="submit" class="submit-button" style="right: 15%;top: 36%;">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-0">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-1">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-2">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-3">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-4">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-5">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-6">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-7">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-8">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-9">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-10">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-11">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-12">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-13">SEND</button>
        <button type="submit" class="submit-button" id="submit-button-14">SEND</button>
    </form>

  </body>
</html>
