<%@ page language="java" import="java.util.*,java.util.ArrayList" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  

  <%!
  	public class Student{
  		String id;
  		String name;
  		String sex;
  		String Class;
  		double grade;
  		
  		public Student(){}
  		//无参构造方法
  		
  		//set方法
  		public void setid(String id){
  			this.id =id;
  		}
  		public void setname(String name){
  			this.name = name;
  		}
  		public void setsex(String sex){
  			this.sex = sex;
  		}
  		public void setClass(String Class){
  			this.Class = Class;
  		}
  		public void setgrade(double grade){
  			this.grade =grade;
  		}
  		
  		//get方法
  		public String getid(){
  			return id;
  		}
  		
  		public String getname(){
  			return name;
  		}
  		
  		public String getsex(){
  			return sex;
  		}
  		
  		//getClass()方法为java内置方法，需改名！！！！
  		public String getClass1(){
  			return Class;
  		}
  		
  		public double getgrade(){
  			return grade;
  		}
  	
  	}
   %>
   <%
   		Student st1 = new Student();
   		Student st2 = new Student();
   		Student st3 = new Student();
   		
   		st1.setid("001");
   		st1.setname("李白");
   		st1.setsex("男");
   		st1.setClass("01");
   		st1.setgrade(723.0);
   		
   		st2.setid("002");
   		st2.setname("孟浩然");
   		st2.setsex("男");
   		st2.setClass("02");
   		st2.setgrade(689.0);
   		
   		st3.setid("003");
   		st3.setname("杨玉环");
   		st3.setsex("女");
   		st3.setClass("03");
   		st3.setgrade(600.0);
   		
   		//记得导入相应包！！！
   		ArrayList<Student> AL=new ArrayList<Student>();
        AL.add(st1);
        AL.add(st2);
        AL.add(st3);
        
        /* 算法分析：遍历列表生成相应HTML语句
        	Arrylist遍历的三种方法：
        	1.for循环
        	for(int i = 0; i < .size(); i ++){
        	 print(........);
        	}
        */
        //2. Iterator迭代器遍历 get it！！！
        java.util.Iterator<Student> AL1 = AL.iterator();
        //3. 底层用迭代器，上层foreach
        //for(String a : list){ print(....)}
   
    %>
  <body>
    <table width="700px" height="350">
    <tr>
    	<td>学号</td>
    	<td>姓名</td>
    	<td>性别</td>
    	<td>班级</td>
    	<td>成绩</td>
    </tr>
    
    <%
    	while(AL1.hasNext()){
    		Student stx = (Student)AL1.next(); 
    		out.println("<tr>");
    		out.println("<td>");
    		out.println(stx.id);
    		out.println("</td>");
    		out.println("<td>");
    		out.println(stx.name);
    		out.println("</td>");
    		out.println("<td>");
    		out.println(stx.sex);
    		out.println("</td>");
    		out.println("<td>");
    		out.println(stx.Class);
    		out.println("</td>");
    		out.println("<td>");
    		out.println(stx.grade);
    		out.println("</td>");
    		out.println("</tr>");
    	}
     %>
    
    </table>
  </body>
</html>
