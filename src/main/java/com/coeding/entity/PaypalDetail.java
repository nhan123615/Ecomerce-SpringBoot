package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "paypal_details")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class PaypalDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private String transactionId;
    private String payerEmail;
    private String payerRecipientName;
    private String payerCity;
    private String payerCountry;
    private String payerPostalCode;
    private String payerState;

    
    @OneToOne(targetEntity = Payment.class)
    private Payment payment;

    public PaypalDetail(String transactionId, String payerEmail, String payerRecipientName, String payerCity, String payerCountry, String payerPostalCode, String payerState, Payment payment) {
        this.transactionId = transactionId;
        this.payerEmail = payerEmail;
        this.payerRecipientName = payerRecipientName;
        this.payerCity = payerCity;
        this.payerCountry = payerCountry;
        this.payerPostalCode = payerPostalCode;
        this.payerState = payerState;
        this.payment = payment;
    }


}
