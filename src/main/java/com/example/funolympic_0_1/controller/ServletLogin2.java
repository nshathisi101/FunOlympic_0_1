package com.example.funolympic_0_1.controller;


import com.example.funolympic_0_1.model.bean.*;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Timestamp;
import java.util.List;

@WebServlet(name = "ServletLogin2", value = "/ServletLogin2")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 14, // 10 MB

        maxFileSize = 1024 * 1024 * 1000000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000000)   	// 1 GB

public class ServletLogin2 extends HttpServlet {
    private Connection_Util connectionUtil;
    @Resource(name = "jdbc/FunOlympic")

    private DataSource dataSource;


    @Override
    public void init() throws ServletException {
        // TODO Auto-generated method stub
        super.init();

        try {
            // Create our StudentDBUtil.... and pass in the conn pool/dataSource
            connectionUtil = new Connection_Util(dataSource);
        }

        catch (Exception e) {
            throw new ServletException(e);
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String theCommand = request.getParameter("command");

            if (theCommand == null) {

                theCommand = "display_List";
            }
            switch (theCommand) {
                case "VerifyCode":
                    VerifyCode(request,response);
                    break;
            }

            // listStudents(request, response);String fileName = null;
        }
        catch (Exception exc) {

        }
    }

    private void loginUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String email =request.getParameter("email");
        String password =request.getParameter("password");
        Userinfo userinfo=connectionUtil.getUserInfo(email,password);
        if(userinfo==null){
            session.setAttribute("email",email);
            session.setAttribute("alertErrorLogin","Incorrect password or email");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }else{
            if (session.getAttribute("email") != null){
                session.removeAttribute("email");
                session.removeAttribute("alertErrorLogin");
            }
            session.setAttribute("alertSuccessful","Successfully login");
            session.setAttribute("userInfo",userinfo);

            Broadcast broadcast1=new Broadcast();
            List<Broadcast> broadcasts=connectionUtil.getBroadcast(broadcast1,"login");
            session.setAttribute("broadcastInfo",broadcasts);

            if (userinfo.getUserType().equals("Admin")){
                List<Userinfo> userinfos=connectionUtil.setRepresentatives(userinfo,"login");
                List<Userinfo> athleteInfo=connectionUtil.getAthlete(userinfo,"login");
                session.setAttribute("RepresentativeInfo",userinfos);
                session.setAttribute("athleteInfo",athleteInfo);

                //event List
                Events events=new Events();
                List<Events> eventsList=connectionUtil.getEvent(events,"login");
                session.setAttribute("eventInfo",eventsList);

                //event List
                Results results=new Results();
                List<Results> resultsList=connectionUtil.getEventResult(results,"login");
                session.setAttribute("resultsInfo",resultsList);

                //medal
                getMedalSummary(request,response);

                getAllAthletes(request,response,userinfo.getUserType());
                request.getRequestDispatcher("Country_representatives.jsp").forward(request, response);
            }else if(userinfo.getUserType().equals("Representatives")){
                List<Userinfo> athleteInfo=connectionUtil.getAthlete(userinfo,"login");
                session.setAttribute("athleteInfo",athleteInfo);
                request.getRequestDispatcher("athletes_form.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("user_login.jsp").forward(request, response);
            }

        }
    }


