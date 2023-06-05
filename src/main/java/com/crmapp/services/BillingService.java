package com.crmapp.services;
import java.util.List;
import com.crmapp.entities.Billing;
public interface BillingService {
public List<Billing> listAllBills();
public void saveBill(Billing bill);
public Billing getOneBill(long invoiceNo);
public void deleteOneBill(long invoiceNo);
}
