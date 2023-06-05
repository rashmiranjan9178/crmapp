package com.crmapp.services;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crmapp.entities.Contact;
import com.crmapp.repositories.ContactRepository;
@Service
public class ContactServiceImpl implements ContactService {
@Autowired
private ContactRepository contactRepo;
@Override
public void saveOneContact(Contact contact) {
contactRepo.save(contact);
}
@Override
public List<Contact> listContacts() {
List<Contact> contacts = contactRepo.findAll();
return contacts;
}
@Override
public Contact getOneContactById(long id) {
Optional<Contact> findById = contactRepo.findById(id);
Contact contact = findById.get();
return contact;
}
@Override
public void deleteOneContactById(long id) {
contactRepo.deleteById(id);
}
}