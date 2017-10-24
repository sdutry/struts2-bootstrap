<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
                            <s:a action="index" cssClass="list-group-item active">Horizontal Form Layout</s:a>
                            <s:a action="vertical" cssClass="list-group-item">Vertical Form Layout</s:a>
                            <s:a action="validation" cssClass="list-group-item">Client Validation</s:a>
                            <s:a action="advanced" cssClass="list-group-item">Advanced Examples</s:a>
                            <s:a action="jquery" cssClass="list-group-item">Struts2 jQuery UI Form Elements</s:a>
                            <s:a action="custom" cssClass="list-group-item">With Custom Theme</s:a>
                            <s:a action="customlayout" cssClass="list-group-item">Multi Column Forms</s:a>
                        </div>
                    </li>
                 </ul>
            </div>
        </div>
        <div class="col-md-9">

            <h1>Struts2 Bootstrap Plugin Showcase</h1>

            <p>Struts2 Bootstrap Plugin Examples for the head tag and the form elements.</p>

            <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="index" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="A sample horizontal Form">
                <s:textfield
                        label="Name"
                        name="name"
                        cssClass="input-sm"
                        elementCssClass="col-sm-3"
                        tooltip="Enter your Name here"/>

                <s:password
                        label="Password"
                        name="password"
                        tooltip="Enter your Password here"/>

                <s:textfield
                        label="Textfield with Error"
                        name="error"/>

                <s:textarea
                        tooltip="Enter your Biography"
                        label="Biography"
                        name="bio"
                        cols="20"
                        rows="3"/>

                <s:select
                        tooltip="Choose Your Favourite Color"
                        label="Favorite Color"
                        elementCssClass="col-sm-4"
                        list="{'Red', 'Blue', 'Green'}"
                        name="favouriteColor"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>

                <s:checkboxlist
                        tooltip="Choose your Friends"
                        label="Friends"
                        list="{'Wes', 'Patrick', 'Jason', 'Jay', 'Toby', 'Rene'}"
                        name="friends"/>

                <s:checkboxlist
                        tooltip="Checkboxes with inline position"
                        labelposition="inline"
                        label="Friends Inline"
                        list="{'Wes', 'Patrick', 'Jason', 'Jay', 'Toby', 'Rene'}"
                        name="friendsInline"/>

                <s:radio
                        tooltip="Choose your Best Friend"
                        label="Best Friend"
                        list="{'Wes', 'Patrick', 'Jason', 'Jay', 'Toby', 'Rene'}"
                        name="bestFriend"
                        cssErrorClass="foo"/>

                <s:radio
                        tooltip="Radio Buttons with inline position"
                        label="Best Friend Inline"
                        labelposition="inline"
                        list="{'Wes', 'Patrick', 'Jason', 'Jay', 'Toby', 'Rene'}"
                        name="bestFriendInline"
                        cssErrorClass="foo"/>

                <s:checkbox
                        tooltip="Confirmed that your are Over 18"
                        label="Age 18+"
                        name="legalAge"/>

                <s:doubleselect
                        tooltip="Choose Your State"
                        label="State"
                        name="region" list="{'North', 'South'}"
                        value="'South'"
                        doubleValue="'Florida'"
                        doubleList="top == 'North' ? {'Oregon', 'Washington'} : {'Texas', 'Florida'}"
                        doubleName="state"
                        headerKey="-1"
                        headerValue="---------- Please Select ----------"
                        emptyOption="true"/>

                <s:file
                        tooltip="Upload Your Picture"
                        label="Picture"
                        name="picture"/>

                <s:optiontransferselect
                        tooltip="Select Your Favourite Cartoon Characters"
                        label="Favourite Cartoons Characters"
                        name="leftSideCartoonCharacters"
                        leftTitle="Left Title"
                        rightTitle="Right Title"
                        list="{'Popeye', 'He-Man', 'Spiderman'}"
                        multiple="true"
                        headerKey="headerKey"
                        headerValue="--- Please Select ---"
                        emptyOption="true"
                        doubleList="{'Superman', 'Mickey Mouse', 'Donald Duck'}"
                        doubleName="rightSideCartoonCharacters"
                        doubleHeaderKey="doubleHeaderKey"
                        doubleHeaderValue="--- Please Select ---"
                        doubleEmptyOption="true"
                        doubleMultiple="true"/>

                <s:inputtransferselect
                        tooltip="Add Your Favourite Cartoon Character"
                        label="Favourite Cartoons Characters"
                        name="inputLeftSideCartoonCharacters"
                        addLabel="Add element"
                        removeLabel="Remove element"
                        removeAllLabel="Remove all elements"
                        upLabel="Move up"
                        downLabel="Move down"
                        leftTitle="Add Character"
                        rightTitle="Existing Characters"
                        list="{'Popeye', 'He-Man', 'Spiderman'}"
                 />

                <s:textarea
                        label="Your Thougths"
                        name="thoughts"
                        cssClass="input-xxlarge"
                        tooltip="Enter your thoughts here"/>

                <div class="form-group">
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
