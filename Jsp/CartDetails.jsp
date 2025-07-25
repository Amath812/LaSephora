<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike Mens Hoodie</title>
    
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
       /* back {
            background-image: url('images/c.jpg'); /* Replace with your actual background image 
    		background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            /*font-family: Arial, sans-serif;
        }*/

        .table-container {
            background-color: rgba(255, 255, 255, 0.8); /* White with 80% transparency */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 800px;
            margin: auto;
            margin-top:110px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
            text-align: center;
        }

        td {
            text-align: center;
        }

        button {
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            opacity: 0.8;
        }

        .edit-button {
            background-color: #28a745; /* Green */
            color: white;
        }

        .delete-button {
            background-color: #dc3545; /* Red */
            color: white;
        }

        a {
            text-decoration: none;
            color: white;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .table-container {
                width: 100%;
                padding: 10px;
            }

            th, td {
                font-size: 14px;
                padding: 8px;
            }

            button {
                font-size: 12px;
                padding: 6px 12px;
            }
        }
        
        .button-container {
    display: flex; /* Enable Flexbox */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    height: 100vh; /* Full viewport height */
}

.checkout-button {
    background-color: #001F3F; /* Green background */
    color: white; /* White text */
    border: none; /* No border */
    border-radius: 5px; /* Rounded corners */
    padding: 12px 24px; /* Padding */
    font-size: 16px; /* Font size */
    font-weight: bold; /* Bold text */
    cursor: pointer; /* Pointer cursor */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow effect */
    transition: background-color 0.3s ease, transform 0.3s ease; /* Smooth transition */
    margin-left:630px;
}

.checkout-button:hover {
    background-color: #45a049; /* Darker green on hover */
    transform: translateY(-2px); /* Slight lift effect */
}

.checkout-button:active {
    transform: translateY(1px); /* Pressed effect */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Reduced shadow on press */
}

   
        
    </style>
<title>Shopping Cart</title>
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
<div class="table-container">
    <table>
    <tr>
    	<th>ID</th>
    	<th>Name</th>
    	<th>Color</th>
    	<th>Size</th>
    	<th>Quantity</th>
    	<th>Price</th>
    	<th>Action</th>
    </tr>
    <c:if test="${not empty allCarts}">
            <c:forEach var="carts" items="${allCarts}">
            <c:set var="id" value="${Supp.supplierID}"/> 
	                        		<c:set var="ID" value="${carts.id}"/> 
	                        		<c:set var="Name" value="${carts.name}"/> 
	                        		<c:set var="Color" value="${carts.color}"/>
	                        		<c:set var="Size" value="${carts.size}"/> 
	                        		<c:set var="Quantity" value="${carts.quantity}"/> 
	                        		<c:set var="Price" value="${carts.price}"/> 

                <tr>
                    <td>${carts.id}</td>
                    <td>${carts.name}</td>
                    <td>${carts.color}</td>
                    <td>${carts.size}</td>
                    <td>${carts.quantity}</td>
                    <td>${carts.price}</td>
                    <%-- <td>
                        <a href="UpdateCart.jsp?id=${carts.id}&name=${carts.name}&color=${carts.color}&size=${carts.size}&quantity=${carts.quantity}&price=${carts.price}">
                            <button>Update</button>
                        </a>
                        <form action="DeleteCartServlet" method="post">
                        <button>Delete</button>
                        </form>
                    </td> --%>
                    
                   <c:url value="UpdateCart.jsp" var="CartUpdates">
	                        
	                   <c:param name="id" value="${ID}"/>
	                   <c:param name="name" value="${Name}"/>
	                   <c:param name="color1" value="${Color}"/>
	                   <c:param name="size1" value="${Size}"/>
	                   <c:param name="quantity" value="${Quantity}"/>
	                   <c:param name="price" value="${Price}"/>
                          
                   
                	</c:url>
               		<td colspan="2">
               				
               			<a href="${CartUpdates}" style='text-decoration: none; color:white;'>
               					<button style='background-color: green;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Edit</button>
               			</a>
               				
               			<form name="cartDetails" action="DeleteCartServlet" method="post">
               				
               				<input type="hidden" name="id" value="${carts.id}"/>
               					
                           <button style='background-color: red;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Delete </button>
               			
               			</form>
                                  
               		</td>
                </tr>
            </c:forEach>
        </c:if>
        <c:if test="${empty allCarts}">
            <tr>
                <td colspan="7">No items in the cart.</td>
            </tr>
        </c:if>
   
       </table>
       <br>
        <button class="checkout-button"> <a href="checkout.jsp">Checkout</a></button>
    	
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