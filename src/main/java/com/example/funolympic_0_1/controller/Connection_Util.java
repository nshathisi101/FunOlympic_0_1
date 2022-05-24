package com.example.funolympic_0_1.controller;

import com.example.funolympic_0_1.model.bean.Userinfo;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
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
                        sql = "UPDATE `FunOlmpic`.`User_accounting` SET `fullName` = ?, `email` = ?,`sport`=?, `userImage` = ? WHERE (`id` = '" + userinfo.getId() + "');";
                        myStmt = myConn.prepareStatement(sql);
                        myStmt.setString(3, userinfo.getSport());
                        myStmt.setString(4, userinfo.getDp());
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
        Userinfo userinfo=new Userinfo(id,fullName,email,"null",userType,country,sport,dp);
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
                String sql = "SELECT * FROM FunOlmpic.User_accounting where `UserType`='Athlete' and country='" + userinfo.getCountry() + "'";
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
}