    private void User_Registration(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session=request.getSession();
        String fullName =request.getParameter("fullName");
        String email =request.getParameter("email");
        String password =request.getParameter("password");
        String userType =request.getParameter("userType");
        Userinfo userinfo=null;
        if(userType.equals("Admin")){
            String country =request.getParameter("country");
            String action =request.getParameter("action");
            String id_String=request.getParameter("id");
            id_String.replace(" ","");
            System.out.println(action);
            userinfo=new Userinfo(id_String,fullName,email,password,userType,country,null,null,null,null);
            List<Userinfo> userinfos=connectionUtil.setRepresentatives(userinfo,action);
            if(userinfos!=null){
                if (session.getAttribute("alertError") != null){
                    session.removeAttribute("alertError");
                }
                session.setAttribute("alertSuccessful","Successfully registered");
                session.setAttribute("RepresentativeInfo",userinfos);
                request.getRequestDispatcher("Country_representatives.jsp").forward(request, response);
            }else{
                session.setAttribute("alertError","Failed registered");
                request.getRequestDispatcher("Country_representatives.jsp").forward(request, response);
            }
        }else{
            userinfo=new Userinfo("null",fullName,email,password,userType,null,null,null,null,null);
            String msg=connectionUtil.setUserInfo(userinfo,"upload");
            if(msg.equals("Successful")){
                if (session.getAttribute("userInfo") != null){
                    session.removeAttribute("userInfo");
                    session.removeAttribute("alertError");
                }
                session.setAttribute("alertSuccessful","Successfully registered");
                request.getRequestDispatcher("user_register.jsp").forward(request, response);
            }else {
                session.setAttribute("userInfo",userinfo);
                session.setAttribute("alertError","Failed registered");
                request.getRequestDispatcher("user_register.jsp").forward(request, response);
            }
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String theCommand = request.getParameter("command");

            if (theCommand == null) {

                theCommand = "display_List";
            }
            switch (theCommand) {
                case "Registering_User":
                    User_Registration(request,response);
                    break;
                case "Login_User":
                    loginUser(request,response);
                    break;
                case "athletes":
                    athletesRegister(request,response);
                    break;
                case "deleteRepresentative":
                    deleteRepresentative(request,response);
                    break;
                case "deleteAthlete":
                    deleteAthlete(request,response);
                    break;
                case "logout":
                    Logout(request,response);
                    break;
                case "VerifyCode":
                    VerifyCode(request,response);
                    break;
                case "forgotPassword":
                    forgotPassword(request,response);
                    break;
                case "changePassword":
                    changePassword(request,response);
                    break;
                case "Broadcast":
                    Broadcast(request,response);
                    break;
                case "deleteBroadcast":
                    deleteBroadcast(request,response);
                    break;
                case "Event":
                    event(request,response);
                    break;
                case "deleteEvent":
                    deleteEvent(request,response);
                    break;
                case "EventResults":
                    eventResults(request,response);
                    break;
                case "deleteResults":
                    deleteResults(request,response);
                    break;
                case "volunteer":
                    volunteer(request,response);
                    break;
            }

            // listStudents(request, response);String fileName = null;
        }
        catch (Exception exc) {
            exc.printStackTrace();

        }
    }

