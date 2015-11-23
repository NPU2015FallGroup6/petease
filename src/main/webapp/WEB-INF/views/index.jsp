<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ include file="./include.jsp"%>
<c:set var="context" scope="request" value="<%= request.getContextPath()%>" />
<html>
    <head>
        <title>Pet Ease</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${context}/resources/css/bootstrap.css">
    </head>
    <body>
        <div class="container" id="header">
            <div class="row">
                <div class="col-sm-3" style="position: relative;z-index: 2">
                    <img id="main_logo" src="${context}/resources/img/main_logo.png" alt="pet ease" style="width: 250px;padding: 20px;position: absolute; top:50%"/>
                </div>
                <div class="col-sm-6" style="margin-left: auto;margin-right: auto;text-align: center;z-index: 1">
                    <img id="header_img" src="${context}/resources/img/pet_header.png" alt="Pet Header" style="height: 150px;">
                </div>
                <div class="col-sm-3" style="text-align: right;padding: 10px;">
                    <span id="signUp" style="color: #0000ff;" onclick="window.location.href='./signup'">Sign Up</span>
                    <span> | </span>
                    <span id="signOn" style="color: #0000ff;">Sign On</span>
                </div>
                <div class="col-sm-3" style="text-align: right;padding: 10px;">
                    <span id="welcomeInfo" style="color: #0000ff;">Welcome, Steven</span>
                    <span> | </span>
                    <span id="signOff" style="color: #0000ff;">Sign Off</span>
                </div>
            </div>
        </div>
        <div class="container" id="content">
            <div class="row" >
                <div class="col-sm-7" style="height: 100%; padding: 20px">
                    <div>
                        <span style="font-size: 30px;color: brown">Pets Community</span>
                    </div>
                    <div>
                        <ul>
                            <li>article1</li>
                            <li>article2</li>
                            <li>article3</li>
                            <li>article4</li>
                            <li>article5</li>
                            <li>article6</li>
                            <li>article7</li>
                            <li>article8</li>
                            <li>article9</li>
                            <li>article10</li>
                            <li>article11</li>
                            <li>article12</li>
                            <li>article13</li>
                            <li>article14</li>
                            <li>article15</li>
                            <li>article16</li>
                            <li>article17</li>
                            <li>article18</li>
                            <li>article19</li>
                            <li>article20</li>
                        </ul>
                        <div>
                            <a>Previous</a>
                            <a>1</a>
                            <a>2</a>
                            <a style="color: red">3</a>
                            <a>4</a>
                            <a>5</a>
                            <a>Next</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div style="padding: 20px; margin-top: 30px;border: solid 2px; border-color: #dddddd">
                        <div>
                            <span style="font-size: 30px;color: brown">Shelter News</span>
                            <img src="${context}/resources/img/shelter.png" alt="shelter news" style="height: 80px"/>
                        </div>
                        <div>
                            <ul style="height: 100px; overflow-x:scroll;">
                                <li>news1</li>
                                <li>news2</li>
                                <li>news3</li>
                                <li>news4</li>
                                <li>news5</li>
                                <li>news6</li>
                                <li>news7</li>
                                <li>news8</li>
                                <li>news9</li>
                                <li>news10</li>
                                <li>news11</li>
                                <li>news12</li>
                                <li>news13</li>
                            </ul>
                        </div>
                    </div>
                    <div style="padding: 20px; margin-top: 30px;border: solid 2px; border-color: #dddddd">
                        <div>
                            <span style="font-size: 30px;color: brown">My Pets Care Q&A</span>
                            <img src="${context}/resources/img/pet_care.png" alt="pet care" style="height: 70px"/><br/>
                            <a href="./qa">Ask question</a>
                        </div>
                        <div>
                            <ul style="height: 50px; overflow-x:scroll;">
                                <li>question1</li>
                                <li>question2</li>
                                <li>question3</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer" class="container">
            <div style="padding: 20px">
                <div style='background-image: url("${context}/resources/img/pet_footer.gif");height: 30px;'></div>
            </div>
            <div style="padding: 20px;">
                <div class="col-sm-offset-4 col-sm-4" style="text-align: center;color: #ff3333">Copyright @ CS595E Group6</div>
                <div class="col-sm-4" style="text-align: right">
                    <img src="${context}/resources/img/contact.png" alt="Contact me" style="width: 50px"/>
                    Contact me
                </div>
            </div>
        </div>
    </body>
</html>
