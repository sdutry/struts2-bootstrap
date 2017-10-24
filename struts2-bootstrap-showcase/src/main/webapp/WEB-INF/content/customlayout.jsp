<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="struts2, twitter, bootstrap, plugin, showcase" />
    <meta name="description" content="A Showcase for the Struts2 Bootstrap Plugin" />
    <title>Struts2 Bootstrap Plugin Showcase - <s:text name="showcase.version"/></title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <sj:head jqueryui="true"/>
    <sb:head includeScripts="true" includeScriptsValidation="false"/>
    <style type="text/css">
        body {
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-light bg-light navbar-expand-lg fixed-top">
    <a class="navbar-brand" href="#">Struts2 Bootstrap Plugin Showcase - <s:text name="showcase.version"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse" id="navbarNavAltMarkup">
        <ul class="navbar-nav">
            <li class="nav-item active"><s:a action="index" cssClass="nav-link">Home</s:a></li>
            <li class="nav-item"><s:a action="about" cssClass="nav-link" >About</s:a></li>
            <li class="nav-item"><a href="https://github.com/struts-community-plugins/struts2-bootstrap/" class="nav-link">Project</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="card bg-light">
                <ul class="list-group">
                    <li class="list-group-item">
                        Form Layouts
                        <div class="list-group">
                            <s:a action="index" cssClass="list-group-item">Horizontal Form Layout</s:a>
                            <s:a action="vertical" cssClass="list-group-item">Vertical Form Layout</s:a>
                            <s:a action="validation" cssClass="list-group-item">Client Validation</s:a>
                            <s:a action="advanced" cssClass="list-group-item">Advanced Examples</s:a>
                            <s:a action="jquery" cssClass="list-group-item">Struts2 jQuery UI Form Elements</s:a>
                            <s:a action="custom" cssClass="list-group-item">With Custom Theme</s:a>
                            <s:a action="customlayout" cssClass="list-group-item active">Multi Column Forms</s:a>
                        </div>
                    </li>
                 </ul>
            </div>
        </div>
        <div class="col-md-9">
            <h1>Sample custom multi-column form layouts</h1>
            <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>
            <s:form action="customlayout" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal well"
                    label="Muilti Column Custom Horizontal Layout">
                <div class="row">
                    <div class="col-md-6">
                        <s:textfield
                                label="First Name"
                                name="name"
                                elementCssClass="col-md-8"
                                labelCssClass="col-md-4"
                                tooltip="Enter your First Name here"/>
                    </div>
                    <div class="col-md-6">
                        <s:textfield
                                label="Last Name"
                                name="name"
                                elementCssClass="col-md-8"
                                labelCssClass="col-md-4"
                                tooltip="Enter your Last Name here"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <s:select
                                label="Gender"
                                name="genger"
                                list="{'male', 'female'}"
                                elementCssClass="col-md-8"
                                labelCssClass="col-md-4"
                        />
                    </div>
                    <div class="col-md-6">
                        <sj:datepicker
                                parentTheme="bootstrap"
                                label="Date Of Birth"
                                cssClass="form-control"
                                elementCssClass="col-md-8"
                                labelCssClass="col-md-4"
                                placeholder="dd/mm/yyyy"
                                showOn="focus"
                                inputAppendIcon="calendar"
                        />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <s:textarea
                                label="Your Thougths"
                                name="thoughts"
                                cssClass="input-xxlarge"
                                labelCssClass="col-md-2"
                                elementCssClass="col-md-10"
                                placeholder="Enter your thoughts here"
                        />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-offset-3 col-md-9">
                        <s:submit cssClass="btn btn-primary"/>
                    </div>
                </div>
            </s:form>
            <br>
            <s:form action="customlayout" enctype="multipart/form-data" theme="bootstrap" cssClass="form-vertical well"
                    label="Muilti Column Custom Vertical Layout">
                <div class="row">
                    <div class="col-md-6">
                        <s:textfield
                                label="First Name"
                                name="name"
                                cssClass="input-sm"
                                elementCssClass=""
                                labelCssClass=""
                                tooltip="Enter your First Name here"/>
                    </div>
                    <div class="col-md-6">
                        <s:textfield
                                label="Last Name"
                                name="name"
                                cssClass="input-sm"
                                elementCssClass=""
                                labelCssClass=""
                                tooltip="Enter your Last Name here"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <s:select
                                label="Gender"
                                name="genger"
                                list="{'male', 'female'}"
                                cssClass="input-sm"
                                elementCssClass=""
                                labelCssClass=""
                        />
                    </div>
                    <div class="col-md-6">
                        <sj:datepicker
                                id="datepicker"
                                parentTheme="bootstrap"
                                label="Date Of Birth"
                                cssClass="form-control input-sm"
                                elementCssClass=""
                                showOn="focus"
                                inputAppendIcon="calendar"
                        />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <s:textarea
                                label="Your Thougths"
                                name="thoughts"
                                cssClass="input-xxlarge"
                                tooltip="Enter your thoughts here"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-offset-3 col-md-9">
                        <s:submit cssClass="btn btn-primary"/>
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>

    <p>Created by <a href="http://twitter.com/jogep" target="_blank">@jogep</a>.</p>
</footer>

</body>
</html>
