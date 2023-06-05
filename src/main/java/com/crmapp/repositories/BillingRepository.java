package com.crmapp.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import com.crmapp.entities.Billing;
public interface BillingRepository extends JpaRepository<Billing, Long> {
}