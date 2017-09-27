<%-- 
    Document   : district
    Created on : Sep 26, 2017, 2:54:10 PM
    Author     : CSC-MAIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>District Wise Total Number of X-Rays</title>
        <link rel="stylesheet" href="common/styles.css" type="text/css" />
    </head>
    <body>
        <div><jsp:include page="common/banner.jsp" /></div><br>
        <div style="font-size: larger; text-decoration: underline">District Wise X-Ray Data Entry Form </div>
        <br>
        <form action="districtDataXcl.jsp" method="post" name="distform">
            <table border="0" cellspan="3">
                <thead>
                    <tr style="background-color: #CCCCCC">
                        <th>Sl.No.</th>
                        <th>District</th>
                        <th>Male</th>
                        <th>Female</th>

                    </tr>
                </thead>
                <tbody>
                    <tr style="background-color: honeydew">
                        <td>1</td>
                        <td>Dhalai</td>
                        <td><input type="number" name="dhalaiMale" id="dhalaiMale" /></td>
                        <td><input type="number" name="dhalaiFemale" id="dhalaiFemale" /></td>
                    </tr>
                    <tr style="background-color: honeydew">
                        <td>2</td>
                        <td>Sipahijala</td>
                        <td><input type="number" name="sipahijalaMale" id="sipahijalaMale" /></td>
                        <td><input type="number" name="sipahijalaFemale" id="sipahijalaFemale" /></td>
                    </tr>
                    <tr style="background-color: honeydew">
                        <td>3</td>
                        <td>Khowai</td>
                        <td><input type="number" name="khowaiMale" id="khowaiMale" /></td>
                        <td><input type="number" name="khowaiFemale" id="khowaiFemale" /></td>
                    </tr>
                    <tr style="background-color: honeydew">
                        <td>4</td>
                        <td>Gomati</td>
                        <td><input type="number" name="gomatiMale" id="gomatiMale" /></td>
                        <td><input type="number" name="gomatiFemale" id="gomatiFemale" /></td>
                    </tr>
                    <tr style="background-color: honeydew">
                        <td>5</td>
                        <td>Unakoti</td>
                        <td><input type="number" name="unakotiMale" id="unakotiMale" /></td>
                        <td><input type="number" name="unakotiFemale" id="unakotiFemale" /></td>
                    </tr>
                    <tr style="background-color: honeydew">
                        <td>6</td>
                        <td>North Tripura</td>
                        <td><input type="number" name="northTripuraMale" id="northTripuraMale" /></td>
                        <td><input type="number" name="northTripuraFemale" id="northTripuraFemale" /></td>
                    </tr>
                    <tr style="background-color: honeydew">
                        <td>7</td>
                        <td>South Tripura</td>
                        <td><input type="number" name="southTripuraMale" id="southTripuraMale" /></td>
                        <td><input type="number" name="southTripuraFemale" id="southTripuraFemale" /></td>
                    </tr>

                    <tr style="background-color: honeydew">
                        <td>8</td>
                        <td>West Tripura</td>
                        <td><input type="number" name="westTripuraMale" id="westTripuraMale" /></td>
                        <td><input type="number" name="westTripuraFemale" id="westTripuraFemale" /></td>
                    </tr>
                    <tr style="background-color: honeydew">
                        <td colspan="4"><input type="submit" value="SUBMIT" id="button" /></td>

                    </tr>

                </tbody>
            </table>
        </form>
        <hr>
        <div style="color:red">
            *** Please take back-up for previous data before entering new data.<br>
            *** Note that previous data will be over write with new data.
        </div>
    </body>
</html>
