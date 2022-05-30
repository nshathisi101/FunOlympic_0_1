package com.example.funolympic_0_1.controller;

import com.example.funolympic_0_1.model.bean.*;

import javax.sql.DataSource;
import java.sql.*;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class Connection_Util {

    private final DataSource dataSource;

    public Connection_Util(DataSource theDataSource) {
        dataSource = theDataSource;

    }
    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {

            if(myRs !=null) {
                myRs.close();
            }
            if (myStmt !=null) {

                myStmt.close();
            }

            if (myConn !=null) {
                myConn.close();//*does not really close it...just put
            }
        }catch(Exception exc) {

            exc.printStackTrace();
        }
    }


    public String setUserInfo(Userinfo userinfo,String action) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        String msg=null;
        try{
            String sql=null;
            myConn = dataSource.getConnection();
            if(action.equals("delete")){
                sql="DELETE FROM `FunOlmpic`.`User_accounting` WHERE (`id` = '"+userinfo.getId()+"');";
                myStmt = myConn.prepareStatement(sql);
            }else {
            if(Objects.equals(userinfo.getUserType(), "Admin")||Objects.equals(userinfo.getUserType(), "Athlete")||Objects.equals(userinfo.getUserType(), "Representatives")){

                    if (action.equals("updating")) {
                        sql = "UPDATE `FunOlmpic`.`User_accounting` SET `fullName` = ?, `email` = ?, `country` = ? WHERE (`id` = '" + userinfo.getId() + "');";
                        myStmt = myConn.prepareStatement(sql);
                        myStmt.setString(3, userinfo.getCountry());
                    } else if(action.equals("updateAthlete")){
                        sql = "UPDATE `FunOlmpic`.`User_accounting` SET `fullName` = ?, `email` = ?,`sport`=?, `userImage` = ?, `sex` = ?, `age` = ? WHERE (`id` = '" + userinfo.getId() + "');";
                        myStmt = myConn.prepareStatement(sql);
                        myStmt.setString(3, userinfo.getSport());
                        myStmt.setString(4, userinfo.getDp());
                        myStmt.setString(5, userinfo.getSex());
                        myStmt.setString(6, userinfo.getAge());
                }
                    else{
                        sql = "INSERT INTO `FunOlmpic`.`User_accounting` (`fullName`, `email`, `password`, `UserType`,`country`,`sport`,`userImage`) VALUES (?,?,?,?,?,?,?);";
                        myStmt = myConn.prepareStatement(sql);
                        String user = null;
                        if (Objects.equals(userinfo.getUserType(), "Admin") || Objects.equals(userinfo.getUserType(), "Representatives")) {
                            user = "Representatives";
                        } else if(Objects.equals(userinfo.getUserType(), "Athlete")) {
                            user = "Athlete";
                        }else{
                            user = "Spector";
                        }
                        myStmt.setString(5, userinfo.getCountry());
                        myStmt.setString(4, user);
                        myStmt.setString(3, userinfo.getPassword());
                        myStmt.setString(6, userinfo.getSport());
                        myStmt.setString(7, userinfo.getDp());

                }

            }else{
                sql="INSERT INTO `FunOlmpic`.`User_accounting` (`fullName`, `email`, `password`, `UserType`) VALUES (?,?,?,?);";
                myStmt = myConn.prepareStatement(sql);
                myStmt.setString(4, userinfo.getUserType());
                myStmt.setString(3, userinfo.getPassword());

            }
            myStmt.setString(1, userinfo.getFullName());
            myStmt.setString(2, userinfo.getEmail());
            }

            myStmt.execute();
            msg="Successful";
            System.out.println("eerr "+sql);

        }catch (Exception e){
            System.out.println(userinfo.getId()+" "+e);
            String exceptionError=e.toString();
            String error="User_accounting.email_UNIQUE";
            if(exceptionError.contains(error)){
                msg="email error";
            }else{
                msg="Error";
            }

        }finally {
            close(myConn,myStmt,null);
        }
        return msg;
    }
    public Userinfo userinfoReuse(ResultSet myRs) throws Exception{
        String  fullName=myRs.getString("fullName");
        String userType=myRs.getString("UserType");
        String id=myRs.getString("id");
        String country=myRs.getString("country");
        String email=myRs.getString("email");
        String sport=myRs.getString("sport");
        String dp=myRs.getString("userImage");
        String sex=myRs.getString("sex");
        String age=myRs.getString("age");
        Userinfo userinfo=new Userinfo(id,fullName,email,"null",userType,country,sport,dp,sex,age);
        return userinfo;

    }

    public Userinfo getUserInfo(String email, String password) throws Exception {
       String login="login";
        Userinfo userinfo=null;
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        try{
            myConn=dataSource.getConnection();
            String sql ="SELECT * FROM FunOlmpic.User_accounting where `email`='"+email+"' and password='"+password+"'";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();
            while(myRs.next()) {
                userinfo=userinfoReuse(myRs);
            }
        }catch (Exception e){
            System.out.println(e);
        }finally {
            close(myConn,myStmt,myRs);
        }

        return userinfo;
    }

    public List<Userinfo> setRepresentatives(Userinfo userinfo,String action) throws Exception {
        String msg="Something";

        if (!action.equals("login")){
            System.out.println(action);
            msg=setUserInfo(userinfo,action);
        }
        List<Userinfo> userinfo2=new ArrayList<>();
        if(msg.equals("Successful")||action.equals("login")){
            Connection myConn=null;
            ResultSet myRs=null;
            PreparedStatement myStmt=null;
            try {
                myConn = dataSource.getConnection();
                String sql = "SELECT * FROM FunOlmpic.User_accounting where `UserType`='Representatives'";
                myStmt = myConn.prepareStatement(sql);
                myRs = myStmt.executeQuery();
                while (myRs.next()){
                    Userinfo userinfoww=userinfoReuse(myRs);
                    userinfo2.add(userinfoww);
                }
            }catch (Exception e){
                System.out.println(e);
            }finally {
                close(myConn,myStmt,myRs);
            }
        }
        return userinfo2;
    }
    public List<Userinfo> getAthlete(Userinfo userinfo,String action) throws Exception {
        String msg="Something";

        if (!action.equals("login")){
            System.out.println(action);
            msg=setUserInfo(userinfo,action);
        }
        List<Userinfo> userinfo2=new ArrayList<>();
        System.out.println(msg);
        if(msg.equals("Successful")||action.equals("login")) {
            Connection myConn = null;
            ResultSet myRs = null;
            PreparedStatement myStmt = null;
            try {
                myConn = dataSource.getConnection();
                String sql =null;
                if (userinfo.getId().equals("Admin")){
                    sql = "SELECT * FROM FunOlmpic.User_accounting where `UserType`='Athlete'";
                }else{
                    sql = "SELECT * FROM FunOlmpic.User_accounting where `UserType`='Athlete' and country='" + userinfo.getCountry() + "'";
                }
                myStmt = myConn.prepareStatement(sql);
                myRs = myStmt.executeQuery();
                System.out.println("get "+sql);
                while (myRs.next()) {
                    Userinfo userinfoww = userinfoReuse(myRs);
                    userinfo2.add(userinfoww);
                }
            } catch (Exception e) {
                System.out.println(e);
            } finally {
                close(myConn, myStmt, myRs);
            }
        }else{
            userinfo2.clear();
        }
        return userinfo2;
    }

    public String changePassword(String password, String email) throws Exception{
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        String msg=null;
        try {
            myConn = dataSource.getConnection();
            String sql = "UPDATE `FunOlmpic`.`User_accounting` SET `password` = ? WHERE (`email` = '" + email + "');";
            myStmt = myConn.prepareStatement(sql);
            myStmt.setString(1,password);
            myStmt.execute();
            msg="Successful";
        }catch (Exception e){
            System.out.println(e);
            msg="Error";
        }finally {
            close(myConn, myStmt, null);
        }
        return msg;
    }

    public List<Broadcast> getBroadcast(Broadcast broadcast1, String action) throws Exception {
        String msg="Something";

        if (!action.equals("login")){
            System.out.println(action);
            msg=setBroadcast(broadcast1,action);
        }
        List<Broadcast> broadcastList=new ArrayList<>();
        System.out.println(msg);
        if(msg.equals("Successful")||action.equals("login")) {
            Connection myConn = null;
            ResultSet myRs = null;
            PreparedStatement myStmt = null;
            try {
                myConn = dataSource.getConnection();
                String sql = "SELECT * FROM FunOlmpic.Broadcast";
                myStmt = myConn.prepareStatement(sql);
                myRs = myStmt.executeQuery();
                System.out.println("get "+sql);
                while (myRs.next()) {
                    String  broadcastName=myRs.getString("broadcastName");
                    String id=myRs.getString("id");
                    String sport=myRs.getString("sport");
                    Broadcast broadcast=new Broadcast(id,broadcastName,sport);
                    broadcastList.add(broadcast);

                }
            } catch (Exception e) {
                System.out.println(e);
                Broadcast broadcast=new Broadcast("Error");
                broadcastList.add(broadcast);
            } finally {
                close(myConn, myStmt, myRs);
            }
        }else{
            Broadcast broadcast=new Broadcast("Error");
            broadcastList.add(broadcast);
        }
        return broadcastList;
    }

    private String setBroadcast(Broadcast broadcast1, String action) throws Exception{
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        String msg=null;
        try{
            String sql=null;
            myConn = dataSource.getConnection();
            if(action.equals("deleting")){
                sql="DELETE FROM `FunOlmpic`.`Broadcast` WHERE (`id` = '"+broadcast1.getId()+"');";
                myStmt = myConn.prepareStatement(sql);
            }else {
                if(action.equals("updating")){
                    sql = "update `FunOlmpic`.`Broadcast` set `broadcastName`=?, `sport`= ? where(id='"+broadcast1.getId()+"');";
                }else{
                    sql = "INSERT INTO `FunOlmpic`.`Broadcast` (`broadcastName`, `sport`) VALUES (?,?);";


                }
                myStmt = myConn.prepareStatement(sql);
                myStmt.setString(1, broadcast1.getBroadcastName());
                myStmt.setString(2, broadcast1.getSport());
            }

            myStmt.execute();
            msg="Successful";
            System.out.println("eerr "+sql);

        }catch (Exception e){
            System.out.println(broadcast1.getId()+" "+e);
            String exceptionError=e.toString();
            String error="User_accounting.email_UNIQUE";
            if(exceptionError.contains(error)){
                msg="email error";
            }else{
                msg="Error";
            }

        }finally {
            close(myConn,myStmt,null);
        }
        return msg;
    }

    public List<Events> getEvent(Events events, String action) throws Exception{
        String msg="Something";

        if (action.equals("deleting")||action.equals("updating")||action.equals("uploading")){
            System.out.println(action);
            msg=setEvent(events,action);
        }
        List<Events> eventsList=new ArrayList<>();
        System.out.println(msg);
        if(msg.equals("Successful")||action.equals("login")||action.equals("login1")||action.equals("login2")||action.equals("login3")||action.equals("login4")) {
            Connection myConn = null;
            ResultSet myRs = null;
            PreparedStatement myStmt = null;
            try {
                String sql =null;
                myConn = dataSource.getConnection();
                String dayName="Nothing";
                if(action.equals("login1")){
                    java.util.Date date = new Date();
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    String  strDate = formatter.format(date);
                    Format f = new SimpleDateFormat("EEEE");
                    sql = "SELECT * FROM FunOlmpic.Event where date like '%"+strDate+"%'";
                }else if(action.equals("login2")){
                    DateTimeFormatter dateTimeFormatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
                    LocalDate today = LocalDate.now();
                    String tomorrow = (today.plusDays(1)).format(dateTimeFormatter);
                    sql = "SELECT * FROM FunOlmpic.Event where date like '%"+tomorrow+"%'";
                }else if(action.equals("login3")){
                    DateTimeFormatter dateTimeFormatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
                    LocalDate today = LocalDate.now();
                    String tomorrow = (today.plusDays(2)).format(dateTimeFormatter);
                    DateTimeFormatter dateTimeFormatter2=DateTimeFormatter.ofPattern("EEE");
                    dayName=(today.plusDays(2)).format(dateTimeFormatter2);
                    sql = "SELECT * FROM FunOlmpic.Event where date like '%"+tomorrow+"%'";
                }else if(action.equals("login4")){
                    DateTimeFormatter dateTimeFormatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
                    LocalDate today = LocalDate.now();
                    String tomorrow = (today.plusDays(3)).format(dateTimeFormatter);
                    DateTimeFormatter dateTimeFormatter2=DateTimeFormatter.ofPattern("EEE");
                    dayName=(today.plusDays(3)).format(dateTimeFormatter2);
                    sql = "SELECT * FROM FunOlmpic.Event where date like '%"+tomorrow+"%'";
                }else{
                    sql = "SELECT * FROM FunOlmpic.Event";
                }
                myStmt = myConn.prepareStatement(sql);
                myRs = myStmt.executeQuery();
                System.out.println("get "+sql);
                while (myRs.next()) {

                    String  sport=myRs.getString("sport");
                    String event=myRs.getString("event");
                    String date=myRs.getString("date");
                    String  startTime=myRs.getString("startTime");
                    String EndTime=myRs.getString("EndTime");
                    String venue=myRs.getString("venue");
                    String id=myRs.getString("id");


                    DateTimeFormatter dateFormatter=DateTimeFormatter.ofPattern("yyyy-MM-dd h:mm a");
                    LocalDateTime now=LocalDateTime.now();
                    String currentDate=dateFormatter.format(now);
                    DateTimeFormatter format=DateTimeFormatter.ofPattern("yyyy-MM-dd h:mm a");
                    String startDate=date+" "+startTime;
                    String endDate=date+" "+EndTime;
                    LocalDateTime dateStart=LocalDateTime.parse(startDate,format);
                    LocalDateTime  dateEnd=LocalDateTime.parse(endDate,format);
                    LocalDateTime  dateCurrent=LocalDateTime.parse(currentDate,format);
                    String status=null;
                    if(dateCurrent.isBefore(dateStart)){
                        status="upcoming";
                    }else if(dateCurrent.isAfter(dateEnd)){
                        status="Finished";
                    }else if(dateCurrent.isBefore(dateEnd) && dateCurrent.isAfter(dateStart)){
                        status="On going";
                    }else{
                        status="On going";
                    }
                    Events events1=new Events(id,sport,event,date,startTime,EndTime,venue,dayName,status);
                    eventsList.add(events1);

                }

            } finally {
                close(myConn, myStmt, myRs);
            }
        }else{
            Events broadcast=new Events("Error");
            eventsList.add(broadcast);
        }
        return eventsList;
    }

    private String setEvent(Events events, String action) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        String msg=null;
        try{
            String sql=null;
            myConn = dataSource.getConnection();
            System.out.println("action "+action);
            if(action.equals("deleting")){
                sql="DELETE FROM `FunOlmpic`.`Event` WHERE (`id` = '"+events.getId()+"');";
                myStmt = myConn.prepareStatement(sql);
            }else {
                if(action.equals("updating")){
                    sql = "update `FunOlmpic`.`Event` set `sport`=?, `event`=?, `date`=?, `startTime`=?, `EndTime`=?, `venue`=? where(id='"+events.getId()+"');";
                }else{
                    sql = "INSERT INTO `FunOlmpic`.`Event` (`sport`, `event`, `date`, `startTime`, `EndTime`, `venue`) VALUES  (?,?,?,?,?,?);";

                }
                myStmt = myConn.prepareStatement(sql);
                myStmt.setString(1, events.getSport());
                myStmt.setString(2, events.getEvent());
                myStmt.setString(3, events.getDate());
                myStmt.setString(4, events.getStartTime());
                myStmt.setString(5, events.getEndTime());
                myStmt.setString(6, events.getVenue());

            }

            myStmt.execute();
            msg="Successful";
            System.out.println("eerr "+sql);

        }catch (Exception e){
            System.out.println(events.getId()+" "+e);
            String exceptionError=e.toString();
            String error="User_accounting.email_UNIQUE";
            if(exceptionError.contains(error)){
                msg="email error";
            }else{
                msg="Error";
            }

        }finally {
            close(myConn,myStmt,null);
        }
        return msg;
    }

    public List<Results> getEventResult(Results results, String action) throws Exception {
        String msg="Something";

        if (!action.equals("login")){
            System.out.println(action);
            msg=setEventResult(results,action);
        }
        List<Results> resultsList=new ArrayList<>();
        System.out.println(msg);
        if(msg.equals("Successful")||action.equals("login")) {
            Connection myConn = null;
            ResultSet myRs = null;
            PreparedStatement myStmt = null;
            try {
                myConn = dataSource.getConnection();
                String sql = "select * from User_accounting u left join results r on u.id=r.userID right join Event e on r.eventId=e.id where u.UserType='Athlete' group by r.idResults";
                myStmt = myConn.prepareStatement(sql);
                myRs = myStmt.executeQuery();
                System.out.println("get "+sql);
                while (myRs.next()) {
                    String  id=myRs.getString("idResults");
                    System.out.println("id from Joined table "+id);
                    String eventId=myRs.getString("eventId");
                    String userID=myRs.getString("userID");
                    String position=myRs.getString("position");
                    String medal=myRs.getString("medal");
                    String fullName=myRs.getString("fullName");
                    String sport=myRs.getString("sport");
                    String event=myRs.getString("event");
                    String country=myRs.getString("country");
                    String dp=myRs.getString("userImage");

                    Results results1=new Results(id,fullName,sport,event,medal,position,country,userID,eventId,dp);
                    resultsList.add(results1);

                }

            } finally {
                close(myConn, myStmt, myRs);
            }
        }else{
            Results broadcast=new Results("Error");
            resultsList.add(broadcast);
        }
        return resultsList;
    }

    private String setEventResult(Results results, String action) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        String msg=null;
        try{
            String sql=null;
            myConn = dataSource.getConnection();
            System.out.println("action "+action);
            if(action.equals("deleting")){
                sql="DELETE FROM `FunOlmpic`.`results` WHERE (`idResults` = '"+results.getId()+"');";
                myStmt = myConn.prepareStatement(sql);
            }else {
                if(action.equals("updating")){
                    sql = "update `FunOlmpic`.`results` set `eventId`=?, `userID`=?, `position`=?, `medal`=? where(idResults='"+results.getId()+"');";
                }else{
                    sql = "INSERT INTO `FunOlmpic`.`results` (`eventId`, `userID`, `position`, `medal`) VALUES  (?,?,?,?);";

                }
                myStmt = myConn.prepareStatement(sql);
                myStmt.setString(1, results.getIdevent());
                myStmt.setString(2, results.getIduser());
                myStmt.setString(3, results.getPosition());
                myStmt.setString(4, results.getMedal());
            }

            myStmt.execute();
            msg="Successful";
            System.out.println("eerr "+sql);

        }catch (Exception e){
            System.out.println(results.getId()+" "+e);
            String exceptionError=e.toString();
            String error="User_accounting.email_UNIQUE";
            if(exceptionError.contains(error)){
                msg="email error";
            }else{
                msg="Error";
            }

        }finally {
            close(myConn,myStmt,null);
        }
        return msg;
    }

    public List<Medal> getMedals() throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        List<String> countries=countries();
        List<Medal> medals=new ArrayList<>();

        for (int i=0;i<countries.size();++i){
            try{
                //get a connection
                myConn =dataSource.getConnection();
                String sql3;
                sql3 = " SELECT COUNT(IF(medal = 'Gold', 1, NULL)) 'Gold',\n" +
                        "    COUNT(IF(medal = 'Silver', 1, NULL)) 'Silver',\n" +
                        "    COUNT(IF(medal = 'Bronze', 1, NULL)) 'Bronze' FROM User_accounting u left join results r on u.id=r.userID where u.country='"+countries.get(i)+"'";
                myStmt = myConn.prepareStatement(sql3);
                System.out.println("sql "+myStmt);
                myRs=myStmt.executeQuery();
                while(myRs.next()){
                    //String country=myRs.getString("country");
                    int gold=myRs.getInt("Gold");
                    int silver=myRs.getInt("Silver");
                    int bronze=myRs.getInt("bronze");
                    int total=gold+silver+bronze;
                    Medal md=new Medal(countries.get(i),String.valueOf(gold),String.valueOf(silver),String.valueOf(bronze),String.valueOf(total));
                    medals.add(md);

                }

            }catch(SQLIntegrityConstraintViolationException e){
                System.out.println ("This is error: "+e);
            } finally {
                close(myConn,myStmt,null);
            }
        }

        return medals;
    }

    private List<String> countries() throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        List<String> countries= new ArrayList<>();

        try{
            //get a connection
            myConn =dataSource.getConnection();
            String sql3;
            sql3 = " select * from User_accounting u left join results r on u.id=r.userID right join Event e on r.eventId=e.id where u.UserType=\"Athlete\" group by country;";
            myStmt = myConn.prepareStatement(sql3);
            System.out.println("sql "+myStmt);
            myRs=myStmt.executeQuery();
            while(myRs.next()){
                String country=myRs.getString("country");
                countries.add(country);
            }

        }catch(SQLIntegrityConstraintViolationException e){
            System.out.println ("This is error: "+e);
        } finally {
            close(myConn,myStmt,null);
        }
        return countries;
    }

    public String setVolunteer(String id, String age, String gender, String country, String interest1, String interest2, String interest3) throws  Exception{
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        String msg=null;
        try {
            myConn = dataSource.getConnection();
            String sql = "INSERT INTO `FunOlmpic`.`volunteers` (`userId`, `age`, `gender`, `country`, `interest1`, `interest2`, `interest3`, `status`) VALUES (?,?,?,?,?,?,?,?);";
            myStmt = myConn.prepareStatement(sql);
            myStmt.setString(1, id);
            myStmt.setString(2, age);
            myStmt.setString(3, gender);
            myStmt.setString(4, country);
            myStmt.setString(5, interest1);
            myStmt.setString(6, interest2);
            myStmt.setString(7, interest3);
            myStmt.setString(8, "Pending");
            myStmt.execute();
            msg="Successful";
        }finally {
            close(myConn,myStmt,null);
        }
        return msg;
    }

    public List<Broadcast> getWatchSingleBroadcast(String id,String sport) {
        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRS = null;
        List<Broadcast> event_single = new ArrayList<>();
        try {
            myConn = dataSource.getConnection();
            String sql = "Select * from Broadcast b, url u,Event e where e.sport=u.sport and b.sport like '%"+sport+"%' and e.id=?";

            myStmt = myConn.prepareStatement(sql);
            myStmt.setString(1, id);
            myRS = myStmt.executeQuery();
            System.out.println(myStmt);

            while (myRS.next()) {
                String id2=myRS.getString("id");
                String url=myRS.getString("url");
                String broadcastname=myRS.getString("broadcastName");
                String event=myRS.getString("event");
                String date=myRS.getString("date");
                String startTime=myRS.getString("startTime");
                String venue=myRS.getString("venue");
                String endTime=myRS.getString("endTime");
                Broadcast event_single1 = new Broadcast(id2,broadcastname,sport,url.replace("watch?v=", "embed/"),event,date,startTime,endTime,venue);
                event_single.add(event_single1);
            }

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close(myConn, myStmt, myRS);
        }
        return event_single;
    }
}
