package com.crmapp.services;
import java.util.List;
import com.crmapp.entities.Contact;
public interface ContactService {
public void saveOneContact (Contact contact);
public List<Contact> listContacts();
public Contact getOneContactById(long id);
public void deleteOneContactById(long id);
}