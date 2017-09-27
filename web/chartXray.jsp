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
    ArrayList dist = new ArrayList();
    ArrayList total = new ArrayList();
    ArrayList male = new ArrayList();
    ArrayList female = new ArrayList();
    String path = request.getRealPath("/");
    String filename = path + "\\WEB-INF\\selectingSheet.xls";
    if (filename != null && !filename.equals("")) {
        try {
            FileInputStream fs = new FileInputStream(filename);
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            for (int k = 0; k < wb.getNumberOfSheets(); k++) {
                int j = i + 1;

                HSSFSheet sheet = wb.getSheetAt(k);
                int rows = sheet.getPhysicalNumberOfRows();
                for (int r = 1; r < rows; r++) {
                    HSSFRow row = sheet.getRow(r);
                    if (row != null) {
                        int cells = row.getPhysicalNumberOfCells();
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
                            dist.add(value); //add value to district object

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
                            }
                            male.add(value);
                        }
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
                            }
                            female.add(value);%>
<!-- <input type="text" name="marks" value="<%=value%>"> -->
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
                            total.add(value);
                        }
                    }
                }
                i++;
            }
        } catch (Exception ex) {
        }
    }
%> 
<!DOCTYPE HTML>
<html>
    <head>  
        <link rel="stylesheet" href="common/styles.css" type="text/css" />
        <script type="text/javascript">
            window.onload = function () {
            var chart = new CanvasJS.Chart("chartContainer",
            {
            title: {
            text: "District Wise Total Number of X-Rays"
            },
                    animationEnabled: true,
                    legend: {
                    verticalAlign: "center",
                            horizontalAlign: "left",
                            fontSize: 20,
                            fontFamily: "Helvetica"
                    },
                    theme: "theme3",
                    data: [
                    {
                    type: "pie",
                            indexLabelFontFamily: "Garamond",
                            indexLabelFontSize: 16,
                            indexLabel: "{label} {y}%",
                            startAngle: - 20,
                            showInLegend: true,
                            toolTipContent: "{legendText} {y}%",
                            dataPoints: [
            <%if (total.size() != 0) {%>
                            {y: <%=total.get(0)%>, legendText: "<%=dist.get(0)%>", label: "<%=dist.get(0)%>"},
                            {y: <%=total.get(1)%>, legendText: "<%=dist.get(1)%>", label: "<%=dist.get(1)%>"},
                            {y: <%=total.get(2)%>, legendText: "<%=dist.get(2)%>", label: "<%=dist.get(2)%>"},
                            {y: <%=total.get(3)%>, legendText: "<%=dist.get(3)%>", label: "<%=dist.get(3)%>"},
                            {y: <%=total.get(4)%>, legendText: "<%=dist.get(4)%>", label: "<%=dist.get(4)%>"},
                            {y: <%=total.get(5)%>, legendText: "<%=dist.get(5)%>", label: "<%=dist.get(5)%>"},
                            {y: <%=total.get(6)%>, legendText: "<%=dist.get(6)%>", label: "<%=dist.get(6)%>"},
                            {y: <%=total.get(7)%>, legendText: "<%=dist.get(7)%>", label: "<%=dist.get(7)%>"}
            <%}%>
                            ]
                    }
                    ]
            });
            chart.render();
            }
        </script>
        <script type="text/javascript" src="common/canvasjs.min.js"></script> 
    </head>
    <body>
        <div><jsp:include page="common/banner.jsp" /></div><br>
        <table border="0" align="justify" width="100%">
            <tr>
                <td>
                    <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                    <%if (total.size() == 0) {%>
                    Please enter data first !

                    <%}%>
                </td>
            </tr>
        </table>
    </body>
</html>
