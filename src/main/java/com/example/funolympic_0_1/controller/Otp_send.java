package com.example.funolympic_0_1.controller;

import com.twilio.Twilio;
import com.twilio.rest.verify.v2.service.Verification;
import com.twilio.rest.verify.v2.service.VerificationFetcher;

public class Otp_send {

    // Find your Account SID and Auth Token at twilio.com/console
    // and set the environment variables. See http://twil.io/secure
    public static final String ACCOUNT_SID =("AC7642f0ed92096235fbbfda4a80db5187");
    public static final String AUTH_TOKEN = ("23b6a043427992fab6caf09da944a236");

    public static void main(String args[]){
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Verification verification = Verification.creator(
                        "VA13f1547383d3f786b596f27096152e05",
                        "shinigamishatty@gmail.com",
                        "email")
                .create();

        System.out.println(verification.getSid());
        VerificationFetcher verification1=Verification.fetcher("VA13f1547383d3f786b596f27096152e05",verification.getSid());

        System.out.println(verification1.fetch());
    }

    public static void emailVerification(String email) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Verification verification = Verification.creator(
                        "VA13f1547383d3f786b596f27096152e05",
                        email,
                        "email")
                .create();
        System.out.println(email);
        System.out.println(verification.getSid());




    }
}
