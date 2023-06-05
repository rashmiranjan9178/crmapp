package com.crmapp.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.crmapp.dto.LeadData;
import com.crmapp.entities.Contact;
import com.crmapp.entities.Lead;
import com.crmapp.services.ContactService;
import com.crmapp.services.LeadService;

@Controller
public class LeadController {
	@Autowired
	private LeadService leadService;
	@Autowired
	private ContactService contactService;

//Home Page
	@RequestMapping("/")
	public String viewCreateLeadPage() {
		return "lead_create";
	}

//Save the Lead and display the Lead Information
	@RequestMapping("/saveLead")
	public String SaveLead(@ModelAttribute("lead") Lead lead, ModelMap model) {
		leadService.saveOneLead(lead);
		model.addAttribute("lead", lead);
		return "lead_info";
	}

//Convert Lead to Contact, after clicking on Convert button in Lead info page
	@RequestMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id, ModelMap model) {
		Lead lead = leadService.getOneLeadById(id);
		Contact contact = new Contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		contactService.saveOneContact(contact); // Save lead in contact
		leadService.deleteOneLeadById(id); // after saving in contact, delete lead
		List<Contact> contacts = contactService.listContacts();
		model.addAttribute("contact", contacts);
		return "contactsList";
	}

//List of All Leads
	@RequestMapping("/leadsList")
	public String lisAllLeads(ModelMap model) {
		List<Lead> leads = leadService.listLeads();
		model.addAttribute("leads", leads);
		return "leadslist";
	}

//After clicking on the ID in List of Leads, Open lead info
	@RequestMapping("/leadInfo")
	public String leadInfo(@RequestParam("id") long id, ModelMap model) {
		Lead lead = leadService.getOneLeadById(id);
		model.addAttribute("lead", lead);
		return "lead_info";
	}

//Go to Search Page
	@RequestMapping("/search")
	public String viewSearchPage() {
		return "search_page";
	}

//After entering the lead id, show lead info
	@RequestMapping("/searchLead")
	public String searchLeadById(@RequestParam("id") long id, ModelMap model) {
		Lead lead = leadService.getOneLeadById(id);
		model.addAttribute("lead", lead);
		return "lead_info";
	}

//Delete lead after clicking on delete button in lead info page
	@RequestMapping("/delete")
	public String deleteOneLead(@RequestParam("id") long id, ModelMap model) {
		leadService.deleteOneLeadById(id);
		model.addAttribute("msg", "Lead Deleted Successfully.!!!");
		List<Lead> leads = leadService.listLeads();
		model.addAttribute("leads", leads);
		return "leadsList";
	}

//Go to update lead page, after clicking on update button in lead info page
	@RequestMapping("/update")
	public String updatePage(@RequestParam("id") long id, ModelMap model) {
		Lead lead = leadService.getOneLeadById(id);
		model.addAttribute("leadUpd", lead);
		return "lead_update";
	}

//Update the Lead info and save in database
	@RequestMapping("/updateLead") // Used DTO Method to update lead details
	public String updateLead(LeadData data, @ModelAttribute("lead") Lead lead, ModelMap model) {
		Lead ld = new Lead();
		ld.setId(data.getId());
		ld.setFirstName(data.getFirstName());
		ld.setLastName(data.getLastName());
		ld.setEmail(data.getEmail());
		ld.setMobile(data.getMobile());
		ld.setSource(data.getSource());
		leadService.saveOneLead(ld);
		model.addAttribute("msg", "Lead Details Successfully Updated.!!");
//After update, show updated lead info
		model.addAttribute("lead", lead);
		return "lead_info";
	}
	
	
	
}