    private void volunteer(HttpServletRequest request, HttpServletResponse response) throws Exception  {
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String age =request.getParameter("age");
        String gender=request.getParameter("gender");
        String country =request.getParameter("country");
        String userType =request.getParameter("userType");
        String interest1 =request.getParameter("interest1");
        String interest2 =request.getParameter("interest2");
        String interest3 =request.getParameter("interest3");
        if(userType.equals("Spector")){
            String msg=connectionUtil.setVolunteer(id,age,gender,country,interest1,interest2,interest3);
            if(msg.equals("Successful")){
                request.getRequestDispatcher("schedule.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("volunteer.jsp").forward(request, response);
            }
        }else{
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }

    }

    private void eventResults(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String action =request.getParameter("action");
        String userType =request.getParameter("userType");
        String event_id =request.getParameter("event");
        String athlete =request.getParameter("athlete");
        String position =request.getParameter("position");
        String medal =request.getParameter("medal");
        System.out.println("Before "+action);
        if(userType.equals("Admin")){
            Results results=new Results(id,"Nothng","Nothing","Nothing",medal,position,"nothing",athlete,event_id,"Nothing");
            List<Results> eventsList=connectionUtil.getEventResult(results,action);
            if(eventsList.isEmpty()){
                session.setAttribute("alertError","Something is wrong");
                request.getRequestDispatcher("event_results_form.jsp").forward(request, response);
            }else{
                session.setAttribute("resultsInfo",eventsList);
                request.getRequestDispatcher("event_results_form.jsp").forward(request, response);
            }
        }else {
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }
    }

    private void deleteResults(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String userType =request.getParameter("userType");
        if(userType.equals("Admin")){
            Results results=new Results(id);
            List<Results> resultsList=connectionUtil.getEventResult(results,"deleting");
            if(resultsList.isEmpty()){
                System.out.println("Empty ");
                session.setAttribute("resultsInfo",resultsList);
                request.getRequestDispatcher("event_results_form.jsp").forward(request, response);
            }else{
                String test= resultsList.get(0).getId();
                System.out.println("test is "+test);
                if(test.equals("Error")){
                    session.setAttribute("alertError","Something is wrong");
                    request.getRequestDispatcher("event_results_form.jsp").forward(request, response);
                }else{
                    System.out.println("No errors");
                    session.setAttribute("resultsInfo",resultsList);
                    request.getRequestDispatcher("event_results_form.jsp").forward(request, response);
                }
            }

        }else {
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }
    }

    private void deleteEvent(HttpServletRequest request, HttpServletResponse response) throws  Exception{
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String userType =request.getParameter("userType");
        if(userType.equals("Admin")){
            Events events=new Events(id);
            List<Events> eventsList=connectionUtil.getEvent(events,"deleting");
            if(eventsList.isEmpty()){
                System.out.println("Empty ");
                session.setAttribute("eventInfo",eventsList);
                request.getRequestDispatcher("EventForm.jsp").forward(request, response);
            }else{
                String test= eventsList.get(0).getId();
                System.out.println("test is "+test);
                if(test.equals("Error")){
                    session.setAttribute("alertError","Something is wrong");
                    request.getRequestDispatcher("EventForm.jsp").forward(request, response);
                }else{
                    System.out.println("No errors");
                    session.setAttribute("eventInfo",eventsList);
                    request.getRequestDispatcher("EventForm.jsp").forward(request, response);
                }
            }

        }else {
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }
    }
    private void event(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String action =request.getParameter("action");
        String userType =request.getParameter("userType");
        String sport =request.getParameter("sport");
        String date =request.getParameter("date");
        String startTime =request.getParameter("timeStart");
        String endTime =request.getParameter("timeEnd");
        String venue =request.getParameter("Venue");
        String event=request.getParameter("event");
        System.out.println("Before "+action);
        if(userType.equals("Admin")){
            Events events=new Events(id,sport,event,date,startTime,endTime,venue,"Nothing","Nothing" );
            List<Events> eventsList=connectionUtil.getEvent(events,action);
            if(eventsList.isEmpty()){
                System.out.println("Error in event");
                session.setAttribute("alertError","Something is wrong");
                request.getRequestDispatcher("EventForm.jsp").forward(request, response);
            }else{
                session.setAttribute("eventInfo",eventsList);
                request.getRequestDispatcher("EventForm.jsp").forward(request, response);
            }
        }else {
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }

    }


    private void Broadcast(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String action =request.getParameter("action");
        String userType =request.getParameter("userType");
        String[] add_Roles=request.getParameterValues("my-select[]");
        String sport="Nothing";
        if (add_Roles != null) {
            String add_Roles2 = null;
            for (int i = 0; i < add_Roles.length; i++) {
                System.out.println("<b>" + add_Roles[i] + "<b>");
                if(add_Roles2==null){
                    add_Roles2 = add_Roles[i];
                }else{
                    add_Roles2 = add_Roles2 + ", "+add_Roles[i] ;
                }

            }
            StringBuffer sb = new StringBuffer(add_Roles2);
            sb.deleteCharAt(sb.length() - 2);
            sport = String.valueOf(sb);
        }


        String broadcast =request.getParameter("broadcast");
        if(userType.equals("Admin")){
            Broadcast broadcast1=new Broadcast(id,broadcast,sport);
            List<Broadcast> broadcasts=connectionUtil.getBroadcast(broadcast1,action);
            if(broadcasts.isEmpty()){
                session.setAttribute("alertError","Something is wrong");
                request.getRequestDispatcher("broadcast_form.jsp").forward(request, response);
            }else{
                session.setAttribute("broadcastInfo",broadcasts);
                request.getRequestDispatcher("broadcast_form.jsp").forward(request, response);
            }
        }else {
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }

    }

    private void deleteBroadcast(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String userType =request.getParameter("userType");
        if(userType.equals("Admin")){
            Broadcast broadcast1=new Broadcast(id);
            List<Broadcast> broadcasts=connectionUtil.getBroadcast(broadcast1,"deleting");
            if(broadcasts.isEmpty()){
                session.setAttribute("broadcastInfo",broadcasts);
                request.getRequestDispatcher("broadcast_form.jsp").forward(request, response);
            }else{
                String test= broadcasts.get(0).getId();
                if(test.equals("Error")){
                    session.setAttribute("alertError","Something is wrong");
                    request.getRequestDispatcher("broadcast_form.jsp").forward(request, response);
                }else{
                    session.setAttribute("broadcastInfo",broadcasts);
                    request.getRequestDispatcher("broadcast_form.jsp").forward(request, response);
                }
            }

        }else {
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }
    }


    private void changePassword(HttpServletRequest request, HttpServletResponse response)throws Exception {
        HttpSession session=request.getSession();
        String email= (String) session.getAttribute("EmailVerified");
        String password =request.getParameter("password");
        String msg=connectionUtil.changePassword(password,email);
        if(msg.equals("Successful")){
            if (session.getAttribute("EmailVerified") != null){
                session.removeAttribute("EmailVerified");
            }
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }else{
            session.setAttribute("alertWaring","Something went wrong");
            request.getRequestDispatcher("passwordChange.jsp").forward(request, response);
        }


    }

    private void forgotPassword(HttpServletRequest request, HttpServletResponse response)throws Exception {
        HttpSession session=request.getSession();
        String email =request.getParameter("email");
        Otp_send.emailVerification(email);
        session.setAttribute("EmailSent",email);
        request.getRequestDispatcher("user_passcode_verification.jsp").forward(request, response);
    }

    private void VerifyCode(HttpServletRequest request, HttpServletResponse response)throws Exception {
        HttpSession session=request.getSession();
        String email= (String) session.getAttribute("EmailSent");
        String code =request.getParameter("codeVerify");
        System.out.println("email"+email);
        String msg=verifyOtp.sentVerifyEmail(code,email);
        if(msg.equals("Incorrect code")){
            session.setAttribute("alertWaring", "The provided code is incorrect");
            request.getRequestDispatcher("user_passcode_verification.jsp").forward(request, response);
        }else if(msg.equals("error unknown code")){
            session.setAttribute("alertWaring", "The code has expired");
            request.getRequestDispatcher("user_passcode_verification.jsp").forward(request, response);
        }else if(msg.equals("Correct code")){
            if (session.getAttribute("alertWaring") != null){
                session.removeAttribute("alertWaring");
                session.removeAttribute("EmailSent");
            }
            session.setAttribute("EmailVerified",email);
            request.getRequestDispatcher("passwordChange.jsp").forward(request, response);
        }

    }

    private void Logout(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session=request.getSession();
        if (session.getAttribute("alertEmailError") != null){
            session.removeAttribute("alertEmailError");
        }
        if (session.getAttribute("RepresentativeInfo") != null){
            session.removeAttribute("RepresentativeInfo");
        }
        if (session.getAttribute("alertWaring") != null){
            session.removeAttribute("alertWaring");
        }
        if (session.getAttribute("alertErrorLogin") != null){
            session.removeAttribute("alertErrorLogin");
        }
        if (session.getAttribute("athleteInfo") != null){
            session.removeAttribute("athleteInfo");
        }
        if (session.getAttribute("alertEmailError2") != null){
            session.removeAttribute("alertEmailError2");
        }
        if (session.getAttribute("userInfo") != null){
            session.removeAttribute("userInfo");
        }
        if (session.getAttribute("alertError") != null){
            session.removeAttribute("alertError");
        }
        if (session.getAttribute("alertSuccessful") != null){
            session.removeAttribute("alertSuccessful");
        }
        if (session.getAttribute("email") != null){
            session.removeAttribute("email");
        }
        if (session.getAttribute("eventInfo") != null){
            session.removeAttribute("eventInfo");
        }
        if (session.getAttribute("resultsInfo") != null){
            session.removeAttribute("resultsInfo");
        }
        if (session.getAttribute("medalInfo") != null){
            session.removeAttribute("medalInfo");
        }
        request.getRequestDispatcher("user_login.jsp").forward(request, response);
    }

    private void deleteRepresentative(HttpServletRequest request, HttpServletResponse response)throws Exception {
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String userType =request.getParameter("userType");
        Userinfo emtry=new Userinfo(id);
        if(userType.equals("Admin")){
            List<Userinfo> listRepresentatives= connectionUtil.setRepresentatives(emtry,"delete");
            session.setAttribute("RepresentativeInfo",listRepresentatives);
            session.setAttribute("alertWaring", "Successfully delete Representative");
            request.getRequestDispatcher("Country_representatives.jsp").forward(request, response);
        }else{
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }

    }
    private void deleteAthlete(HttpServletRequest request, HttpServletResponse response)throws Exception {
        HttpSession session=request.getSession();
        String id =request.getParameter("id");
        String userType =request.getParameter("userType");
        String country =request.getParameter("country");
        Userinfo emtry=new Userinfo(id,country);
        if(userType.equals("Representatives")){
            List<Userinfo> listAthletes= connectionUtil.getAthlete(emtry,"delete");
            session.setAttribute("athleteInfo",listAthletes);
            session.setAttribute("alertWaring", "Successfully delete Representative");
            request.getRequestDispatcher("athletes_form.jsp").forward(request, response);
        }else{
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }
    }

    private void athletesRegister(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String fullName11 =request.getParameter("fullName");
        String email =request.getParameter("email");
        String userType =request.getParameter("userType");
        String country =request.getParameter("country");
        String id =request.getParameter("id");
        String action =request.getParameter("action");
        String sport =request.getParameter("sport");
        String age =request.getParameter("action");
        String gender =request.getParameter("sex");
        String fullName2=fullName11.replace(" ","_");
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String ApplicationDate= String.valueOf(timestamp.getTime());
        if(userType.equals("Representatives")){
            String fileName = null;
            String folderName6 = "UserImages";
            String uploadPath6 = request.getServletContext().getRealPath("") + folderName6;
            File dir6 = new File(uploadPath6);
            if (!dir6.exists()) {
                dir6.mkdirs();
            }

            Part hazardous_waste=request.getPart("image");
            InputStream hazardous_waste1 = hazardous_waste.getInputStream();
            fileName=fullName2+"_UserImager"+ApplicationDate+".jpg";
            Files.copy(hazardous_waste1, Paths.get(uploadPath6 + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);
            Userinfo user=new Userinfo(id,fullName11,email,"2021","Athlete",country,sport,fileName,gender,age);
            List<Userinfo>  userinfos=connectionUtil.getAthlete(user,action);
            if(!userinfos.isEmpty()){
                if (session.getAttribute("alertEmailError") != null){
                    session.removeAttribute("alertEmailError");
                    session.removeAttribute("alertEmailError2");
                }
                session.setAttribute("athleteInfo",userinfos);
                request.getRequestDispatcher("athletes_form.jsp").forward(request, response);
            }else{
                System.out.println("its null");
                session.setAttribute("alertEmailError","Email Exits");
                session.setAttribute("alertEmailError2",user);
                request.getRequestDispatcher("athletes_form.jsp").forward(request, response);
            }


        }else{
            session.setAttribute("alertErrorLogin","Your not login Please login");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }

    }

    private void getAllAthletes(HttpServletRequest request, HttpServletResponse response,String userType) throws Exception{
        HttpSession session=request.getSession();
        Userinfo userinfo=new Userinfo(userType);
        List<Userinfo> userinfoList=connectionUtil.getAthlete(userinfo,"login");
        session.setAttribute("allAthletes",userinfoList);
    }

    private void getMedalSummary(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session=request.getSession();
        List<Medal> medals=connectionUtil.getMedals();
        session.setAttribute("medalInfo",medals);
    }

}
