<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PublicView.aspx.cs" Inherits="Portfolio.PublicView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nafiul Hasan</title>

  <!--
    - favicon
  -->
  <link rel="shortcut icon" href="./assets/images/icons/favicon.png" type="image/x-icon">

  <!--
    - custom css link
  -->
  <link rel="stylesheet" href="./assets/css/style.css">

  <!--
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">


         <main>

    <!--
      - #SIDEBAR
    -->

    <aside class="sidebar" data-sidebar>

      <div class="sidebar-info">

        <figure class="avatar-box">
          <img src="./assets/images/icons/nafiul.png" alt="Nafiul Hasan" width="80">
        </figure>

        <div class="info-content">
          <h1 class="name" title="Nafiul Hasan">Nafiul Hasan</h1>

          <p class="title">Software Engineer</p>
           
           <a href="https://drive.google.com/drive/folders/1oWvbn6NeMhVtXyRbDiKLUpLV8QsaAVZY?usp=sharing"><button class="form-btn" style="margin-top:8px;" >Download CV</button></a>
            

        </div>

        <button class="info_more-btn" data-sidebar-btn>
          <span>Show Contacts</span>

          <ion-icon name="chevron-down"></ion-icon>
        </button>

      </div>

      <div class="sidebar-info_more">

        <div class="separator"></div>

        <ul class="contacts-list">

          <li class="contact-item">

            <div class="icon-box">
              <ion-icon name="mail-outline"></ion-icon>
            </div>

            <div class="contact-info">
              <p class="contact-title">Email</p>

              <a href="mailto:nafiulhasan125884@gmail.com" class="contact-link">nafiulhasan125884@gmail.com</a>
            </div>

          </li>

          <li class="contact-item">

            <div class="icon-box">
             <img src="assets/images/icons/linkedin1.svg" alt="">
            </div>

            <div class="contact-info">
              <p class="contact-title">Linkedin</p>

              <a href="https://www.linkedin.com/in/nafiul-hasan-524274276/" class="contact-link">Nafiul Hasan</a>
            </div>

          </li>

          <li class="contact-item">

            <div class="icon-box">
              <ion-icon name="calendar-outline"></ion-icon>
            </div>

            <div class="contact-info">
              <p class="contact-title">Birthday</p>

              <time datetime="2001-09-25">September 25</time>
            </div>

          </li>

          <li class="contact-item">

            <div class="icon-box">
              <ion-icon name="location-outline"></ion-icon>
            </div>

            <div class="contact-info">
              <p class="contact-title">Location</p>

              <address>Narail Sadar, Khulna, Bangladesh</address>
            </div>

          </li>

        </ul>

        <div class="separator"></div>

        <ul class="social-list">

          <li class="social-item">
            <a href="#" class="social-link">
              <ion-icon name="logo-facebook"></ion-icon>
            </a>
          </li>

          <li class="social-item">
            <a href="#" class="social-link">
              <ion-icon name="logo-twitter"></ion-icon>
            </a>
          </li>

          <li class="social-item">
            <a href="https://www.instagram.com/__nafiul_hasan_/?hl=en" class="social-link">
              <ion-icon name="logo-instagram"></ion-icon>
            </a>
          </li>

          <li class="social-item">
            <a href="https://github.com/NafiulHasan41" class="social-link">
             <img src="assets/images/github.png" alt="github">
            </a>
          </li>

        </ul>

      </div>

    </aside>





    <!--
      - #main-content
    -->

    <div class="main-content">

      <!--
        - #NAVBAR
      -->

      <nav class="navbar">

        <ul class="navbar-list">

          <li class="navbar-item">
            <button class="navbar-link  active" data-nav-link>About</button>
          </li>

          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Resume</button>
          </li>

          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Portfolio</button>
          </li>

          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Blog</button>
          </li>

          <li class="navbar-item">
            <button class="navbar-link" data-nav-link>Contact</button>
          </li>

        </ul>

      </nav>





      <!--
        - #ABOUT
      -->

      <article class="about  active" data-page="about">

        <header>
          <h2 class="h2 article-title">About me</h2>
        </header>

        <section class="about-text">
          <p>
            <span  style="font-size: medium; font-weight: 600;">I am a passionate and versatile software developer with expertise
             in both the MERN (MongoDB, Express.js, React, Node.js) stack 
             for web development and Android app development using Java and Kotlin.
             I thrive on building seamless and engaging digital experiences.</span>
          </p>

          <p>
            <span style="font-weight: 700; color: rgb(243, 171, 16);">🌐 Web Development:</span> MERN Stack
            In the world of web development, I specialize in the MERN stack. From crafting robust backends with Node.js and Express.js to creating responsive and interactive user interfaces with React, I enjoy bringing ideas to life on the web. MongoDB serves as my preferred database, providing flexibility and scalability to applications.<br>
            <br>
            <span style="font-weight: 700; color: rgb(243, 171, 16);">📱 Mobile Development:</span> Android (Java & Kotlin)
            With a deep understanding of mobile development, I am proficient in building native Android applications using both Java and Kotlin. I believe in delivering apps that not only meet functional requirements but also offer a delightful user experience.
            <br>
            <br>
            <span style="font-weight: 700; color: rgb(243, 171, 16);">🚀  Continuous Learning:</span> PHP Laravel and ASP.NET
            My journey in software development is a continuous learning process. Currently, I am expanding my skill set by diving into PHP Laravel and ASP.NET. I am excited about the opportunities these technologies bring and am committed to staying at the forefront of industry trends.
            <br>
            <br>
           <span style="font-weight: 700; color: rgb(243, 171, 16);"> 🔧 What I Bring to the Table:</span>  
            Full Stack Proficiency: Capable of handling both frontend and backend development, ensuring end-to-end solutions.
            Problem Solver: Thrive on overcoming challenges with creative and efficient solutions.
            Team Player: Collaborative mindset, adept at working in cross-functional teams.
            Passionate Learner: Eager to explore new technologies and frameworks to stay ahead in the ever-evolving tech landscape.
          </p>
        </section>


        <!--
          - service
        -->

        <section class="service">

          <h3 class="h3 service-title">What i'm doing</h3>

          <ul class="service-list">


            <li class="service-item">

              <div class="service-icon-box">
                <img src="./assets/images/icon-app.svg" alt="mobile app icon" width="40">
              </div>

              <div class="service-content-box">
                <h4 class="h4 service-item-title">Mobile apps</h4>

                <p class="service-item-text">
                  Professional development of applications for Native Android . <br> (JAVA & KOTLIN)
                </p>
              </div>

            </li>


            <li class="service-item">

              <div class="service-icon-box">
                <img src="./assets/images/icon-dev.svg" alt="Web development icon" width="40">
              </div>

              <div class="service-content-box">
                <h4 class="h4 service-item-title">Web development</h4>

                <p class="service-item-text">
                  High-quality development of sites at the professional level. <br>
                  (MERN STACK , PHP(Laravel) , ASP.NET)
                </p>
              </div>

            </li>

         

            
            <li class="service-item">

              <div class="service-icon-box">
                <img src="./assets/images/icon-design.svg
                " alt="design icon" width="40">
              </div>

              <div class="service-content-box">
                <h4 class="h4 service-item-title">Software design</h4>

                <p class="service-item-text">
                  The most modern and high-quality design made at a professional level.
                </p>
              </div>

            </li>

            <li class="service-item">

              <div class="service-icon-box">
                <img src="./assets/images/icon-photo.svg" alt="camera icon" width="40">
              </div>

              <div class="service-content-box">
                <h4 class="h4 service-item-title">Travelling</h4>

                <p class="service-item-text">
                
                  Travel unfolds cultures, broadens horizons, and sparks self-discovery.
                   Each destination is a unique story, enriching life's canvas with memories.
                </p>
              </div>

            </li>

          </ul>

        </section>


        <!-- need to make dynamic -->
        <!--
          - testimonials
        -->

        <section class="testimonials">

          <h3 class="h3 testimonials-title">Testimonials</h3>

          <ul class="testimonials-list has-scrollbar">

            <li class="testimonials-item">
              <div class="content-card" data-testimonials-item>

                <figure class="testimonials-avatar-box">
                  <img src="./assets/images/avatar-1.png" alt="Dany lov" width="60" data-testimonials-avatar>
                </figure>

                <h4 class="h4 testimonials-item-title" data-testimonials-title>Dany lov</h4>

                <div class="testimonials-text" data-testimonials-text>
                  <p>
                   Nafiul Hasan, a talented Software Developer, excels in crafting seamless experiences through Android native and web development
                      . With a passion for creating innovative solutions, he merges technical prowess with creativity.
                      Nafiul's commitment to excellence shines through his ability to build robust applications that elevate 
                      user experiences across diverse platforms.

                  </p>
                </div>

              </div>
            </li>

            <li class="testimonials-item">
              <div class="content-card" data-testimonials-item>

                <figure class="testimonials-avatar-box">
                  <img src="./assets/images/avatar-2.png" alt="Jessia miller" width="60" data-testimonials-avatar>
                </figure>

                <h4 class="h4 testimonials-item-title" data-testimonials-title>Jessia miller</h4>

                <div class="testimonials-text" data-testimonials-text>
                  <p>
                      Nafiul Hasan, a talented Software Developer, excels in crafting seamless experiences through Android native and web development
   . With a passion for creating innovative solutions, he merges technical prowess with creativity.
   Nafiul's commitment to excellence shines through his ability to build robust applications that elevate 
   user experiences across diverse platforms.
                  </p>
                </div>

              </div>
            </li>

            <li class="testimonials-item">
              <div class="content-card" data-testimonials-item>

                <figure class="testimonials-avatar-box">
                  <img src="./assets/images/avatar-3.png" alt="Emily " width="60" data-testimonials-avatar>
                </figure>

                <h4 class="h4 testimonials-item-title" data-testimonials-title>Emily </h4>

                <div class="testimonials-text" data-testimonials-text>
                  <p>
                                       Nafiul Hasan, a talented Software Developer, excels in crafting seamless experiences through Android native and web development
