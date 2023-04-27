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

<body style="background-color:#16181b;">

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
    <!---------------------------------------------------------Counter Box----------------------------------------------------------->
    <!------------------------------------------------------------------------------------------------------------------------------->
    <div class="verserse-box">
        <div class="position-view"><img
                src="//i.namu.wiki/s/01df807625eb2afdab66c3e5cdd1d40963574ff12ad7a86ebeebd49cf1f706c51438a93156c5daacbe20a8f33a9619cbdaead95c9c8c6beda87fc724b45f4cba40973fd67b84a1800623b8964c85f87cc7230341f0bced2625be77b4ee90ea89"
                class="d-block w-100" alt="탑 이미지" style="height: 100px;"></a></div>
        <div class="v-info">
            <div class="champion-1"><img src="http://ddragon.leagueoflegends.com/cdn/img/champion/loading/Aatrox_0.jpg"
                    alt="...">
                <div style="text-align: center; margin: 10px;"><button type="button" class="btn btn-dark"
                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                        챔피언 변경하기
                    </button></div>
            </div>
            <div class="mathchUp-info">
                <div class="match-up">
                    <div class="champion-s1"><img
                            src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Aatrox.png" alt="...">
                        <div class="champion-name">
                            <h3>Aatrox</h3>
                        </div>
                    </div>
                    <div class="graph-container">
                        <div class="odds">
                            <h3>승률</h3>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-label="Example with label"
                                style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                        </div>
                    </div>
                    <div class="champion-s2"><img
                            src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Garen.png" alt="...">
                        <div class="champion-name">
                            <h3>Garen</h3>
                        </div>
                    </div>
                </div>
                <div class="graph-box">
                    <div class="graph-info"><span>KDA</span></div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-label="Example with label" style="width: 25%;"
                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                    </div>
                    <div class="graph-info"><span>킬 관여율</span></div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-label="Example with label" style="width: 25%;"
                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                    </div>
                    <div class="graph-info"><span>챔피언에게 가한 피해량</span></div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-label="Example with label" style="width: 25%;"
                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                    </div>
                    <div class="graph-info"><span>승률</span></div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-label="Example with label" style="width: 25%;"
                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                    </div>
                </div>
            </div>
            <div class="champion-2"><img src="http://ddragon.leagueoflegends.com/cdn/img/champion/loading/Garen_0.jpg"
                    alt="...">
                <div style="text-align: center; margin: 10px;"><button type="button" class="btn btn-dark"
                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                        챔피언 변경하기
                    </button></div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #212529;">
                <div class="modal-header" style="background-color: #212529; border: 3px solid #212529;">
                    <h1 class="modal-title fs-5" id="exampleModalLabel" style="color: #fff;">챔피언 변경</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" style="max-height: 500px; overflow: auto; background-color: #16181b;">
                    <div class="container">
                        <div class="champions">
                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Garen" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Garen.png" /><span>Garen</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Galio" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Galio.png" /><span>Galio</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Gangplank" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Gangplank.png" /><span>Gangplank</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Gragas" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Gragas.png" /><span>Gragas</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Graves" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Graves.png" /><span>Graves</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Gwen" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Gwen.png" /><span>Gwen</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Gnar" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Gnar.png" /><span>Gnar</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Nami" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Nami.png" /><span>Nami</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Nasus" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Nasus.png" /><span>Nasus</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Nautilus" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Nautilus.png" /><span>Nautilus</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Nocturne" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Nocturne.png" /><span>Nocturne</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Nunu" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Nunu.png" /><span>Nunu</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Nidalee" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Nidalee.png" /><span>Nidalee</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Neeko" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Neeko.png" /><span>Neeko</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Darius" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Darius.png" /><span>Darius</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Diana" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Diana.png" /><span>Diana</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Draven" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Draven.png" /><span>Draven</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ryze" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ryze.png" /><span>Ryze</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Rakan" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Rakan.png" /><span>Rakan</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Rammus" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Rammus.png" /><span>Rammus</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Lux" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Lux.png" /><span>Lux</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Rumble" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Rumble.png" /><span>Rumble</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Renekton" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Renekton.png" /><span>Renekton</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Leona" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Leona.png" /><span>Leona</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Reksai" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/RekSai.png" /><span>Reksai</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Rell" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Rell.png" /><span>Rell</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Rengar" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Rengar.png" /><span>Rengar</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Lucian" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Lucian.png" /><span>Lucian</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Lulu" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Lulu.png" /><span>Lulu</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Leblanc" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Leblanc.png" /><span>Leblanc</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Leesin" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/LeeSin.png" /><span>Leesin</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Riven" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Riven.png" /><span>Riven</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Lissandra" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Lissandra.png" /><span>Lissandra</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Lillia" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Lillia.png" /><span>Lillia</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Masteryi" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/MasterYi.png" /><span>Masteryi</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Maokai" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Maokai.png" /><span>Maokai</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Malzahar" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Malzahar.png" /><span>Malzahar</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Malphite" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Malphite.png" /><span>Malphite</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Mordekaiser" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Mordekaiser.png" /><span>Mordekaiser</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Morgana" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Morgana.png" /><span>Morgana</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Drmundo" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/DrMundo.png" /><span>Drmundo</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Missfortune" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/MissFortune.png" /><span>Missfortune</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Bard" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Bard.png" /><span>Bard</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Varus" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Varus.png" /><span>Varus</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Vi" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Vi.png" /><span>Vi</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Veigar" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Veigar.png" /><span>Veigar</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Vayne" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Vayne.png" /><span>Vayne</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Velkoz" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Velkoz.png" /><span>Velkoz</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Volibear" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Volibear.png" /><span>Volibear</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Braum" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Braum.png" /><span>Braum</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Brand" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Brand.png" /><span>Brand</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Vladimir" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Vladimir.png" /><span>Vladimir</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Blitzcrank" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Blitzcrank.png" /><span>Blitzcrank</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Viego" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Viego.png" /><span>Viego</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Viktor" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Viktor.png" /><span>Viktor</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Poppy" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Poppy.png" /><span>Poppy</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Samira" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Samira.png" /><span>Samira</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Sion" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Sion.png" /><span>Sion</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Sylas" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Sylas.png" /><span>Sylas</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Shaco" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Shaco.png" /><span>Shaco</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Senna" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Senna.png" /><span>Senna</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Seraphine" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Seraphine.png" /><span>Seraphine</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Sejuani" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Sejuani.png" /><span>Sejuani</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Sett" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Sett.png" /><span>Sett</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Sona" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Sona.png" /><span>Sona</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Soraka" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Soraka.png" /><span>Soraka</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Shen" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Shen.png" /><span>Shen</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Shyvana" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Shyvana.png" /><span>Shyvana</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Swain" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Swain.png" /><span>Swain</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Skarner" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Skarner.png" /><span>Skarner</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Sivir" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Sivir.png" /><span>Sivir</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Xinzhao" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/XinZhao.png" /><span>Xinzhao</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Syndra" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Syndra.png" /><span>Syndra</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Singed" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Singed.png" /><span>Singed</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Thresh" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Thresh.png" /><span>Thresh</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ahri" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ahri.png" /><span>Ahri</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Amumu" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Amumu.png" /><span>Amumu</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Aurelionsol" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/AurelionSol.png" /><span>Aurelionsol</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ivern" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ivern.png" /><span>Ivern</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Azir" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Azir.png" /><span>Azir</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Akali" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Akali.png" /><span>Akali</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Aatrox" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Aatrox.png" /><span>Aatrox</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Aphelios" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Aphelios.png" /><span>Aphelios</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Alistar" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Alistar.png" /><span>Alistar</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Annie" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Annie.png" /><span>Annie</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Anivia" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Anivia.png" /><span>Anivia</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ashe" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ashe.png" /><span>Ashe</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Yasuo" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Yasuo.png" /><span>Yasuo</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ekko" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ekko.png" /><span>Ekko</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Elise" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Elise.png" /><span>Elise</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Monkeyking" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/MonkeyKing.png" /><span>Monkeyking</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ornn" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ornn.png" /><span>Ornn</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Orianna" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Orianna.png" /><span>Orianna</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Olaf" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Olaf.png" /><span>Olaf</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Yone" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Yone.png" /><span>Yone</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Yorick" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Yorick.png" /><span>Yorick</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Udyr" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Udyr.png" /><span>Udyr</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Urgot" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Urgot.png" /><span>Urgot</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Warwick" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Warwick.png" /><span>Warwick</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Yuumi" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Yuumi.png" /><span>Yuumi</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Irelia" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Irelia.png" /><span>Irelia</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Evelynn" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Evelynn.png" /><span>Evelynn</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ezreal" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ezreal.png" /><span>Ezreal</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Illaoi" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Illaoi.png" /><span>Illaoi</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Jarvaniv" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/JarvanIV.png" /><span>Jarvaniv</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Xayah" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Xayah.png" /><span>Xayah</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Zyra" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Zyra.png" /><span>Zyra</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Zac" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Zac.png" /><span>Zac</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Janna" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Janna.png" /><span>Janna</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Jax" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Jax.png" /><span>Jax</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Zed" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Zed.png" /><span>Zed</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Xerath" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Xerath.png" /><span>Xerath</span></a>
                            </div>

                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Jayce" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Jayce.png" /><span>Jayce</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Zoe" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Zoe.png" /><span>Zoe</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Ziggs" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Ziggs.png" /><span>Ziggs</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Jhin" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Jhin.png" /><span>Jhin</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Zilean" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Zilean.png" /><span>Zilean</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Jinx" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Jinx.png" /><span>Jinx</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Chogath" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Chogath.png" /><span>Chogath</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Karma" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Karma.png" /><span>Karma</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Camille" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Camille.png" /><span>Camille</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kassadin" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kassadin.png" /><span>Kassadin</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Karthus" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Karthus.png" /><span>Karthus</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Cassiopeia" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Cassiopeia.png" /><span>Cassiopeia</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kaisa" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kaisa.png" /><span>Kaisa</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Khazix" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Khazix.png" /><span>Khazix</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Katarina" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Katarina.png" /><span>Katarina</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kalista" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kalista.png" /><span>Kalista</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kennen" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kennen.png" /><span>Kennen</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Caitlyn" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Caitlyn.png" /><span>Caitlyn</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kayn" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kayn.png" /><span>Kayn</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kayle" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kayle.png" /><span>Kayle</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kogmaw" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/KogMaw.png" /><span>Kogmaw</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Corki" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Corki.png" /><span>Corki</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Quinn" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Quinn.png" /><span>Quinn</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kled" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kled.png" /><span>Kled</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Qiyana" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Qiyana.png" /><span>Qiyana</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Kindred" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Kindred.png" /><span>Kindred</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Taric" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Taric.png" /><span>Taric</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Talon" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Talon.png" /><span>Talon</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Taliyah" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Taliyah.png" /><span>Taliyah</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Tahmkench" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/TahmKench.png" /><span>Tahmkench</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Trundle" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Trundle.png" /><span>Trundle</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Tristana" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Tristana.png" /><span>Tristana</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Tryndamere" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Tryndamere.png" /><span>Tryndamere</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Twistedfate" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/TwistedFate.png" /><span>Twistedfate</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Twitch" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Twitch.png" /><span>Twitch</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Teemo" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Teemo.png" /><span>Teemo</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Pyke" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Pyke.png" /><span>Pyke</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Pantheon" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Pantheon.png" /><span>Pantheon</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Fiddlesticks" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Fiddlesticks.png" /><span>Fiddlesticks</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Fiora" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Fiora.png" /><span>Fiora</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Fizz" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Fizz.png" /><span>Fizz</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Heimerdinger" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Heimerdinger.png" /><span>Heimerdinger</span></a>
                            </div>


                            <div class="champion">
                                <a class="css-mtyeel e1y3xkpj0" href="#"><img alt="Hecarim" class="bg-image"
                                        src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/Hecarim.png" /><span>Hecarim</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer" style="background-color: #212529; border: 3px solid #212529;">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-light">챔피언 변경하기</button>
                </div>
            </div>
        </div>
    </div>
    <style>
        .position-view {
            margin: 100px 0 0 0;
        }

        .bg-image {
            width: 80px;
            height: 80px;
        }

        .container .champions {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            max-width: 1500px;

        }

        .container .champions .champion {
            width: 80px;
            height: 84px;
            margin: 4px;
            border: 3px solid #fff;
            border-radius: 4rem;
            box-sizing: border-box;
            background-color: #555;
            overflow: hidden;
            transition:
                transform .1s,
                background-color .6s;
        }

        .container .champions .champion:hover {
            transform: scale(1.3);
            z-index: 1;
        }

        .container .champions .champion .image {
            width: 140%;
            height: 100%;
            transform: skew(14deg) translateX(-16px);
            background-position: center;
            background-size: 90px;
            background-repeat: no-repeat;
        }
    </style>

    <style>
        .v-info {
            max-width: 100%;
            height: 800px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 30px 0 0 0;
            padding: 0;
        }

        .champion-1 {
            box-sizing: border-box;
        }

        .champion-2 {
            box-sizing: border-box;
        }

        .mathchUp-info {
            box-sizing: border-box;
            background-color: #353535;
            margin: 0 30px 0 30px;
            border-radius: 10px;
            width: 1000px;
            height: 560px;
        }

        .progress {
            margin: 10px;

        }

        .match-up {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 30px 0 30px 0;
        }

        .match-up .progress {
            width: 500px;
            height: 40px;
            border-radius: 3rem;
        }

        .graph-container {
            height: 100px;
            justify-content: center;
        }

        .champion-s1 img {
            border: 5px solid #1177bb;
            border-radius: 4rem;
        }

        .champion-s2 img {
            border: 5px solid #bb1616bd;
            border-radius: 4rem;
        }

        .champion-name {
            text-align: center;
            color: #fff;
        }

        .odds {
            text-align: center;
            color: #fff;
        }

        .graph-info {
            text-align: center;
            color: #fff;
        }

        .graph-box {
            justify-content: center;
            box-sizing: border-box;
            padding: 0 100px 0 100px;
        }
    </style>
    <!------------------------------------------------------------------------------------------------------------------------------->
    <!------------------------------------------------------Counter Box END---------------------------------------------------------->
    <!------------------------------------------------------------------------------------------------------------------------------->




    <!------------------------------------------------------------------------------------------------------------------------------->
    <!------------------------------------------------------------FOOTER------------------------------------------------------------->
    <!------------------------------------------------------------------------------------------------------------------------------->
    <div class="container" style="max-width: 100%; padding: 30px; background-color: #212529; color: #fff;">
        <footer class="py-5">
            <div class="row">
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