package com.jtspringproject.JtSpringProject.objects;

public class BuyerLogIn extends LogIn {
    Buyer buyer;
    public Buyer logIn(){
        getID();
        getPassword();
        if(verifyPassword()){
            buyer = getBuyer();
        }
        return buyer;
    }

    public Buyer getBuyer(){
        return new Buyer();
    }
}