. With a passion for creating innovative solutions, he merges technical prowess with creativity.
Nafiul's commitment to excellence shines through his ability to build robust applications that elevate 
user experiences across diverse platforms.
                  </p>
                </div>

              </div>
            </li>

            <li class="testimonials-item">
              <div class="content-card" data-testimonials-item>

                <figure class="testimonials-avatar-box">
                  <img src="./assets/images/avatar-4.png" alt="Henry Maxwell" width="60" data-testimonials-avatar>
                </figure>

                <h4 class="h4 testimonials-item-title" data-testimonials-title>Henry Maxwell</h4>

                <div class="testimonials-text" data-testimonials-text>
                  <p>

                                      Nafiul Hasan, a talented Software Developer, excels in crafting seamless experiences through Android native and web development
. With a passion for creating innovative solutions, he merges technical prowess with creativity.
Nafiul's commitment to excellence shines through his ability to build robust applications that elevate 
user experiences across diverse platforms.

                  </p>
                </div>

              </div>
            </li>

          </ul>

        </section>


        <!--
          - testimonials modal
        -->


        <div class="modal-container" data-modal-container>

          <div class="overlay" data-overlay></div>

          <section class="testimonials-modal">

            <button class="modal-close-btn" data-modal-close-btn>
              <ion-icon name="close-outline"></ion-icon>
            </button>

            <div class="modal-img-wrapper">
              <figure class="modal-avatar-box">
                <img src="./assets/images/avatar-1.png" alt="Daniel lewis" width="80" data-modal-img>
              </figure>

              <img src="./assets/images/icon-quote.svg" alt="quote icon">
            </div>

            <div class="modal-content">

              <h4 class="h3 modal-title" data-modal-title>Daniel lewis</h4>

              <time datetime="2021-06-14">14 June, 2021</time>

              <div data-modal-text>
                <p>
                                                       Nafiul Hasan, a talented Software Developer, excels in crafting seamless experiences through Android native and web development
