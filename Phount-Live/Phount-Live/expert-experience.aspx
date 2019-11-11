<%@ Page Language="C#" AutoEventWireup="true" CodeFile="expert-experience.aspx.cs" Inherits="expert_experience" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="StyleSheet.css">

    <!--    Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Rubik:300|Sanchez&display=swap" rel="stylesheet">
    <!--    Custom JavaScript-->

    <title>Expert Experience</title>
</head>

<body>

<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #00518f">
    <div class="container-fluid">
        <a class="navbar-brand Sanchez" href="#">Phount</a>
        <!--        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">-->
        <!--            <span class="navbar-toggler-icon"></span>-->
        <!--        </button>-->
        <!--        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">-->
        <!--            <ul class="navbar-nav">-->
        <!--                &lt;!&ndash;                <li class="nav-item">&ndash;&gt;-->
        <!--                &lt;!&ndash;                    <a class="nav-link Rubik text-white ml-2" href="#">Register as an Expert</a>&ndash;&gt;-->
        <!--                &lt;!&ndash;                </li>&ndash;&gt;-->
        <!--            </ul>-->
        <!--            <button id="nav-login-button" class="btn px-4 ml-auto">Login</button>-->
        <!--            <button class="btn btn-light ml-3">My Profile</button>-->
        <!--        </div>-->
    </div>
</nav>

<section id="expert-skills-section" class="my-5">
    <div class="container col-md-8">
        <div class="row justify-content-center mx-3">
            <img src="graphics/Phount-3-red-fill-35px.svg" class="mr-3" height="35px" width="35px" alt="">
            <h4 class="mb-5">What is your experience level?</h4>
        </div>
        <div class="row justify-content-center">
            <div class="form-group expert-experience-dropdown">
                <label for="skillCategory">Years of experience</label>
                <select class="form-control" id="skillCategory">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="form-group col-10 col-md-8 col-lg-6">
                <label for="expertExperienceTextArea">Describe your experience</label>
                <textarea class="form-control" id="expertExperienceTextArea" rows="3"></textarea>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="form-group col-10 col-md-8 col-lg-6">
                <label for="expertWorkExperienceTextArea">Describe any relevant employment history</label>
                <textarea class="form-control" id="expertWorkExperienceTextArea" rows="3"></textarea>
            </div>
        </div>

        <div class="row justify-content-center ">
            <button type="button" class="btn submit-add-experience-button">Submit and Add Experience</button>
        </div>

    </div>
</section>



<!-- Footer -->
<footer class="page-footer font-small blue pt-4">

    <!-- Footer Links -->
    <div class="container-fluid text-center text-md-left">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-6 mt-md-0 mt-3">

                <!-- Content -->
                <h5 class="text-uppercase">Footer Content</h5>
                <p>Here you can use rows and columns to organize your footer content.</p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none pb-3">

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Links</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Links</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </div>
    <!-- Footer Links -->

</footer>
<!-- Footer -->




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="scripts.js"></script>
</body>
</html>
