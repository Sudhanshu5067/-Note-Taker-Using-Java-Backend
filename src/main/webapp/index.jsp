<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Note Taker : Home Page</title>
    <%@ include file="all_js_css.jsp" %>
     <style>
      body {
            background-image: url('img/anime-girl-sad-pink-3840x2160-9296.jpg'); /* Replace with your background image */
            background-size: cover;
            background-position: center;
            height: 100vh; /* Full height */
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(10px); /* Apply blur effect to the body */
        }
         .header {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px; /* Space between header and container */
            position: absolute; /* Fixed at the top */
            top: 20px; /* Adjust as needed */
            left: 20px; /* Align to the left corner */
            width: calc(100%-40%); /* Width to fit content */
        }
            .logo {
            width: 80px; /* Adjust logo size */
            height: auto;
            margin-right: 500px; /* Space between logo and title */
        }

        .title {
           color: white;
           text-align: center; /* Center the text */
           
        }
        

        .container {
        
            background: rgba(255, 255, 255, 0.8); /* White background with some transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Optional shadow for depth */
        }
        .card {
            position: relative;
            overflow: hidden;
          
        }

        .card img {
            width: 100%;
            height: auto;
           
        }

        .card-info {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .card:hover .card-info {
            opacity: 1;
        }
    </style>
  </head>
  <body>
  
  <div class="header">
    <img src="img/sukuna_png_by_farss1_dekv4qg-pre.png " alt="Logo" class="logo"> <!-- Replace with your logo image -->
    <h1 id="project-title" class="title">Content..😊😊 </h1>
</div>
   
   <div class="container">
   <%@include file="navbar.jsp" %>
   
   
   <br>
   
     <h1 style="color: black;"> Content Shown with help of the Container </h1>
      <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="img/judy-alvarez-cyberpunk-2077-monochrome-xbox-series-x-and-3840x2160-6911.png" alt="Card image 1">
                <div class="card-info">
                    <h5 style="color: yellow;">Java</h5>
                    
                    <p>Java is a widely-used programming language that was designed with several key features in mind. These features contribute to its popularity and have established Java as a powerful, versatile language for various types of applications.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="img/anime-girl-demon-horn-tattoo-8k-wallpaper-uhdpaper.com-226@3@a.jpg" alt="Card image 2">
                <div class="card-info">
                    <h5 style="color: yellow;">HTML</h5>
                    <p>HTML, or HyperText Markup Language, is the foundational language used to create web pages. It provides the structure and content of a webpage, allowing browsers to render and display text, images, and other media in a user-friendly format.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="img/anime-anime-girls-cats-sitting-animals-umbrella-2274358-wallhere.com.jpg" alt="Card image 3">
                <div class="card-info">
                    <h5 style="color: yellow;">Spring</h5>
                    <p>Some information about this card.</p>
                </div>
            </div>
        </div>
    </div>
   
   </div>
   <script>
    const titles = ["Note Taker", "Shown The Item", "Add The Notes", "Update and Delete"]; // Add your titles here
    let index = 0;

    function changeTitle() {
        document.getElementById("project-title").innerText = titles[index];
        index = (index + 1) % titles.length; // Loop back to the first title
    }

    setInterval(changeTitle, 1000); // Change title every second
</script>

  </body>
</html>