<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
      h1 {
        color: #88B04B;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-weight: 900;
        font-size: 40px;
        margin-bottom: 10px;
      }
      p {
        color: #404F5E;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-size: 20px;
        margin: 0;
      }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left: -15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      
      }
      .go-back-button {
        background-color: #88B04B;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 30px;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }
      .PAY-button {
  background-color: #FFA500;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 30px;
  font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
  font-size: 18px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.PAY-button a {
  text-decoration: none;
  color: #fff;
  font-weight: bold;
  font-size: 16px;
  padding: 10px 20px;
  border-radius: 4px;
  transition: background-color 0.3s ease;
}

.PAY-button:hover {
  background-color: #FF6600;
}

.PAY-button:active {
  transform: scale(0.95);
}
      
      
      .go-back-button:hover {
        background-color: #6C9140;
      }
      .go-back-button:active {
        transform: scale(0.95);
      }
      .go-back-button a {
  text-decoration: none;
  color: #fff;
  font-weight: bold;
  font-size: 16px;
  padding: 10px 20px;
  border-radius: 4px;

  transition: background-color 0.3s ease;
}


/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 60%;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

#confetti {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
   height: 100%;
  pointer-events: none;
  z-index: -1; /* Set a negative z-index to position behind other elements */
}

/* Custom styles for the form */
  #firstForm {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
    background-color: #f8f8f8;
    font-family: Arial, sans-serif;
  }

  #firstForm h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
  }

  #firstForm label {
    display: block;
    margin-bottom: 15px;
    color: #555;
  }

  #firstForm input {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    font-size: 16px;
    color: #333;
  }

  #firstForm button {
    display: block;
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #4CAF50;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
  }

  #firstForm button:hover {
    background-color: #45a049;
  }
    </style>
    
    
  </head>
  <body>
    <div class="card">
  <div style="border-radius: 200px; height: 200px; width: 200px; background: #F8FAF5; margin: 0 auto;">
    <i class="checkmark">✓</i>
  </div>
  <form id="firstForm">
    <h1>Fill Out The Form</h1>
    <label for="firstNameInput">First Name:</label>
    <input type="text" onchange="assignValues()" id="firstNameInput" placeholder="Enter your first name" required>

    <label for="lastNameInput">Last Name:</label>
    <input type="text" onchange="assignValues()" id="lastNameInput" placeholder="Enter your last name" required>

    <label for="emailInput">Email:</label>
    <input type="email" onchange="assignValues()" id="emailInput" placeholder="Enter your email address" required>

    <label for="amountInput">Amount:</label>
    <input type="number" onchange="assignValues()" id="amountInput" placeholder="Enter the amount" required><br><br>

 
  </form>

  <form id="secondForm"  method="POST" action="https://api.chapa.co/v1/hosted/pay" >
    <input type="hidden" name="public_key" value="CHAPUBK_TEST-3wpvI381lS5aHfD5l4512YCURFtHflaT" />
    <input type="hidden" name="tx_ref" value="negade-tx-12345678sss9" />
    <input type="hidden" name="amount" value="50" />
    <input type="hidden" name="currency" value="ETB" />
    <input type="hidden" name="email" value="" />
    <input type="hidden" name="first_name" value="" />
    <input type="hidden" name="last_name" value="" />
    <input type="hidden" name="title" value="Let us do this" />
    <input type="hidden" name="description" value="Paying with Confidence with cha" />
    <input type="hidden" name="logo" value="https://chapa.link/asset/images/chapa_swirl.svg" />
    <input type="hidden" name="callback_url" value="https://example.com/callbackurl" />
    <input type="hidden" name="return_url" value="http://localhost:8080/RRRRRRRR/bootstrap-restaurant-template/cart.jsp" />
    <input type="hidden" name="meta[title]" value="test" />
    <button type="submit">Pay Now</button>
</form>

  <script>
    function assignValues() {
      var firstName = document.getElementById("firstNameInput").value;
      var lastName = document.getElementById("lastNameInput").value;
      var email = document.getElementById("emailInput").value;
      var amount = document.getElementById("amountInput").value;

      var secondForm = document.getElementsByClassName("secondForm")[0];
      secondForm.elements.namedItem("amount").value = amount;
      secondForm.elements.namedItem("email").value = email;
      secondForm.elements.namedItem("first_name").value = firstName;
      secondForm.elements.namedItem("last_name").value = lastName;
    }
  </script>
</div>




<canvas id="confetti"></canvas>





<script>
let W = window.innerWidth;
let H = document.getElementById('confetti').clientHeight;
const canvas = document.getElementById('confetti');
const context = canvas.getContext("2d");
const maxConfettis = 25;
const particles = [];

const possibleColors = [
  "#ff7336",
  "#f9e038",
  "#02cca4",
  "#383082",
  "#fed3f5",
  "#b1245a",
  "#f2733f"
];

function randomFromTo(from, to) {
  return Math.floor(Math.random() * (to - from + 1) + from);
}

function confettiParticle() {
  this.x = Math.random() * W; // x
  this.y = Math.random() * H - H; // y
  this.r = randomFromTo(11, 33); // radius
  this.d = Math.random() * maxConfettis + 11;
  this.color =
    possibleColors[Math.floor(Math.random() * possibleColors.length)];
  this.tilt = Math.floor(Math.random() * 33) - 11;
  this.tiltAngleIncremental = Math.random() * 0.07 + 0.05;
  this.tiltAngle = 0;

  this.draw = function() {
    context.beginPath();
    context.lineWidth = this.r / 2;
    context.strokeStyle = this.color;
    context.moveTo(this.x + this.tilt + this.r / 3, this.y);
    context.lineTo(this.x + this.tilt, this.y + this.tilt + this.r / 5);
    return context.stroke();
  };
}

function Draw() {
  const results = [];

  // Magical recursive functional love
  requestAnimationFrame(Draw);

  context.clearRect(0, 0, W, window.innerHeight);

  for (var i = 0; i < maxConfettis; i++) {
    results.push(particles[i].draw());
  }

  let particle = {};
  let remainingFlakes = 0;
  for (var i = 0; i < maxConfettis; i++) {
    particle = particles[i];

    particle.tiltAngle += particle.tiltAngleIncremental;
    particle.y += (Math.cos(particle.d) + 3 + particle.r / 2) / 2;
    particle.tilt = Math.sin(particle.tiltAngle - i / 3) * 15;

    if (particle.y <= H) remainingFlakes++;

    // If a confetti has fluttered out of view,
    // bring it back to above the viewport and let if re-fall.
    if (particle.x > W + 30 || particle.x < -30 || particle.y > H) {
      particle.x = Math.random() * W;
      particle.y = -30;
      particle.tilt = Math.floor(Math.random() * 10) - 20;
    }
  }

  return results;
}

window.addEventListener(
  "resize",
  function() {
    W = window.innerWidth;
    H = window.innerHeight;
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
  },
  false
);

// Push new confetti objects to `particles[]`
for (var i = 0; i < maxConfettis; i++) {
  particles.push(new confettiParticle());
}

// Initialize
canvas.width = W;
canvas.height = H;
Draw();
</script>

    
  


  </body>
</html>
