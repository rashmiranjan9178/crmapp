package com.crmapp.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import com.crmapp.entities.Lead;
public interface LeadRepository extends JpaRepository<Lead, Long> {
}