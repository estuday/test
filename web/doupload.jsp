<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.FileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/21 0021
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean multipartContent = ServletFileUpload.isMultipartContent(request);
    System.out.println(multipartContent);
    if(multipartContent){
        FileItemFactory diskFileItemFactory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(diskFileItemFactory);
        //获取表单中传入的表单元素
        List<FileItem> fileItems = upload.parseRequest(request);
        System.out.println(fileItems.size());
        for(FileItem fileItem:fileItems){

            System.out.println("\t"+
                "name:"+fileItem.getName()+"\tsize:"+  fileItem.getSize()
            );
            if(!fileItem.isFormField()){

                String filname=fileItem.getName();
                File file= new File("E:/upload/"+filname);
                fileItem.write(file);

            }



        }
    }

%>