. With a passion for creating innovative solutions, he merges technical prowess with creativity.
Nafiul's commitment to excellence shines through his ability to build robust applications that elevate 
user experiences across diverse platforms.
                </p>
              </div>

            </div>

          </section>

        </div>


        <!--
          - clients
        -->
        <!-- need to make dynamic -->
        <section class="clients">

          <h3 class="h3 clients-title">Clients</h3>

          <ul class="clients-list has-scrollbar">

            <li class="clients-item">
              <a href="#">
                <img src="./assets/images/logo-1-color.png" alt="client logo">
              </a>
            </li>

            <li class="clients-item">
              <a href="#">
                <img src="./assets/images/logo-2-color.png" alt="client logo">
              </a>
            </li>

            <li class="clients-item">
              <a href="#">
                <img src="./assets/images/logo-3-color.png" alt="client logo">
              </a>
            </li>

            <li class="clients-item">
              <a href="#">
                <img src="./assets/images/logo-4-color.png" alt="client logo">
              </a>
            </li>

            <li class="clients-item">
              <a href="#">
                <img src="./assets/images/logo-5-color.png" alt="client logo">
              </a>
            </li>

            <li class="clients-item">
              <a href="#">
                <img src="./assets/images/logo-6-color.png" alt="client logo">
              </a>
            </li>

          </ul>

        </section>

      </article>





      <!--
        - #RESUME
      -->
