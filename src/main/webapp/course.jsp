<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            /* Created with https://www.css-gradient.com */
            background: #161616;
             font-family: comic sans Ms;
        }
        h1 {
            color: #fff;
        }
        .lead {
            color: #aaa;
        }
        .wrapper {
            margin: 10vh;
        }
        .card {
            border: none;
            transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
            overflow: hidden;
            border-radius: 20px;
            min-height: 450px;
             font-family: comic sans Ms;
            box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.2);
        }
        .card.card-has-bg {
            background-size: 120%;
            background-repeat: no-repeat;
            background-position: center center;
        }
        .card.card-has-bg::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background: inherit;
            filter: grayscale(100%);
        }
        .card.card-has-bg:hover {
            transform: scale(0.98);
            box-shadow: 0 0 5px -2px rgba(0, 0, 0, 0.3);
            background-size: 130%;
        }
        .card.card-has-bg:hover .card-img-overlay {
            background: linear-gradient(0deg, rgba(255, 186, 33, 0.5) 0%, rgba(255, 186, 33, 1) 100%);
        }
        .card-footer {
            background: none;
            border-top: none;
        }
        .media img {
            border: solid 3px rgba(255, 255, 255, 0.3);
        }
        .card-title {
            font-weight: 800;
        }
        .card-meta {
            color: rgba(0, 0, 0, 0.3);
            text-transform: uppercase;
            font-weight: 500;
            letter-spacing: 2px;
        }
        .card-body {
            transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
        }
        .card:hover .card-body {
            margin-top: 30px;
            transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
        }
        .card:hover {
            cursor: pointer;
            transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
        }
        .card-img-overlay {
            transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
            background: linear-gradient(0deg, rgba(255, 186, 33, 0.3785889355742297) 0%, rgba(255, 186, 33, 1) 100%);
        }
        @media (max-width: 768px) {
            .card {
                min-height: 350px;
            }
        }
        @media (max-width: 420px) {
            .card {
                min-height: 300px;
            }
        }
    </style>
</head>
<body>
    <section class="wrapper">
        <div class="container">
            <div class="row">
                <div class="col text-center mb-5">
                    <h1 class="display-4 font-weight-bolder">Student Course's ></h1>
                 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card text-dark card-has-bg click-col" style="background-image:url('');">
                        <img class="card-img d-none" src="https://img.freepik.com/free-vector/content-structure-concept-illustration_114360-5252.jpg?size=626&ext=jpg&ga=GA1.1.171440431.1708965654&semt=ais_user" alt="Creative Manner Design Lorem Ipsum Sit Amet Consectetur dipisi?">
                        <div class="card-img-overlay d-flex flex-column">
                            <div class="card-body">
                                
                                <h4 class="card-title mt-0 "><a class="text-dark" href="https://creativemanner.com">Web Development!</a></h4>
                                <small><i class="far fa-clock"></i>Html,Css,Js</small>
                            </div>
                            <div class="card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="https://assets.codepen.io/460692/internal/avatars/users/default.png?format=auto&version=1688931977&width=80&height=80" alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-dark d-block">SAI KRISHNA</h6>
                                        <small>Content Creator</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
                <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card text-dark card-has-bg click-col" style="background-image:url('');">
                        <img class="card-img d-none" src="https://tse1.mm.bing.net/th?id=OIP.WaCOgSUgMm-RNN1PhMBPWgHaEK&pid=Api&P=0&h=180">
                        <div class="card-img-overlay d-flex flex-column">
                            <div class="card-body">
                                
                                <h4 class="card-title mt-0 "><a class="text-dark" href="https://creativemanner.com">Java Programming!</a></h4>
                                <small><i class="far fa-clock"></i>Dsa,Strings,Collections...</small>
                            </div>
                            <div class="card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="https://assets.codepen.io/460692/internal/avatars/users/default.png?format=auto&version=1688931977&width=80&height=80" alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-dark d-block">SAI KRISHNA</h6>
                                        <small>Content Creator</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                  <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card text-dark card-has-bg click-col" style="background-image:url('');">
                        <img class="card-img d-none" src="https://tse1.mm.bing.net/th?id=OIP.WaCOgSUgMm-RNN1PhMBPWgHaEK&pid=Api&P=0&h=180">
                        <div class="card-img-overlay d-flex flex-column">
                            <div class="card-body">
                                
                                <h4 class="card-title mt-0 "><a class="text-dark" href="https://creativemanner.com">Networking!</a></h4>
                                <small><i class="far fa-clock"></i>Routing,Switching..</small>
                            </div>
                            <div class="card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="https://assets.codepen.io/460692/internal/avatars/users/default.png?format=auto&version=1688931977&width=80&height=80" alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-dark d-block">SAI KRISHNA</h6>
                                        <small>Content Creator</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                  <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card text-dark card-has-bg click-col" style="background-image:url('');">
                        <img class="card-img d-none" src="https://tse1.mm.bing.net/th?id=OIP.WaCOgSUgMm-RNN1PhMBPWgHaEK&pid=Api&P=0&h=180">
                        <div class="card-img-overlay d-flex flex-column">
                            <div class="card-body">
                                
                                <h4 class="card-title mt-0 "><a class="text-dark" href="https://creativemanner.com">Figma!</a></h4>
                                <small><i class="far fa-clock"></i>UI/UX,Wiireframes...</small>
                            </div>
                            <div class="card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="https://assets.codepen.io/460692/internal/avatars/users/default.png?format=auto&version=1688931977&width=80&height=80" alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-dark d-block">SAI KRISHNA</h6>
                                        <small>Content Creator</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                  
                <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card text-dark card-has-bg click-col" style="background-image:url('');">
                        <img class="card-img d-none" src="https://img.freepik.com/free-vector/content-structure-concept-illustration_114360-5252.jpg?size=626&ext=jpg&ga=GA1.1.171440431.1708965654&semt=ais_user" alt="Creative Manner Design Lorem Ipsum Sit Amet Consectetur dipisi?">
                        <div class="card-img-overlay d-flex flex-column">
                            <div class="card-body">
                                
                                <h4 class="card-title mt-0 "><a class="text-dark" href="https://creativemanner.com">Python Programming!</a></h4>
                                <small><i class="far fa-clock"></i>Dsa,Strings,Numpy,Pandas</small>
                            </div>
                            <div class="card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="https://assets.codepen.io/460692/internal/avatars/users/default.png?format=auto&version=1688931977&width=80&height=80" alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-dark d-block">SAI KRISHNA</h6>
                                        <small>Content Creator</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
                    
                <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card text-dark card-has-bg click-col" style="background-image:url('');">
                        <img class="card-img d-none" src="https://img.freepik.com/free-vector/content-structure-concept-illustration_114360-5252.jpg?size=626&ext=jpg&ga=GA1.1.171440431.1708965654&semt=ais_user" alt="Creative Manner Design Lorem Ipsum Sit Amet Consectetur dipisi?">
                        <div class="card-img-overlay d-flex flex-column">
                            <div class="card-body">
                                
                                <h4 class="card-title mt-0 "><a class="text-dark" href="https://creativemanner.com">Artificial Intelligence!</a></h4>
                                <small><i class="far fa-clock"></i>Object Detection,Nlp....</small>
                            </div>
                            <div class="card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="https://assets.codepen.io/460692/internal/avatars/users/default.png?format=auto&version=1688931977&width=80&height=80" alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-dark d-block">SAI KRISHNA</h6>
                                        <small>Content Creator</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        
    </section>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
