package com.jtspringproject.JtSpringProject.objects;

class Grain {

    private int grainId;
    private String grainType;
    private int quantity;
    private double pricePerUnit;
    private String sellerId;

    public Grain() {
    }
    public Grain(int grainId,String grainType, int quantity, double pricePerUnit, String sellerId) {
        this.grainId = grainId;
        this.grainType = grainType;
        this.quantity = quantity;
        this.pricePerUnit = pricePerUnit;
        this.sellerId = sellerId;
    }

    public int getGrainId() {
        return grainId;
    }

    public void setGrainId(int grainId) {
        this.grainId = grainId;
    }

    public String getGrainType() {
        return grainType;
    }

    public void setGrainType(String grainType) {
        this.grainType = grainType;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPricePerUnit() {
        return pricePerUnit;
    }

    public void setPricePerUnit(double pricePerUnit) {
        this.pricePerUnit = pricePerUnit;
    }

    public String getSellerId() {
        return sellerId;
    }

    public void setSellerId(String sellerId) {
        this.sellerId = sellerId;
    }
}
