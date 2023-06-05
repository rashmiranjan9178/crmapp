package com.crmapp.services;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crmapp.entities.Lead;
import com.crmapp.repositories.LeadRepository;
@Service
public class LeadServiceImpl implements LeadService {
@Autowired
private LeadRepository leadRepo;
@Override
public void saveOneLead(Lead lead) {
leadRepo.save(lead);
}
@Override
public Lead getOneLeadById(long id) {
Optional<Lead> findById = leadRepo.findById(id);
Lead lead = findById.get();
return lead;
}
@Override
public void deleteOneLeadById(long id) {
leadRepo.deleteById(id);
}
@Override
public List<Lead> listLeads() {
List<Lead> leads = leadRepo.findAll();
return leads;
}

}