package com.crmapp.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.crmapp.entities.Billing;
import com.crmapp.entities.Contact;
import com.crmapp.services.BillingService;
import com.crmapp.services.ContactService;

@Controller
public class BillingController {
	@Autowired
	private BillingService billingService;
	@Autowired
	private ContactService contactService;

//Go to billing page
	@RequestMapping("/billingPage")
	public String billingPage(@RequestParam("id") long id, ModelMap model) {
		Contact contact = contactService.getOneContactById(id);
		model.addAttribute("contact", contact);
		return "bill_generate";
	}

//Save the bill in database & show invoice
	@RequestMapping("/generateBill")
	public String generateBill(@ModelAttribute("bill") Billing bill, ModelMap model) {
		billingService.saveBill(bill);
		model.addAttribute("bill", bill);
		return "bill_info";
	}

//To read PSA JAVA notes online, link in index
	@RequestMapping("/javanotes")
	public String javaNotes() {
		return "java_notes";
	}

//show list of all the bills
	@RequestMapping("/billsList")
	public String billsList(ModelMap model) {
		List<Billing> bills = billingService.listAllBills();
		model.addAttribute("bills", bills);
		return "billsList";
	}

//After clicking on "View" show invoice
	@RequestMapping("/billInfo")
	public String getOneBill(@RequestParam("invoiceNo") long invoiceNo, ModelMap model) {
		Billing bill = billingService.getOneBill(invoiceNo);
		model.addAttribute("bill", bill);
		return "bill_info";
	}

//Delete the invoice
	@RequestMapping("/deleteBill")
	public String deleteOneBill(@RequestParam("invoiceNo") long invoiceNo, ModelMap model) {
		billingService.deleteOneBill(invoiceNo);
		List<Billing> bills = billingService.listAllBills();
		model.addAttribute("bills", bills);
		return "billsList";
	}
}
