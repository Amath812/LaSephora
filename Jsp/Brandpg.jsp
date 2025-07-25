<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
   
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
            @import url('https://fonts.cdnfonts.com/css/evolventa');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Syne:wght@400..800&display=swap');
        h1 {
            font-size: 24px;
            margin-top: 20px;
            text-align: center;
            padding-bottom: 40px;
            padding-top: 70px;
        }
        .brand-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 20px 0;
            padding-top: 20px;
            background: linear-gradient(to right, #f5f5dc, transparent); /* Light cream gradient */
            padding: 20px;  /* Extra padding to see the gradient */
            border-radius: 8px; /* Rounded corners for a smooth look */
        }

        .image-container {
            width: 50%;
            height: 300px;
            position: relative;
        }

        .image-container img {
            width: 100%;
            height: 100%;
            object-fit: contain;  /* Ensures the full image is visible */
            position: absolute;
            top: 0;
            left: 0;
            transition: opacity 0.5s;
        }

        .image-container img.active {
            opacity: 1;
        }

        .image-container img:not(.active) {
            opacity: 0;
        }

        .brand-description {
            width: 55%;
            padding: 20px;
        }

        .brand-description h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .brand-description p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .brand-container:hover {
            cursor: pointer;
        }
    </style>
<meta charset="UTF-8">
<title>Brands</title>
</head>
<body>
<!-- Header + navbar -->

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

    <h1>Explore our brands</h1>

    <div class="brand-container" data-url="AllproductNikepg.jsp">
        <div class="image-container">
            <img src="images/NikeMensHoodie.png" alt="Nike Image 1" class="active">
            <img src="images/NikeMensJoggers.png" alt="Nike Image 2">
            <img src="images/NikeMensShirt.png" alt="Nike Image 3">
        </div>
        <div class="brand-description">
            <h2>NIKE</h2>
            <p>Innovative sportswear for athletes worldwide.</p>
        </div>
    </div>

    <div class="brand-container" data-url="AllproductPradapg.jsp">
        <div class="image-container">
            <img src="images/ParadaWomensDress.jpg" alt="Prada Image 1" class="active">
            <img src="images/PradaMensJacket.jpg" alt="Prada Image 2">
            <img src="images/PradaMensPants.jpg" alt="Prada Image 3">
        </div>
        <div class="brand-description">
            <h2>PRADA</h2>
            <p>Luxury fashion house specializing in timeless design.</p>
        </div>
    </div>

    <div class="brand-container" data-url="AllproductTommyHilfigerpg.jsp">
        <div class="image-container">
            <img src="images/TommyMensHoodie.jpg" alt="Tommy Image 1" class="active">
            <img src="images/TommyMensPants.jpeg" alt="Tommy Image 2">
            <img src="images/TommyWomensRomper.jpg" alt="Tommy Image 3">
        </div>
        <div class="brand-description">
            <h2>Tommy Hilfiger</h2>
            <p>Classic American cool style, known for preppy designs.</p>
        </div>
    </div>

    <div class="brand-container" data-url="AllproductpoloUspg.jsp">
        <div class="image-container">
            <img src="images/PoloMensBlazer.jpg" alt="US Polo Image 1" class="active">
            <img src="images/PoloMensShirt.jpg" alt="US Polo Image 2">
            <img src="images/PoloWomensDress.jpg" alt="US Polo Image 3">
        </div>
        <div class="brand-description">
            <h2>US POLO</h2>
            <p>Official brand of the United States Polo Association.</p>
        </div>
    </div>

    <!--footer-->
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

    <script>
        // Function to handle image transitions for each brand
        function startImageSlideshow(imageContainers) {
            imageContainers.forEach(container => {
                let images = container.querySelectorAll('img');
                let currentImage = 0;

                setInterval(() => {
                    images[currentImage].classList.remove('active');
                    currentImage = (currentImage + 1) % images.length;
                    images[currentImage].classList.add('active');
                }, 3000);
            });
        }

        // Select all image containers
        const imageContainers = document.querySelectorAll('.image-container');
        startImageSlideshow(imageContainers);

        // Add click events to each brand container
        const brandContainers = document.querySelectorAll('.brand-container');
        brandContainers.forEach(brand => {
            brand.addEventListener('click', () => {
                const url = brand.getAttribute('data-url');
                window.location.href = url;
            });
        });
    </script>
</body>
</html>