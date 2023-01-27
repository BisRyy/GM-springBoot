package com.jtspringproject.JtSpringProject.objects;

import javax.annotation.processing.Generated;

//@Entity
public abstract class Person {

//    @Id
//    @GeneratedValue()
//    @Column(name="id")
    public String id;
    public String name;
    public String address;
    public String email;
    public String phoneNumber;


    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getAddress() {
        return this.address;
    }

    public String getEmail() {
        return this.email;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
