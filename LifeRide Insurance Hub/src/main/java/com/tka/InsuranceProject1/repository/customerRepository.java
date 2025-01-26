package com.tka.InsuranceProject1.repository;




import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tka.InsuranceProject1.Entity.Customer;
@Repository
public interface customerRepository extends JpaRepository<Customer, Integer>{

	

	
	

}
