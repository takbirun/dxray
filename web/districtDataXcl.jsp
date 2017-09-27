<%@ page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import=" org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import=" org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%

    try {
        if (request.getParameter("dhalaiMale") != null && request.getParameter("dhalaiFemale") != null
                && request.getParameter("sipahijalaMale") != null && request.getParameter("sipahijalaFemale") != null
                && request.getParameter("khowaiMale") != null && request.getParameter("khowaiFemale") != null
                && request.getParameter("gomatiMale") != null && request.getParameter("gomatiFemale") != null
                && request.getParameter("unakotiMale") != null && request.getParameter("unakotiFemale") != null
                && request.getParameter("northTripuraMale") != null && request.getParameter("northTripuraFemale") != null
                && request.getParameter("southTripuraMale") != null && request.getParameter("southTripuraFemale") != null
                && request.getParameter("westTripuraMale") != null && request.getParameter("westTripuraFemale") != null) { //check all mandatory parameters
            String dhalaiMale = request.getParameter("dhalaiMale");
            String dhalaiFemale = request.getParameter("dhalaiFemale");
            String sipahijalaMale = request.getParameter("sipahijalaMale");
            String sipahijalaFemale = request.getParameter("sipahijalaFemale");
            String khowaiMale = request.getParameter("khowaiMale");
            String khowaiFemale = request.getParameter("khowaiFemale");
            String gomatiMale = request.getParameter("gomatiMale");
            String gomatiFemale = request.getParameter("gomatiFemale");
            String unakotiMale = request.getParameter("unakotiMale");
            String unakotiFemale = request.getParameter("unakotiFemale");
            String northTripuraMale = request.getParameter("northTripuraMale");
            String northTripuraFemale = request.getParameter("northTripuraFemale");
            String southTripuraMale = request.getParameter("southTripuraMale");
            String southTripuraFemale = request.getParameter("southTripuraFemale");
            String westTripuraMale = request.getParameter("westTripuraMale");
            String westTripuraFemale = request.getParameter("westTripuraFemale");

            Date d = new Date(); //create date object
            String dateVal = d.getDate() + "-" + (d.getMonth() + 1) + "-" + (d.getYear() + 1900); //get the date value
            HSSFWorkbook hwb = new HSSFWorkbook();
            HSSFSheet sheet1 = hwb.createSheet("Sheet1");
            out.print("hello");
            HSSFRow rowhead = sheet1.createRow((short) 0);
            rowhead.createCell((short) 0).setCellValue("District");
            rowhead.createCell((short) 1).setCellValue("Male");
            rowhead.createCell((short) 2).setCellValue("Female");
            rowhead.createCell((short) 3).setCellValue("Total");
            // rowhead.createCell((short) 4).setCellValue("Date");

            HSSFRow row1 = sheet1.createRow((short) 1);
            row1.createCell((short) 0).setCellValue("Dhalai");
            row1.createCell((short) 1).setCellValue(dhalaiMale);
            row1.createCell((short) 2).setCellValue(dhalaiFemale);
            int total = Integer.parseInt(dhalaiMale) + Integer.parseInt(dhalaiFemale);
            row1.createCell((short) 3).setCellValue("" + total);

            HSSFRow row2 = sheet1.createRow((short) 2);
            row2.createCell((short) 0).setCellValue("Sipahijala");
            row2.createCell((short) 1).setCellValue(sipahijalaMale);
            row2.createCell((short) 2).setCellValue(sipahijalaFemale);
            total = Integer.parseInt(sipahijalaMale) + Integer.parseInt(sipahijalaFemale);
            row2.createCell((short) 3).setCellValue("" + total);

            HSSFRow row3 = sheet1.createRow((short) 3);
            row3.createCell((short) 0).setCellValue("Khowai");
            row3.createCell((short) 1).setCellValue(khowaiMale);
            row3.createCell((short) 2).setCellValue(khowaiFemale);
            total = Integer.parseInt(khowaiMale) + Integer.parseInt(khowaiFemale);
            row3.createCell((short) 3).setCellValue("" + total);

            HSSFRow row4 = sheet1.createRow((short) 4);
            row4.createCell((short) 0).setCellValue("Gomati");
            row4.createCell((short) 1).setCellValue(gomatiMale);
            row4.createCell((short) 2).setCellValue(gomatiFemale);
            total = Integer.parseInt(gomatiMale) + Integer.parseInt(gomatiFemale);
            row4.createCell((short) 3).setCellValue("" + total);

            HSSFRow row5 = sheet1.createRow((short) 5);
            row5.createCell((short) 0).setCellValue("Unakoti");
            row5.createCell((short) 1).setCellValue(unakotiMale);
            row5.createCell((short) 2).setCellValue(unakotiFemale);
            total = Integer.parseInt(unakotiMale) + Integer.parseInt(unakotiFemale);
            row5.createCell((short) 3).setCellValue("" + total);

            HSSFRow row6 = sheet1.createRow((short) 6);
            row6.createCell((short) 0).setCellValue("North Tripura");
            row6.createCell((short) 1).setCellValue(northTripuraMale);
            row6.createCell((short) 2).setCellValue(northTripuraFemale);
            total = Integer.parseInt(northTripuraMale) + Integer.parseInt(northTripuraFemale);
            row6.createCell((short) 3).setCellValue("" + total);

            HSSFRow row7 = sheet1.createRow((short) 7);
            row7.createCell((short) 0).setCellValue("South Tripura");
            row7.createCell((short) 1).setCellValue(southTripuraMale);
            row7.createCell((short) 2).setCellValue(southTripuraFemale);
            total = Integer.parseInt(southTripuraMale) + Integer.parseInt(southTripuraFemale);
            row7.createCell((short) 3).setCellValue("" + total);

            HSSFRow row8 = sheet1.createRow((short) 8);
            row8.createCell((short) 0).setCellValue("West Tripura");
            row8.createCell((short) 1).setCellValue(westTripuraMale);
            row8.createCell((short) 2).setCellValue(westTripuraFemale);
            total = Integer.parseInt(westTripuraMale) + Integer.parseInt(westTripuraFemale);
            row8.createCell((short) 3).setCellValue("" + total);

            //sheet1.setSelected(true);
            String path = request.getRealPath("/"); //path or location of file
            FileOutputStream fileOut = new FileOutputStream(path + "\\WEB-INF\\selectingSheet.xls");
            hwb.write(fileOut);
            fileOut.close();
            request.getSession().setAttribute("msg", "New Data saved !!");
        }

    } catch (Exception ex) {
        System.out.println(ex);

    }%>
<%response.sendRedirect("districtData.jsp");%>