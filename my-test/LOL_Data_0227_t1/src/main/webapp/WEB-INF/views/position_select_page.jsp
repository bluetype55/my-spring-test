<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ICIA LOL Team project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.js"
        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
</head>

<body style="background-color: #16181b;">

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="bootstrap" viewBox="0 0 118 94">
            <title>Bootstrap</title>
            <path fill-rule="evenodd" clip-rule="evenodd"
                d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z">
            </path>
        </symbol>
        <symbol id="facebook" viewBox="0 0 16 16">
            <path
                d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
        </symbol>
        <symbol id="instagram" viewBox="0 0 16 16">
            <path
                d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
        </symbol>
        <symbol id="twitter" viewBox="0 0 16 16">
            <path
                d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
        </symbol>
    </svg>
    <!------------------------------------------------------------------------------------------------------------------------------->
    <!------------------------------------------------------------HEADER------------------------------------------------------------->
    <!------------------------------------------------------------------------------------------------------------------------------->
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#" onclick="team_member()">ICIA LOL Team project</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                    aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">History</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Win Rate</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Counter</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Statistics</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button type="button" class="btn btn-secondary">Search</button>
                    </form>
                    <button type="button" class="btn btn-light" style="margin: 0 10px 0 50px;">Login</button>
                    <button type="button" class="btn btn-light">Join</button>
                </div>
            </div>
        </nav>
    </header>
    <!------------------------------------------------------------------------------------------------------------------------------->
    <!---------------------------------------------------------HEADER END------------------------------------------------------------>
    <!------------------------------------------------------------------------------------------------------------------------------->



    <!------------------------------------------------------------------------------------------------------------------------------->
    <!----------------------------------------------------------Carousel------------------------------------------------------------->
    <!------------------------------------------------------------------------------------------------------------------------------->
    <div class="gap" style="margin: 100px;">
    </div>

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" style="padding: 20px;">
        <div style="color: #fff; text-align: center;">
            <h1>라인을 선택해주세요</h1>
        </div>
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
                aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4"
                aria-label="Slide 5"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <a href="champ-select">
                    <!--링크 삽입-->
                    <img src="//i.namu.wiki/s/01df807625eb2afdab66c3e5cdd1d40963574ff12ad7a86ebeebd49cf1f706c51438a93156c5daacbe20a8f33a9619cbdaead95c9c8c6beda87fc724b45f4cba40973fd67b84a1800623b8964c85f87cc7230341f0bced2625be77b4ee90ea89"
                        class="d-block w-100" alt="탑 이미지" style="height: 600px;"></a>
            </div>
            <div class="carousel-item">
                <a href="champ-select">
                    <img src="//i.namu.wiki/s/6ffa6c11f375ff5d95df85e7e03a4ea98f0244afab561b9fe21a0f73b6276f39064b4fe597e996f422da1f9ca611a79f0305d5cb6b86144ecc19e7d9f18949d31652dc40fa1c416311707551a374d4e71a1966c0a6dadde61da90c0e9abeb849"
                        class="d-block w-100" alt="정글 이미지" style="height: 600px;"></a>
            </div>
            <div class="carousel-item">
                <a href="champ-select">
                    <img src="//i.namu.wiki/s/ba2c1e02663d88da99b78306aa138ed4a494d56c27c406aaf844a1c85217d02a403d4da55ea9829b1e9704a9b1dca3eb7af8457987683d228a22fe8801eb8410c539599abee667009dc54717f0f7267be3b3af3ab5316139c8cfe8198dfd7385"
                        class="d-block w-100" alt="미드 이미지" style="height: 600px;"></a>
            </div>
            <div class="carousel-item">
                <a href="champ-select">
                    <img src="//i.namu.wiki/s/c64d32e917828f8e4fac8187238a8d43c5f4ef8381468bb6ca082b001c2b9c9dda18f939f864234da58dbdcec7781798916f183e29c1a8ff0492af6617de2fc25046b69d3526e93ffc44dc4b3340215aacfbcf93045b8b1db862a4a334bf9799"
                        class="d-block w-100" alt="원딜 이미지" style="height: 600px;"></a>
            </div>
            <div class="carousel-item">
                <a href="champ-select">
                    <img src="//i.namu.wiki/s/1a62adab119f790613db1c8d2ba4d9d8693c3e7bf02c8fde5c5e38755f15c683b246c985c1f63dd50b380bd9bf43060b65355453a5b5de728a459ca89d23e82ddb15dd8e6bbedfe8317762ae9433197833a0998c65a7423176d9dcfeee3927ec"
                        class="d-block w-100" alt="서폿 이미지" style="height: 600px;"></a>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!------------------------------------------------------------------------------------------------------------------------------->
    <!-------------------------------------------------------Carousel END------------------------------------------------------------>
    <!------------------------------------------------------------------------------------------------------------------------------->



    <!------------------------------------------------------------------------------------------------------------------------------->
    <!------------------------------------------------------------FOOTER------------------------------------------------------------->
    <!------------------------------------------------------------------------------------------------------------------------------->
    <div class="container" style="max-width: 100%; padding: 30px; background-color: #212529; color: #fff;">
        <footer class="py-5">
            <div class="row">
                <div class="col-6 col-md-2 mb-3">
                    <h5>Section</h5>
                    <ul class="nav flex-column" >
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()" >Home</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Features</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Pricing</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">FAQs</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">About</a></li>
                    </ul>
                </div>
                <style>
                    .text-muted {
                        --bs-text-opacity: 1;
                        color: #fff !important;
                    }
                </style>

                <div class="col-6 col-md-2 mb-3">
                    <h5>Section</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Home</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Features</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Pricing</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">FAQs</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">About</a></li>
                    </ul>
                </div>

                <div class="col-6 col-md-2 mb-3">
                    <h5>Section</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Home</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Features</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">Pricing</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">FAQs</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"
                                onclick="notReady_Alert()">About</a></li>
                    </ul>
                </div>

                <div class="col-md-5 offset-md-1 mb-3">
                    <form>
                        <h5 onclick="team_member()">ICIA LOL Team Project</h5>
                        <p onclick="team_member()">조원 : 김명재, 박민규, 이태현, 이다은</p>
                    </form>
                </div>
            </div>
            <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
                <p>&copy; 2022 Company, Inc. All rights reserved.</p>
                <ul class="list-unstyled d-flex">
                    <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24">
                                <use xlink:href="#twitter" /></svg></a></li>
                    <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24">
                                <use xlink:href="#instagram" /></svg></a></li>
                    <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24">
                                <use xlink:href="#facebook" /></svg></a></li>
                </ul>
            </div>
        </footer>
    </div>
    <!------------------------------------------------------------------------------------------------------------------------------->
    <!---------------------------------------------------------FOOTER END------------------------------------------------------------>
    <!------------------------------------------------------------------------------------------------------------------------------->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
    <script>
        function notReady_Alert() {
            Swal.fire({
                title: '아직 준비되지 않은 서비스입니다.',
                icon: 'warning',
                confirmButtonText: '확인',
            })
        }

        function team_member() {
            Swal.fire({
                title: 'ICIA LOL Team Project',
                text: '조원 : 김명재, 박민규, 이태현, 이다은',
                icon: 'info',
                confirmButtonText: '확인',
            })
        }
    </script>
</body>

</html>