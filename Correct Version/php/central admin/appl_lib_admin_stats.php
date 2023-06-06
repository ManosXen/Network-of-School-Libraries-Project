<!DOCTYPE html>
<html>
<head>
  <style>
    /* Your existing CSS styles here */

    /* CSS for the tooltip */
    .tooltip {
      position: relative;
      display: inline-block;
      cursor: help;
    }

    .tooltip .tooltiptext {
  visibility: hidden;
  background-color: #fff;
  color: #000;
  border: 1px solid #ccc;
  padding: 5px;
  position: absolute;
  z-index: 1;
  width: 200px;
  top: 100%;
  left: 0;
  white-space: normal;
  border-radius: 10px; /* Add round corners */
}

.tooltip .tooltiptext thead th:first-child {
  background-color: #002ead; /* Change the color as desired */
  border-top-left-radius: 20px; /* Rounded corner on the top-left */
}

.tooltip .tooltiptext thead th:last-child {
  background-color: #002ead; /* Change the color as desired */
  border-top-right-radius: 20px; /* Rounded corner on the top-right */
}


    .tooltip:hover .tooltiptext {
      visibility: visible;
    }

    .tooltip .tooltiptext table {
      width: 100%;
      background-color: #2b2e3d;
      color: #fff;
      font-size: 16px;
      margin-bottom: 0;
      border-radius: 0;
      border-collapse: collapse;
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    }

    .tooltip .tooltiptext th:not(:first-child),
    .tooltip .tooltiptext td {
      padding: 10px;
    }

    .tooltip .tooltiptext th {
      text-align: center;
    }

    .tooltip .tooltiptext td {
      text-align: center;
    }

    .tooltip .tooltiptext thead th {
      background-color: #002ead; /* Change the color as desired */
    }

    .tooltip .tooltiptext thead th:first-child {
      background-color: #002ead; /* Change the color as desired */
      border-top-left-radius: 20px; /* Rounded corner on the top-left */
    }

    .tooltip .tooltiptext thead th:last-child {
      background-color: #002ead; /* Change the color as desired */
      border-top-right-radius: 20px; /* Rounded corner on the top-right */
    }

    .tooltip .tooltiptext tbody tr:hover {
      background-color: #666;
    }
  </style>
</head>
<body>
  <div class="login-box">
    <h1>Login</h1>
    <p>Please fill in your credentials.</p>
    <form>
      <div class="tooltip">
        <input type="text" placeholder="Username" />
        <span class="tooltiptext">
          <table>
            <thead>
              <tr>
                <th>Column 1</th>
                <th>Column 2</th>
                <th>Column 3</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Data 1</td>
                <td>Data 2</td>
                <td>Data 3</td>
              </tr>
              <tr>
                <td>Data 4</td>
                <td>Data 5</td>
                <td>Data 6</td>
              </tr>
            </tbody>
          </table>
        </span>
      </div>
      <input type="password" placeholder="Password" />
      <button class="login-button" type="submit">Login</button>
    </form>
  </div>
</body>
</html>
