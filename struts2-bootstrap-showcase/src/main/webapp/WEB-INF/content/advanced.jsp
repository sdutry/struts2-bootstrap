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
    <meta name="description" content="Advanced Examples - A Showcase for the Struts2 Bootstrap Plugin" />
    <title>Advanced Examples - Struts2 Bootstrap Plugin Showcase - <s:text name="showcase.version"/></title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <sj:head jqueryui="false"/>
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
                            <s:a action="advanced" cssClass="list-group-item active">Advanced Examples</s:a>
                            <s:a action="jquery" cssClass="list-group-item">Struts2 jQuery UI Form Elements</s:a>
                            <s:a action="custom" cssClass="list-group-item">With Custom Theme</s:a>
                            <s:a action="customlayout" cssClass="list-group-item">Multi Column Forms</s:a>
                        </div>
                    </li>
                 </ul>
            </div>
        </div>
        <div class="col-md-9">

            <h1>Advanced Examples</h1>

            <h2>Inline Form Layout</h2>
            <s:form theme="bootstrap" cssClass="well form-inline">
                <s:textfield
                        placeholder="Login"
                        name="login"
                        tooltip="Enter your Name here"/>

                <s:password
                        placeholder="Password"
                        name="password"/>

                <s:submit cssClass="btn btn-primary"/>
            </s:form>

            <button  id="code1btn" class="btn">Code Example for Inline Form</button>
            <div id="code1" class="collapse">
                <pre>
&lt;s:form theme=&quot;simple&quot; cssClass=&quot;well form-search&quot;&gt;
    &lt;s:textfield
            placeholder=&quot;Login&quot;
            name=&quot;login&quot;
            tooltip=&quot;Enter your Name here&quot;/&gt;

    &lt;s:password
            placeholder=&quot;Password&quot;
            name=&quot;password&quot;/&gt;

    &lt;s:submit cssClass=&quot;btn btn-primary&quot;/&gt;
&lt;/s:form&gt;
                </pre>
            </div>

            <h2>Elements with Help Text, prepended text and appended text or prepended icon and appended icon</h2>

            <s:form theme="bootstrap" cssClass="well form-vertical">
                <s:textfield
                        label="Name"
                        name="name"
                        helpText="This Textfield has an Help Text."
                        tooltip="Enter your Name here"/>

                <s:textfield
                        label="Textfield with prepended text"
                        inputPrepend="@"
                        name="prepend"/>

                <s:textfield
                        label="Textfield with appended text"
                        inputAppend="$"
                        name="append"/>

                <s:textfield
                        label="Textfield with prepended icon"
                        inputPrependIcon="envelope"
                        name="prependIcon"/>

                <s:textfield
                        label="Textfield with appended icon"
                        inputAppendIcon="user"
                        name="appendIcon"/>

                <s:submit cssClass="btn btn-primary"/>
                <s:submit cssClass="btn btn-danger"/>
            </s:form>

            <button  id="code2btn" class="btn">Code Example for Help Text, prepended text and appended text</button>
            <div id="code2" class="collapse">
                <pre>
&lt;s:form theme=&quot;bootstrap&quot; cssClass=&quot;well form-vertical&quot;&gt;
    &lt;s:textfield
            label=&quot;Name&quot;
            name=&quot;name&quot;
            helpText=&quot;This Textfield has an Help Text.&quot;
            tooltip=&quot;Enter your Name here&quot;/&gt;

    &lt;s:textfield
            label=&quot;Textfield with prepended text&quot;
            inputPrepend=&quot;@&quot;
            name=&quot;prepend&quot;/&gt;

    &lt;s:textfield
            label=&quot;Textfield with appended text&quot;
            inputAppend=&quot;$&quot;
            name=&quot;append&quot;/&gt;

    &lt;s:submit cssClass=&quot;btn btn-primary&quot;/&gt;
    &lt;s:submit cssClass=&quot;btn btn-danger&quot;/&gt;
&lt;/s:form&gt;
                </pre>
            </div>

            <h2>A Bootstrap Form with jQuery AJAX Form</h2>

            <s:form id="bootstrapAjaxForm" action="echo" theme="bootstrap" cssClass="well form-vertical" label="AJAX Echo Form">
                <s:textfield
                        label="Enter your Name"
                        name="echo"
                        tooltip="Enter your Name here"/>

                <sj:submit targets="result" effect="highlight" cssClass="btn btn-success"/>
            </s:form>
            <div id="result"></div>

            <button  id="code3btn" class="btn">Code Example for AJAX Form</button>
            <div id="code3" class="collapse">
                <pre>
&lt;s:form action=&quot;echo&quot; theme=&quot;bootstrap&quot; cssClass=&quot;well form-vertical&quot; label=&quot;AJAX Echo Form&quot;&gt;
    &lt;s:textfield
            label=&quot;Enter your Name&quot;
            name=&quot;echo&quot;
            tooltip=&quot;Enter your Name here&quot;/&gt;

    &lt;sj:submit targets=&quot;result&quot; effect=&quot;highlight&quot; cssClass=&quot;btn-success&quot;/&gt;
&lt;/s:form&gt;
&lt;div id=&quot;result&quot;&gt;&lt;/div&gt;
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
        $("#code2btn").click(function () {
            $('#code2').collapse('toggle')
        });
        $("#code3btn").click(function () {
            $('#code3').collapse('toggle')
        });
        $("#code4btn").click(function () {
            $('#code4').collapse('toggle')
        });
    });
</script>
</body>
</html>
