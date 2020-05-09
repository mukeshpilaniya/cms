<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Committee - Request Class</title>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="/css/index.css">
    <script src="/js/Dashboard.js"></script>

    <style>
        body {
            background: whitesmoke;
        }
        #purpose, #building, #times , #times-label, #cleaningCheck , #plugsAndPorts, #capacity, #date, h5{
            margin-bottom: 10px;
        }
        nav a{
            color: white;
        }

    </style>
</head>
<body>
<nav class="navbar fixed-top navbar-light" style="background-color: #50c7e5; ">
    <!-- Navbar content -->
    <a class="navbar-brand" href="#">IIIT-B Clasroom Manager</a>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="/destroy" style="margin-right: 10px"><span class="glyphicon glyphicon-log-in" ></span> Logout</a></li>
    </ul>
</nav>

<div class="container">
    <div class="login-container" style="width: 500px; margin: 30px auto">
        <div id="output"></div>
        <h4>Hey ${committee.committeeName}!</h4><br>

        <div class="form-box">
            <form  id="dashboard-form" action="/getAvailableClasses" method="">
                <div class="form-group">
                <select id="purpose" name="purpose" required>
                    <option name="select_username" value="">Select Purpose</option>
                    <option name="meetingWithinCommittee" value="meetingWithinCommittee">Meeting Within Committee </option>
                    <option value="meetingWithOtherCommittee" name="meetingWithOtherCommittee"> Meeting With Other Committee</option>

                </select>

<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <select id="building" name="building" required>--%>
<%--                        <option name="select_building" value="">Select Building</option>--%>
<%--                        <option name="aryabhatta" value="aryabhatta">Aryabhatta</option>--%>
<%--                        <option name="ramanujan" value="ramanujan">Ramanujan</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
                    <h5 id="capacity-label" align="left">Capacity</h5>

                <div class="form-group">
                    <input id="capacity" name="capacity" type="number" placeholder="Capacity" value="50"  >
                </div>
                <h5 id="times-label" align="left">Select Start and End Time ( 24 hour format )</h5>
                <div class="row" id="times">
                    <div class="form-group">

                        <div class="col-sm-6">
                            <input id="startTime" name="startTime" type="time" placeholder="Start Time" required >
                        </div>
                        <div class="col-sm-6">
                            <input id="endTime" name="endTime" type="time" required placeholder="End Time">
                        </div>
                    </div>
                </div>
                <h5 id="date-label" align="left">Select Date</h5>


                <div class="form-group">
                    <input id="datepicker" name="datepicker" type="date" class="DateFrom" required placeholder="Date">
                </div>

                <h5 id="plugsAndPorts-label" align="left" style="margin-top: 5px">Concerned about plugs and  projectors?</h5>
                <div class="form-group">
                    <div class="row" id="plugsAndPorts">
                        <div class="col-sm-12">
                            <input name="plugs" type="number" placeholder="Plugs" >
                        </div>
<%--                        <div class="col-sm-6">--%>
<%--                            <input name="ports" type="number" placeholder="Ports" >--%>
<%--                        </div>--%>
                        <%--                    <div class="col-sm-4">--%>
                        <%--                        <input name="projectors" type="number" placeholder="Projectors" >--%>
                        <%--                    </div>--%>
                    </div>
                </div>
                <br>
                <div id="projCheck" class="form-group">
                    <div class="form-check" align="left">
                        <input class="form-check-input" type="checkbox" id="projectorCheck" style="width: 15px; height: 15px; ">
                        <label class="form-check-label" for="projectorCheck" style="font-size: small">
                            Projector needed
                        </label>
                    </div>
                </div>

                <div id="cleaningCheck" class="form-group">
                    <div class="form-check" align="left">
                        <input class="form-check-input" type="checkbox" id="cleanCheck" style="width: 15px; height: 15px; ">
                        <label class="form-check-label" for="cleanCheck" style="font-size: small">
                            Cleaning needed
                        </label>
                    </div>
                </div>

                <button class="btn btn-info btn-block login" type="submit">Find Classes</button>
            </form>
        </div>
    </div>

</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.js"></script>
</body>
</html>