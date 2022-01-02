<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>JSP - Hello World</title>
<%--    <meta http-equiv="Cache-Control" content="no-cache">--%>
    <link rel="stylesheet" href="css/index.css">
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>--%>
      <script src="js/mouse-tracker.js" defer></script>
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
      <div id="interactive-area">
<%--        <a href="error.jsp">Получить ошибку</a>--%>
<%--        <a href="controller-servlet">Побежать на контроллер-сервлет</a>--%>
      </div>
    </div>
    <div id="interactive-area-bottom-text-container">
      <p>Your opportunity</p>
    </div>

    <form action="controllerServlet">
        <div class="select-container" id="select-X-container">
            <select class="input-container" style="background-color: transparent">
                <option selected disabled>Select X</option>
                <option value="">-2</option>
                <option value="">-1.5</option>
                <option value="">-1</option>
                <option value="">-0.5</option>
                <option value="">0</option>
                <option value="">0.5</option>
                <option value="">1</option>
                <option value="">1.5</option>
                <option value="">2</option>
            </select>
        </div>

        <div class="select-container" id="select-Y-container">
            <textarea class="input-container" placeholder="Input Y"></textarea>
        </div>

        <div class="select-container" id="select-R-container">
            <div style="position: absolute;
                        left:50%;
                        transform: translate(-50%);
                        width: 100%;
                        top: 22%;
                        color: lightgreen;
                        font-weight: 1000;
                        font-size: xx-large;
                        text-align: center;
                        justify-content: center;

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
    </form>

  </body>
</html>
