package com.crmapp.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.crmapp.dto.ContactData;
import com.crmapp.entities.Contact;
import com.crmapp.services.ContactService;

@Controller
public class ContactController {
	@Autowired
	private ContactService contactService;

//List of All Contacts
	@RequestMapping("/contactsList")
	public String lisAllContacts(ModelMap model) {
		List<Contact> contact = contactService.listContacts();
		model.addAttribute("contact", contact);
		return "contactsList";
	}

//After clicking on the ID or Name in List of Contacts, Open contact info
	@RequestMapping("/contactInfo")
	public String contactInfo(@RequestParam("id") long id, ModelMap model) {
		Contact contact = contactService.getOneContactById(id);
		model.addAttribute("contact", contact);
		return "contact_info";
	}

//Delete contact
	@RequestMapping("/deleteContact")
	public String deleteOneContact(@RequestParam("id") long id, ModelMap model) {
		contactService.deleteOneContactById(id);
		model.addAttribute("msg", "Contact Deleted Successfully.!!!");
		List<Contact> contact = contactService.listContacts();
		model.addAttribute("contact", contact);
		return "contactsList";
	}

//Go to update contact page
	@RequestMapping("/updateContact")
	public String updatePage(@RequestParam("id") long id, ModelMap model) {
		Contact contact = contactService.getOneContactById(id);
		model.addAttribute("contactUpd", contact);
		return "contact_update";
	}

//Update the info and save in database
	@RequestMapping("/updateContactInfo") // Used DTO Method to update lead details
	public String updateContact(ContactData data, @ModelAttribute("contact") Contact contact, ModelMap model) {
		Contact ct = new Contact();
		ct.setId(data.getId());
		ct.setFirstName(data.getFirstName());
		ct.setLastName(data.getLastName());
		ct.setEmail(data.getEmail());
		ct.setMobile(data.getMobile());
		contactService.saveOneContact(ct);
		model.addAttribute("msg", "Contact Details Successfully Updated.!!");
//After update, show updated contact info
		model.addAttribute("contact", contact);
		return "contact_info";
	}

//After entering the contact id in search page, show contact info
	@RequestMapping("/searchContact")
	public String searchContactById(@RequestParam("id") long id, ModelMap model) {
		Contact contact = contactService.getOneContactById(id);
		model.addAttribute("contact", contact);
		return "contact_info";
	}
}
