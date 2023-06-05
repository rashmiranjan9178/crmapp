package com.crmapp.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import com.crmapp.entities.Contact;
public interface ContactRepository extends JpaRepository<Contact, Long> {
}
