<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipping and Payment</title>
        <!-- External Stylesheets -->
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
           	@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
            @import url('https://fonts.cdnfonts.com/css/evolventa');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Syne:wght@400..800&display=swap');
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 100px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Form styling for consistency */
        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* General container styling for all forms (shipping, payment, receipt) */
        .form-container {
            display: flex;
            border-radius: 10px;
            overflow: hidden;
        }

        .form-left {
            flex: 1;
            background-color: #6ec1e4;
            padding: 40px;
            color: white;
            position: relative;
            clip-path: polygon(0 0, 80% 0, 100% 100%, 0% 100%);
        }

        .form-left h3 {
            font-size: 32px;
            margin-bottom: 10px;
        }

        .form-left p {
            font-size: 18px;
        }

        .form-right {
            flex: 1;
            padding: 40px;
            background-color: white;
            border-radius: 0 10px 10px 0;
        }

        /* Input and select styles */
        .form-group {
            margin-bottom: 20px;
        }

        select, input[type="text"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        /* Button */
        .purchase-btn {
            background-color: #28a745;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .purchase-btn:hover {
            background-color: #218838;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }

            .form-container {
                flex-direction: column;
            }

            .form-left {
                clip-path: none;
                text-align: center;
                border-radius: 10px 10px 0 0;
            }

            .form-right {
                border-radius: 0 0 10px 10px;
            }
        }
    </style>
    <script>
    function goToReceipt() {
        const cardName = document.getElementById("cardName").value;
        const cardNumber = document.getElementById("cardNumber").value;
        const expiryMonth = document.getElementById("expiryMonth").value;
        const expiryYear = document.getElementById("expiryYear").value;
        const securityCode = document.getElementById("securityCode").value;

        if (cardName && cardNumber && securityCode) {
            const currentTime = new Date();
            const paymentTime = currentTime.toLocaleString();

            localStorage.setItem("paymentTime", paymentTime);
            document.getElementById("paymentForm").style.display = "none";
            document.getElementById("receipt").style.display = "block";

            document.getElementById("receiptName").textContent = localStorage.getItem("name");
            document.getElementById("receiptTime").textContent = paymentTime;
        } else {
            alert("Please complete the payment details.");
        }
    }
</script>
</head>
<body>
<!-- Header + Navbar -->
<div class="nav-bar">
    <nav class="navbar bg-body-tertiary fixed-top" style="color:red;">
					
					<!-- menubar strip color -->
					  <div class="container-fluid" style="height:70px;"> 
			
					
					    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
					      <span class="navbar-toggler-icon"></span>
					    </button>
					    
					    <!-- Responsive menu bar starting point with animation -->
					    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
					      <div class="offcanvas-header">
					        <h1 style="font-size:25px;" class="menu_title" id="offcanvasNavbarLabel">La Sephora</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
					      </div>
					      
					      
					      <div class="offcanvas-body">
					        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
					          <li class="nav-item">
					            <a class="menu_li active" aria-current="page" href="index.jsp">Home</a>
					          </li>
					         
					        <!--  style="font-size: 18px;font-family: ''Poppins'', sans-serif;font-weight: 400;font-style: normal;color:#595959; -->
					         <!--  New arrivals -->
					         <br>
					          <li class="nav-item dropdown">
					            <a class="menu_li dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					              New Arrivals
					            </a>
					            <ul class="dropdown-menu">
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">For Men</a></li>
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">For Women</a></li>
					            </ul>
					          </li>
					          <br>
					          
					          <!-- For women -->
					          
					          <li class="nav-item dropdown">
					            <a class="menu_li dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					              Women
					            </a>
					            <ul class="dropdown-menu">
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Fall Collection 2024</a></li>
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">LS Special Edition 2024-2025</a></li>
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Tops</a></li>
					               <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Coats and Jackets</a></li>
					                <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Denim and Pants</a></li>
					                 <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Shorts</a></li>
					           
					            </ul>
					          </li>
					          
					          <br>
					          <!-- For men -->
					          
					          <li class="nav-item dropdown">
					            <a class="menu_li dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					              Men
					            </a>
					            <ul class="dropdown-menu">
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Fall-Winter Collection 2024-2025</a></li>
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">LS Essentials</a></li>
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Outerwear and Coats </a></li>
					              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">T-shirt and Polo's </a></li>
					               <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Shirts</a></li>
				                  <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">New Formal</a></li>
				                  <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;" >Denim and Pants</a></li>
				         
					           
					            </ul>
					          </li>
					          
					          <!-- Search bar -->
					        </ul>
					        <br>
					        <form class="d-flex mt-3" role="search">
					          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					          <button class="btn btn-outline-success" type="submit" style="font-size: 16px;font-family: ''Poppins'', sans-serif;font-weight: 400;font-style: normal;">Search</button>
					        </form>
					        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					         <hr style="size:10px;padding-top: 20px; color:black;" >
					         <p class="terms" id="offcanvasNavbarLabel" style="font-size:15px;"><a href="">About La Sephora</a></p>
					         <p class="terms" id="offcanvasNavbarLabel" style="font-size:15px;"><a href="">Find a store</a></p>
					         <p class="terms" id="offcanvasNavbarLabel" style="font-size:15px;"><a href="">How can we help you?</a></p>
					      </div>
					    </div>
					    
					     <div style="margin-left: 0px;">
					     
					     	<!-- LaSephora_Logo -->
					    
						   <a href="index.jsp" target="_self"><img src="images/home/LaSephora_Logo.png" alt="La Sephora Logo" title="Logo" class="menu_bar_logo" style="margin-left: 0px;"></a>
						   
						   <!-- shopping cart -->
						   
						   <a href="ReadCartServlet" target="_self"><img src="images/home/bag.svg" style="width:22px; height:22px;float:left; margin-top:5px;margin-right:30px;"></a>
						   
						   
						   <!-- sign in  -->
						   <a href="#" target="_self"><img src="images/home/user_icon.png" style="width:23px; height:23px;float:left; margin-top:5px;"></a>
						   
						    <p class="menu_li" style="font-size:15px;display:inline-block; float:inline;  margin-top:5px;margin-right:10px;margin-left:20px;"><a href="#">Account</a></p>
						  
					 
					     </div>
					  
					  </div>
					</nav>
</div>
<!-- Shipping Details Form -->
<div class="container" id="shippingForm">
    <h2>Enter Shipping Details</h2>
    <div class="form-container">
        <div class="form-left">
            <h3>Shipping Details</h3>
            <p>Enter your details below.</p>
        </div>
        <div class="form-right">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" required>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" required>
            </div>
            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="text" id="contact" required>
            </div>
            <button onclick="goToPayment()">Next</button>
        </div>
    </div>
</div>

<script>
    function goToPayment() {
        const name = document.getElementById("name").value;
        const address = document.getElementById("address").value;
        const contact = document.getElementById("contact").value;

        if (name && address && contact) {
            localStorage.setItem("name", name);
            document.getElementById("shippingForm").style.display = "none";
            document.getElementById("paymentForm").style.display = "block";
        } else {
            alert("Please fill in all fields.");
        }
    }
</script>

<!-- Payment Form -->
<div class="container" id="paymentForm" style="display: none;">
    <h2>Payment Information</h2>
    <div class="form-container">
        <div class="form-left">
            <p>Thank you for your Order</p>
        </div>
        <div class="form-right">
            <div class="form-group">
                <label for="paymentMethod">Payment Method</label>
                <select id="paymentMethod">
                    <option value="Visa">Visa</option>
                    <option value="MasterCard">MasterCard</option>
                    <option value="PayPal">PayPal</option>
                </select>
            </div>
            <div class="form-group">
                <label for="cardName">Cardholder's Name</label>
                <input type="text" id="cardName" required>
            </div>
            <div class="form-group">
                <label for="cardNumber">Card Number</label>
                <input type="text" id="cardNumber" required>
            </div>
            <div class="form-group">
                <label for="expiryDate">Expiration Date</label>
                <select id="expiryMonth">
                    <option value="January">January</option>
                    <option value="February">February</option>
                    <option value="March">March</option>
                    <!-- Add more months -->
                </select>
                <select id="expiryYear">
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <!-- Add more years -->
                </select>
            </div>
            <div class="form-group">
                <label for="securityCode">Security Code</label>
                <input type="text" id="securityCode" required>
            </div>
            <button class="purchase-btn" onclick="goToReceipt()">Purchase Safely</button>
        </div>
    </div>
</div>

<script>
    function goToReceipt() {
        const cardName = document.getElementById("cardName").value;
        const cardNumber = document.getElementById("cardNumber").value;
        const expiryMonth = document.getElementById("expiryMonth").value;
        const expiryYear = document.getElementById("expiryYear").value;
        const securityCode = document.getElementById("securityCode").value;

        if (cardName && cardNumber && securityCode) {
            const currentTime = new Date();
            const paymentTime = currentTime.toLocaleString();

            localStorage.setItem("paymentTime", paymentTime);
            document.getElementById("paymentForm").style.display = "none";
            document.getElementById("receipt").style.display = "block";

            document.getElementById("receiptName").textContent = localStorage.getItem("name");
            document.getElementById("receiptTime").textContent = paymentTime;
        } else {
            alert("Please complete the payment details.");
        }
    }
</script>

<!-- Payment Successful Receipt -->
<div class="container" id="receipt" style="display: none;">
    <h2>Payment Successful</h2>
    <div class="form-container">
        <div class="form-left">
            <h3>Thank You!</h3>
            <p>Your order has been placed successfully.</p>
        </div>
        <div class="form-right">
            <p>Thank you, <span id="receiptName"></span>!</p>
            <p>Payment has been received.</p>
            <p>Time: <span id="receiptTime"></span></p>
        </div>
    </div>
</div>
<!-- Footer -->
<div class="footer-content">
     <br><br><br>
                    
                    <div class="footer">
                        <footer>
                            <br><br><br><br>
                            <table border="0" width="100%" cellpadding="10">
                                <tr>
                                    <td>
                                        <!--Menubar La Sephora logo-->
                                        <div class="menu-bar-logo" style="display: inline-block;">
                                            <br>
                                            <a href="./index.jsp" target="_self"> 
                                                <img src="images/home/LaSephora_Logo.png" alt="La Sephora Logo" title="Logo" class="menu_bar_logo" style="margin-left:82px;margin-bottom:10px;">
                                                
                                            </a>  
                                            <p class="footer_text" style="padding-left: 80px; color:black;">&copy; La Sephora. All Rights Reserved.</p>
                                            <br><br><br><br>
                                            <div class="Scocial-media-icons" style="display: inline-block;padding-left: 75px;">

                                                <img src="images/home/fb.png" class="social_media" style="width: 17px;height: 17px; ">
                                                <img src="images/home/X.png" class="social_media">
                                                <img src="images/home/Instergram.png" class="social_media">
                                                <img src="images/home/LinkedIN.png" class="social_media">
                                                <img src="images/home/Googlee.png" class="social_media">
                                                <img src="images/home/YT.png" class="social_media" style="width: 20px;">
                                            </div>
                                        </div>
                                
                                    </td>
                                    <td>
                                        <p class="footer_text" style="padding-top: 25px;"><b>Links</b></p>
                                        <br>
                                        <a href="/index.html"><p class="footer_text">Home</p></a>
                                        <p class="footer_text">Men</p>
                                        <p class="footer_text">Women</p>
                                        <p class="footer_text">Careers</p>
                                        <p class="footer_text">About</p>
                                        <p class="footer_text">Support</p>
                                    </td>
                                    <td style="vertical-align: top;">
                                        <p class="footer_text" style="padding-top: 25px;"><b>Legal</b></p>
                                        <br>
                                        <p class="footer_text">Terms & Conditions</p>
                                        <p class="footer_text">Privacy policy</p>
                                        <p class="footer_text">Cookie policy</p>
                            
                                    </td>
                                    <td style="vertical-align: top;">
                                        <p class="footer_text" style="padding-top: 25px;"><b>Get In Touch</b></p>
                                        <br>
                                        <p class="footer_text">Malabe, Sri Lanka</p>
                                        <p class="footer_text">xxx-xxxx</p>
                                        <p class="footer_text">info@lasephora.com</p>
                            
                                    </td>
                                </tr>
                            </table>
                             <p class="footer_text" style="padding-left: 85px;">&nbsp;&nbsp;🇱🇰 &nbsp; Country/Region <br> <img src="images/home/globe.png" class="social_media"> &nbsp; <u>ENGLISH(INTL)</u></p>
                            <br><br><br><br>

                        </footer>
                    </div>
    
</div>
</body>
</html>