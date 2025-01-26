package com.tka.InsuranceProject1.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tka.InsuranceProject1.Entity.Cpolicy;
@Repository
public interface CpolicyRepository  extends JpaRepository<Cpolicy, Integer> {
	  List<Cpolicy> findByCustomerId(int customerId);

	
}
