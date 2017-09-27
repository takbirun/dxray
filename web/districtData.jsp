<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import=" org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import=" org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import=" org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import=" org.apache.poi.hssf.usermodel.HSSFCell"%>

<%
    short a = 0;
    short b = 1;
    short c = 2;
    short d = 3;
    int i = 0;
    String path = request.getRealPath("/");
    String filename = path + "\\WEB-INF\\selectingSheet.xls";
    if (filename != null && !filename.equals("")) {
        try {
            FileInputStream fs = new FileInputStream(filename);
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            for (int k = 0; k < wb.getNumberOfSheets(); k++) {
                int j = i + 1;
%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>District Wise Total Number of X-Rays</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="common/styles.css" type="text/css" />
        <style>
            input{
                background-color: #e2f5f3;
            }
        </style>
    </head>
    <body>
        <jsp:include page="common/banner.jsp" />
        <table border="0" cellspan="3" width="400px">
            <tr style="font-size: larger; text-decoration: underline">
                <th colspan="4"> District Wise X-Ray Data</th>
            </tr>
            <tr style="background-color: #CCCCCC">
                <th>District</th>
                <th>Male</th>
                <th>Female</th>
                <th>Total</th>
            </tr>
            <%//=j%><%
                HSSFSheet sheet = wb.getSheetAt(k);
                int rows = sheet.getPhysicalNumberOfRows();
                for (int r = 1; r < rows; r++) {%>
            <tr style="background-color: honeydew">
                <%

                    HSSFRow row = sheet.getRow(r);
                    if (row != null) {
                        int cells = row.getPhysicalNumberOfCells();	%><%
                            HSSFCell cell1 = row.getCell(a);
                            if (cell1 != null) {
                                String value = null;
                                switch (cell1.getCellType()) {
                                    case HSSFCell.CELL_TYPE_FORMULA:
                                        value = "FORMULA ";
                                        break;
                                    case HSSFCell.CELL_TYPE_NUMERIC:
                                        value = "" + cell1.getNumericCellValue();
                                        break;
                                    case HSSFCell.CELL_TYPE_STRING:
                                        value = cell1.getStringCellValue();
                                        break;
                                }
                %>
                <td align="justify">&nbsp;&nbsp;&nbsp;<%=value%></td><%
                    }
                    HSSFCell cell2 = row.getCell(b);
                    if (cell2 != null) {
                        String value = null;
                        switch (cell2.getCellType()) {
                            case HSSFCell.CELL_TYPE_FORMULA:
                                value = "FORMULA ";
                                break;
                            case HSSFCell.CELL_TYPE_NUMERIC:
                                value = "" + cell2.getNumericCellValue();
                                break;
                            case HSSFCell.CELL_TYPE_STRING:
                                value = cell2.getStringCellValue();
                                break;
                        }%>
                <td align="right"><%=value%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <% }
                    HSSFCell cell3 = row.getCell(c);
                    if (cell3 != null) {
                        String value = null;
                        switch (cell3.getCellType()) {
                            case HSSFCell.CELL_TYPE_FORMULA:
                                value = "FORMULA ";
                                break;
                            case HSSFCell.CELL_TYPE_NUMERIC:
                                value = "" + cell3.getNumericCellValue();
                                break;
                            case HSSFCell.CELL_TYPE_STRING:
                                value = cell3.getStringCellValue();
                                break;
                        }%>
                <td align="right"><%=value%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <% }
                    HSSFCell cell4 = row.getCell(d);
                    if (cell4 != null) {
                        String value = null;
                        switch (cell4.getCellType()) {
                            case HSSFCell.CELL_TYPE_FORMULA:
                                value = "FORMULA ";
                                break;
                            case HSSFCell.CELL_TYPE_NUMERIC:
                                value = "" + cell4.getNumericCellValue();
                                break;
                            case HSSFCell.CELL_TYPE_STRING:
                                value = cell4.getStringCellValue();
                                break;
                        }
                %> 
                <td align="right"><%=value%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <% }
                    }%>
                <!--input type="submit" value="Edit"-->
            </tr> <!-- table rows -->
            <% }%>
            <%
                            i++;
                        }
                    } catch (Exception ex) {
                    }
                }
            %> 

        </table>

        <span style="color: red">
            <%// check update message here
                if (request.getSession().getAttribute("msg") != null) {
                    out.println(request.getSession().getAttribute("msg"));
                    request.getSession().setAttribute("msg", "");
                }
            %></span>
            <br><br>
        <div>
            <a href="districtDataForm.jsp"><span>Enter New Data</span></a>
        </div>
    </body>
</html>