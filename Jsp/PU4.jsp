<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike Mens Hoodie</title>
    
    <!-- External Stylesheets -->
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Google Fonts -->
    <style>
        	@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
            @import url('https://fonts.cdnfonts.com/css/evolventa');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Syne:wght@400..800&display=swap');
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            display: flex;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 10px;
            padding-top: 120px;
        }

        .product-image {
            flex: 1;
            padding-right: 20px;
        }

        .product-image img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .product-details {
            flex: 1;
            padding-left: 20px;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 10px;
            font-weight: normal;
        }

        .size-options {
            display: flex;
            gap: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
        }

        .size-option {
            padding: 10px;
            border: 1px solid #ddd;
            cursor: pointer;
            text-align: center;
            width: 40px;
            border-radius: 5px;
        }

        .size-option:hover {
            background-color: #eee;
        }

        .dropdown {
            margin-top: 20px;
        }

        select {
            padding: 10px;
            width: 100%;
            border: 1px solid #ddd;
            border-radius: 5px;
            cursor: pointer;
        }

        .price {
            margin-top: 30px;
            font-size: 24px;
            font-weight: bold;
        }

        .add-to-cart {
            margin-top: 30px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .add-to-cart input {
            width: 50px;
            padding: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
        }

        .add-to-cart button {
            padding: 10px 20px;
            background-color: black;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .add-to-cart button:hover {
            background-color: #333;
        }
    </style>
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

<!-- Product Details Form -->
<div class="container">
    <form action="InsertCartServlet" method="POST"> <!-- Change 'CartServlet' to your actual servlet name -->
        <!-- Left Side: Image -->
        <div class="product-image">
            <img src="images/PoloWomensBlazer.jpg" alt="PoloWomensBlazer">
        </div>

        <!-- Right Side: Product Details -->
        <div class="product-details">
           <!--<h1>Nike Mens Hoodie</h1>-->

            <!-- Sizes -->
            <div>
            	 <strong>Product Name:</strong>
            	 
            	 	<label>
                        <input style="border: none" type="text" name="name" value="Polo Womens Blazer" readonly>
                    </label>
                    <br><br>
                <strong>Size:</strong>
                <div class="size-options">
                
                    <label>
                        <input type="radio" name="size" value="XS"> XS
                    </label>
                    <label>
                        <input type="radio" name="size" value="S"> S
                    </label>
                    <label>
                        <input type="radio" name="size" value="M" checked> M
                    </label>
                    <label>
                        <input type="radio" name="size" value="L"> L
                    </label>
                    <label>
                        <input type="radio" name="size" value="XL"> XL
                    </label>
                    <label>
                        <input type="radio" name="size" value="XXL"> XXL
                    </label>
                </div>
            </div>

            <!-- Color Dropdown -->
            <div class="dropdown">
                <label for="color"><strong>Color:</strong></label>
                <select id="color" name="color">
                    <option value="grey">Grey</option>
                    <option value="black">Black</option>
                    <option value="white">White</option>
                    <option value="blue">Blue</option>
                    <option value="green">Green</option>
                </select>
            </div>

            <!-- Price -->
            <div class="price" id="price">
               <label><input style="border: none" type="Rs" name="price" value=" Rs 1,800 LKR" readonly></label> 
            </div>

            <!-- Quantity and Add to Cart -->
            <div class="add-to-cart">
                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" min="1" value="1">
                <button type="submit">Add to Cart</button>
            </div>
        </div>
    </form>
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