<!-- need to make dynamic -->
      <article class="resume" data-page="resume">

        <header>
          <h2 class="h2 article-title">Resume</h2>
        </header>

        <section class="timeline">

          <div class="title-wrapper">
            <div class="icon-box">
              <ion-icon name="book-outline"></ion-icon>
            </div>

            <h3 class="h3">Education</h3>
          </div>
               
             <!--
           section for education changed for database connection
          -->



         <ol class="timeline-list">
            <asp:Repeater ID="rptEducation" runat="server">
                <ItemTemplate>
                    <li class="timeline-item">
                        <h4 class="h4 timeline-item-title"><%# Eval("SchoolName") %></h4>
                        <span><%# Eval("StartYear") %> — <%# Eval("EndYear") %></span>
                        <p class="timeline-text"><%# Eval("Description") %></p>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ol>

        </section>

        <section class="timeline">

          <div class="title-wrapper">
            <div class="icon-box">
              <ion-icon name="book-outline"></ion-icon>
            </div>

            <h3 class="h3">Experience</h3>
          </div>

          <ol class="timeline-list">

                 <!--
         section for exprience changed for database connection
            -->

              <asp:Repeater ID="timelineRepeater" runat="server">
                  <ItemTemplate>
                      <li class="timeline-item">
                          <h4 class="h4 timeline-item-title"><%# Eval("Title") %></h4>
                          <span><%# Eval("Duration") %></span>
                          <p class="timeline-text"><%# Eval("Description") %></p>
                      </li>
                  </ItemTemplate>
              </asp:Repeater>

          </ol>

        </section>

        <section class="skill">

          <h3 class="h3 skills-title">My skills</h3>

          <ul class="skills-list content-card">

         
                     <!--
               section for Skill s changed for database connection
                  -->
              <asp:Repeater ID="rptSkill" runat="server">
                  <ItemTemplate>
                        <li class="skills-item">
                            <div class="title-wrapper">
                                <h5 class="h5"><%# Eval("SkillName") %></h5>
                                <data value='<%# Eval("SkillPercentage") %>'><%# Eval("SkillPercentage") %>%</data>
                            </div>
                            <div class="skill-progress-bg">
                                <div class="skill-progress-fill" style='<%# "width:" + Eval("SkillPercentage") + "%;" %>'></div>
                            </div>
                      </li>
                  </ItemTemplate>
              </asp:Repeater>



          </ul>

        </section>

      </article>

      <!--
        - #PORTFOLIO
      -->

      <article class="portfolio" data-page="portfolio">

        <header>
          <h2 class="h2 article-title">Portfolio</h2>
        </header>

        <section class="projects">

          <ul class="filter-list">

            <li class="filter-item">
              <button class="active" data-filter-btn>All</button>
            </li>

            <li class="filter-item">
              <button data-filter-btn>Web design</button>
            </li>

            <li class="filter-item">
              <button data-filter-btn>Applications</button>
            </li>

            <li class="filter-item">
              <button data-filter-btn>Web development</button>
            </li>

          </ul>

          <div class="filter-select-box">

            <button class="filter-select" data-select>

              <div class="select-value" data-selecct-value>Select category</div>

              <div class="select-icon">
                <ion-icon name="chevron-down"></ion-icon>
              </div>

            </button>

            <ul class="select-list">

              <li class="select-item">
                <button data-select-item>All</button>
              </li>

              <li class="select-item">
                <button data-select-item>Web design</button>
              </li>

              <li class="select-item">
                <button data-select-item>Applications</button>
              </li>

              <li class="select-item">
                <button data-select-item>Web development</button>
              </li>

            </ul>

          </div>

          <ul class="project-list">

            <li class="project-item  active" data-filter-item data-category="web development">
              <a href="https://nafiulhasan41.github.io/E-ticket_website_Responsive/">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/busE.png" alt="finance" loading="lazy">
                </figure>

                <h3 class="project-title">E-Bus Ticket</h3>

                <p class="project-category">Web development</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="web development">
              <a href="https://nafiulhasan41.github.io/web_single_landing_page_notResnponsive_ph_assignmen_1/">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/Crismas.png" alt="orizon" loading="lazy">
                </figure>

                <h3 class="project-title">Christmas Offer</h3>

                <p class="project-category">Web development</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="web design">
              <a href="#">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/project-3.jpg" alt="fundo" loading="lazy">
                </figure>

                <h3 class="project-title">House Design</h3>

                <p class="project-category">Web design</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="applications">
              <a href="https://github.com/NafiulHasan41/Innocent_Bird">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/Bird.png" alt="brawlhalla" loading="lazy">
                </figure>

                <h3 class="project-title">InnocentBird Game</h3>

                <p class="project-category">Applications</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="web design">
              <a href="https://nafiulhasan41.github.io/responsive_landing_page_using_framework/">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/football.png" alt="dsm." loading="lazy">
                </figure>

                <h3 class="project-title">Hookey</h3>

                <p class="project-category">Web design</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="web design">
              <a href="#">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/portfolioNafiul.png" alt="metaspark" loading="lazy">
                </figure>

                <h3 class="project-title">Personal Portfolio</h3>

                <p class="project-category">Web design</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="web development">
              <a href="https://nafiulhasanassignment6.netlify.app/">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/Retro.png" alt="summary" loading="lazy">
                </figure>

                <h3 class="project-title">Retro API</h3>

                <p class="project-category">Web development</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="applications">
              <a href="https://play.google.com/store/apps/details?id=com.nafsoft.todolistapplication">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/TodoListapp.png" alt="task manager" loading="lazy">
                </figure>

                <h3 class="project-title">ToDoList</h3>

                <p class="project-category">Applications</p>

              </a>
            </li>

            <li class="project-item  active" data-filter-item data-category="web development">
              <a href="https://nafiulhasan41.github.io/PH_second_assignment_responsive_travel_website/">

                <figure class="project-img">
                  <div class="project-item-icon-box">
                    <ion-icon name="eye-outline"></ion-icon>
                  </div>

                  <img src="./assets/images/icons/travell.png" alt="arrival" loading="lazy">
                </figure>

                <h3 class="project-title">Travel Website</h3>

                <p class="project-category">Web development</p>

              </a>
            </li>

          </ul>

        </section>

      </article>





      <!--
        - #BLOG
      -->

      <article class="blog" data-page="blog">

        <header>
          <h2 class="h2 article-title">Blog</h2>
        </header>

        <section class="blog-posts">

          <ul class="blog-posts-list">

            <li class="blog-post-item">
              <a href="#">

                <figure class="blog-banner-box">
                  <img src="./assets/images/blog-1.jpg" alt="Design conferences in 2022" loading="lazy">
                </figure>

                <div class="blog-content">

                  <div class="blog-meta">
                    <p class="blog-category">Design</p>

                    <span class="dot"></span>

                    <time datetime="2022-02-23">Fab 23, 2022</time>
                  </div>

                  <h3 class="h3 blog-item-title">Design conferences in 2022</h3>

                  <p class="blog-text">
                    Veritatis et quasi architecto beatae vitae dicta sunt, explicabo.
                  </p>

                </div>

              </a>
            </li>

            <li class="blog-post-item">
              <a href="#">

                <figure class="blog-banner-box">
                  <img src="./assets/images/blog-2.jpg" alt="Best fonts every designer" loading="lazy">
                </figure>

                <div class="blog-content">

                  <div class="blog-meta">
                    <p class="blog-category">Design</p>

                    <span class="dot"></span>

                    <time datetime="2022-02-23">Fab 23, 2022</time>
                  </div>

                  <h3 class="h3 blog-item-title">Best fonts every designer</h3>

                  <p class="blog-text">
                    Sed ut perspiciatis, nam libero tempore, cum soluta nobis est eligendi.
                  </p>

                </div>

              </a>
            </li>

            <li class="blog-post-item">
              <a href="#">

                <figure class="blog-banner-box">
                  <img src="./assets/images/blog-3.jpg" alt="Design digest #80" loading="lazy">
                </figure>

                <div class="blog-content">

                  <div class="blog-meta">
                    <p class="blog-category">Design</p>

                    <span class="dot"></span>

                    <time datetime="2022-02-23">Fab 23, 2022</time>
                  </div>

                  <h3 class="h3 blog-item-title">Design digest #80</h3>

                  <p class="blog-text">
                    Excepteur sint occaecat cupidatat no proident, quis nostrum exercitationem ullam corporis suscipit.
                  </p>

                </div>

              </a>
            </li>

            <li class="blog-post-item">
              <a href="#">

                <figure class="blog-banner-box">
                  <img src="./assets/images/blog-4.jpg" alt="UI interactions of the week" loading="lazy">
                </figure>

                <div class="blog-content">

                  <div class="blog-meta">
                    <p class="blog-category">Design</p>

                    <span class="dot"></span>

                    <time datetime="2022-02-23">Fab 23, 2022</time>
                  </div>

                  <h3 class="h3 blog-item-title">UI interactions of the week</h3>

                  <p class="blog-text">
                    Enim ad minim veniam, consectetur adipiscing elit, quis nostrud exercitation ullamco laboris nisi.
                  </p>

                </div>

              </a>
            </li>

            <li class="blog-post-item">
              <a href="#">

                <figure class="blog-banner-box">
                  <img src="./assets/images/blog-5.jpg" alt="The forgotten art of spacing" loading="lazy">
                </figure>

                <div class="blog-content">

                  <div class="blog-meta">
                    <p class="blog-category">Design</p>

                    <span class="dot"></span>

                    <time datetime="2022-02-23">Fab 23, 2022</time>
                  </div>

                  <h3 class="h3 blog-item-title">The forgotten art of spacing</h3>

                  <p class="blog-text">
                    Maxime placeat, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                  </p>

                </div>

              </a>
            </li>

            <li class="blog-post-item">
              <a href="#">

                <figure class="blog-banner-box">
                  <img src="./assets/images/blog-6.jpg" alt="Design digest #79" loading="lazy">
                </figure>

                <div class="blog-content">

                  <div class="blog-meta">
                    <p class="blog-category">Design</p>

                    <span class="dot"></span>

                    <time datetime="2022-02-23">Fab 23, 2022</time>
                  </div>

                  <h3 class="h3 blog-item-title">Design digest #79</h3>

                  <p class="blog-text">
                    Optio cumque nihil impedit uo minus quod maxime placeat, velit esse cillum.
                  </p>

                </div>

              </a>
            </li>

          </ul>

        </section>

      </article>





      <!--
        - #CONTACT
      -->

      <!--   -->

      <article class="contact" data-page="contact">
            <header>
                <h2 class="h2 article-title">Contact</h2>
            </header>

            <section class="contact-form">
                <h3 class="h3 form-title">Contact Form</h3>

                <div class="input-wrapper">
                    <asp:TextBox ID="txtFullname" runat="server" CssClass="form-input" placeholder="Full name" Required="true"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder="Email address" Required="true" Type="Email"></asp:TextBox>
                </div>

                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-input" TextMode="MultiLine" placeholder="Your Message" Required="true"></asp:TextBox>

                <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" CssClass="form-btn" OnClick="btnSendMessage_Click" />
            </section>
        </article>

    </div>

  </main>
       
    </form>

 
     <!--
    - custom js link
  -->
  <script src="./assets/js/script.js"></script>

  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>
