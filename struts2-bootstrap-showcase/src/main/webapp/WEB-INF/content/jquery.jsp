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
    <meta name="description" content="Struts2 jQuery Plugin Integration - A Showcase for the Struts2 Bootstrap Plugin" />
    <title>jQuery Plugin Integration - Struts2 Bootstrap Plugin Showcase - <s:text name="showcase.version"/></title>
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
                            <s:a action="jquery" cssClass="list-group-item active">Struts2 jQuery UI Form Elements</s:a>
                            <s:a action="custom" cssClass="list-group-item">With Custom Theme</s:a>
                            <s:a action="customlayout" cssClass="list-group-item">Multi Column Forms</s:a>
                        </div>
                    </li>
                 </ul>
            </div>
        </div>
        <div class="col-md-9">

            <h2>A Bootstrap Form with jQuery UI Datepicker and jQuery UI Autocompleter</h2>

            <s:form action="echo" theme="bootstrap" cssClass="form-horizontal" label="Form with jQuery UI Elements">
                <sj:datepicker
                        id="datepicker"
                        parentTheme="bootstrap"
                        label="Datepicker"
                        tooltip="Tooltip for Datepicker"
                        cssClass="form-control"
                        elementCssClass="col-sm-5"
                        showOn="focus"
                        inputAppendIcon="calendar"
                />
                <s:url var="languages_url" action="languages"/>
                <sj:autocompleter
                        id="autocompleter"
                        parentTheme="bootstrap"
                        label="Autocompleter"
                        tooltip="Tooltip for Autocompleter"
                        cssClass="form-control"
                        href="%{languages_url}"
	    	            loadMinimumCount="1"
                 />
            </s:form>

            <button id="code1btn" class="btn">Code Example</button>
            <div id="code1" class="collapse in">
                <pre>
                    &lt;s:form action=&quot;echo&quot; theme=&quot;bootstrap&quot; cssClass=&quot;form-horizontal&quot; label=&quot;Form with jQuery UI Elements&quot;&gt;
                        &lt;sj:datepicker
                                id=&quot;datepicker&quot;
                                parentTheme=&quot;bootstrap&quot;
                                label=&quot;Datepicker&quot;
                                tooltip=&quot;Tooltip for Datepicker&quot;
                                cssClass=&quot;form-control&quot;
                                elementCssClass=&quot;col-sm-5&quot;
                                showOn=&quot;focus&quot;
                                inputAppendIcon=&quot;calendar&quot;
                        /&gt;
                        &lt;s:url id=&quot;languages_url&quot; action=&quot;languages&quot;/&gt;
                        &lt;sj:autocompleter
                                id=&quot;autocompleter&quot;
                                parentTheme=&quot;bootstrap&quot;
                                label=&quot;Autocompleter&quot;
                                tooltip=&quot;Tooltip for Autocompleter&quot;
                                cssClass=&quot;form-control&quot;
                                href=&quot;%{languages_url}&quot;
                                loadMinimumCount=&quot;1&quot;
                         /&gt;
                    &lt;/s:form&gt;
                </pre>
            </div>
        </div>

    </div>

    <footer class="footer">
        <p class="pull-right"><a href="#">Back to top</a></p>

        <p>Created by <a href="http://twitter.com/jogep" target="_blank">@jogep</a>.</p>
    </footer>

</div>
<!-- /container -->
<script type="text/javascript">
    $(document).ready(function () {
        $(".collapse").collapse();
        $("#code1btn").click(function () {
            $('#code1').collapse('toggle')
        });
    });
</script>
</body>
</html>
