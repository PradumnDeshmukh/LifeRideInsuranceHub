package com.tka.InsuranceProject1.service;

import java.util.List;
//import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


//import com.tka.InsuranceProject1.DTO.CustomerDTO;
//import com.tka.InsuranceProject1.DTO.PolicyDTO;
import com.tka.InsuranceProject1.Entity.Cpolicy;
import com.tka.InsuranceProject1.Entity.Customer;
import com.tka.InsuranceProject1.Entity.VahicalDtails;
import com.tka.InsuranceProject1.dao.daocus;
import com.tka.InsuranceProject1.repository.CpolicyRepository;

import com.tka.InsuranceProject1.repository.customerRepository;



@Service
public class servicecus {
	@Autowired
	daocus dao;
	@Autowired
    private CpolicyRepository cpolicyRepository;
	
	
	@Autowired
    private customerRepository customerRepository;

	public String raistercus(Customer customer) {
		return dao.resiter(customer);
	}

	public String policy(Cpolicy cpolicy) {
		return dao.policyde(cpolicy);
	}

	public Customer findByUsername(String fristName) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean authenticationUser(String email, String password) {
		Customer user = dao.findByEmail(email);
		if (user != null && user.getPassword().equals(password)) {
			return true;
		}
		return false;
	}

	public Customer findCustomerByEmail(String email) {

		return dao.findByEmail(email);
	}

//	public List<Cpolicy> getPoliciesByCustomerId(int customerId) {
//		System.out.println(" we are find the customer");
//		return dao.findByCustomerId(customerId);
//	}

	public List<Customer> displayCustomer() {
		List<Customer>plist =dao.disolay();
		return plist;
	}

//	 public CustomerDTO getCustomerById(Long customer) {
//	        Customer customer1 = null;
//			try {
//				customer1 = customerRepository.findById(customer1)
//				        .orElseThrow(() -> new RuntimeException("Customer not found"));
//			} catch (RuntimeException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//	        // Convert to DTO
//	        CustomerDTO customerDTO = new CustomerDTO();
//	        customerDTO.setFirstName(customer1.getFirstName());
//	        customerDTO.setLastName(customer1.getLastName());
//	        customerDTO.setPolicies(customer1.getPolicies().stream().map(policy -> {
//	            PolicyDTO policyDTO = new PolicyDTO();
//	            policyDTO.setFullName(policy.getFullName());
//	            policyDTO.setAddress(policy.getAddress());
//	            return policyDTO;
//	        }).collect(Collectors.toList()));
//
//	        return customerDTO;
//	    }

	 public List<Cpolicy> displayCpolicy() {
		 List<Cpolicy>plist =dao.policy();
		 return plist;
		 
	    }
//	 public List<Customer> displayCustomer1() {
//	        return customerRepository.findAll();
//	    }


//	 public List<Customer> getAllCustomers() {
//        return customerRepository.findAll();
//    }

//	 public List<Customer> display() {
//			List<Customer> plist = dao.displaly();
//			return plist;
//		}

	// Fetch customer by ID
	    public Customer getCustomerById(int id) {
	        return customerRepository.findById(id).orElse(null);
	    }

	    // Fetch policies by customer ID
	    public List<Cpolicy> getPoliciesByCustomerId(int customerId) {
	        return cpolicyRepository.findByCustomerId(customerId);
	    }

		public String vahicaldetails(VahicalDtails vahicalDtails) {
			return dao.vahicaldtails(vahicalDtails);
			
			
		}

	   public String DeleteById(int pk) {
		   String res=dao.DeleteCustomerById(pk);
		return res;
	   }
}