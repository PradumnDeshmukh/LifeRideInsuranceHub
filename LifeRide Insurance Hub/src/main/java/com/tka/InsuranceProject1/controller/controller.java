package com.tka.InsuranceProject1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.tka.InsuranceProject1.Entity.Cpolicy;
import com.tka.InsuranceProject1.Entity.Customer;
import com.tka.InsuranceProject1.Entity.VahicalDtails;
import com.tka.InsuranceProject1.service.servicecus;

@Controller
public class controller {
	@Autowired
	servicecus service;

	@GetMapping("/ragister")
	public String account() {

		return "ragister";

	}

	@GetMapping("/login-page")
	public String login(Model model) {
		model.addAttribute("message", "");
		return "login";

	}

	@PostMapping("/insert")
	public String SaveAccount(@ModelAttribute Customer customer) {

		String msg = service.raistercus(customer);
		System.out.println(customer);
		return "ragister";
	}

	@GetMapping("/policy")
	public String details() {

		return "policy";

	}

	@PostMapping("/fill")
	public String details(@ModelAttribute Cpolicy cpolicy) {

		String msg = service.policy(cpolicy);

		System.out.println(cpolicy);
		return "policy";
	}

	@PostMapping("/login-page")
	public String loginSubmit(@RequestParam String email, @RequestParam String password, Model model) {
		boolean isauth = service.authenticationUser(email, password);

		if (isauth) {
			return "redirect:/dashboard";

		} else {
			model.addAttribute("message", "invalid data");
			return "login";
		}

	}

	@GetMapping("/dashboard")
	public String dashboard(Model model) {

		model.addAttribute("message", "welcome");
		return "dashboard";

	}

//	@GetMapping("/{customerId}/policies")
//	public List<Cpolicy> getPoliciesByCustomerId(@PathVariable int customerId) {
//		System.out.println("fisoifjljsodfjsod");
//		return service.getPoliciesByCustomerId(customerId);
//	}
//	@GetMapping("/display")
//	public String displayallproduct(Model model) {
//		System.out.println("we are in display all");
//		List<Customer> list = service.displayCustomer();
//		System.err.println(list);
//		model.addAttribute("Customer", list);
//		return "display";
//	}
	@GetMapping("/car")
	public String car() {

		return "car";

	}

	@PostMapping("/vahical")
	public String CarDatails(@ModelAttribute VahicalDtails VahicalDtails) {
		System.out.println("we are in post method");
		String msg = service.vahicaldetails(VahicalDtails);
		System.out.println(VahicalDtails);
		return "car";
	}

	@GetMapping("/display")
	public String displayAll(Model model) {

		// Fetching all customers
		List<Customer> customerList = service.displayCustomer();
		System.err.println("Customer: " + customerList);

		// Fetching all policies
		List<Cpolicy> policyList = service.displayCpolicy();
		System.err.println("Cpolicy: " + policyList);

		// Adding both lists to the model
		model.addAttribute("Customer", customerList);
		model.addAttribute("Policy", policyList);

		return "display";
	}
//	@GetMapping("/display")
//	public String displayAll1(Model model) {
//	    List<Customer> customers = service.displayCustomer();
//	    model.addAttribute("customers", customers);
//	    
//	    return "display";
//	}
//	@GetMapping("/display")
//	public String displayallproduct(Model model) {
//		System.out.println("we are in display all");
//		List<Customer> list = service.display();
//		System.err.println(list);
//		model.addAttribute("Customer", list);
//		return "display";
//}
//	find by Id

//	@GetMapping("/customer/{id}")
//    public String getCustomerDetails(@PathVariable int id, Model model) {
//        // Fetch customer data
//        Customer customer = service.getCustomerById(id);
//
//        if (customer == null) {
//            model.addAttribute("error", "Customer not found");
//            return "error";
//        }
//
//        // Fetch related policies
//        List<Cpolicy> policies = service.getPoliciesByCustomerId(id);
//
//        // Add data to the model
//        model.addAttribute("customer", customer);
//        model.addAttribute("policies", policies);
//
//        return "redirect:customer"; // Return the view name
//    }
//	@GetMapping("/customer")
//	public String form() {
//
//		return "customer";
//
//	}

	@GetMapping("/findCustomer")
	public String findCustomer(@RequestParam("id") int id, Model model) {
		Customer customer = service.getCustomerById(id);
		if (customer != null) {
			model.addAttribute("customer", customer);
			return "customerDetails";
		} else {
			model.addAttribute("message", "Customer with ID " + id + " not found.");
			return "errorPage";
		}
	}

	@GetMapping("/searchCustomer")
	public String searchCustomerPage() {
		return "searchCustomer";
	}
 @GetMapping("/deletebyid")
 public String deletecustomerbyid(@RequestParam("id")int pk) {
	 String res=service.DeleteById(pk);
	 System.out.println(res);
	 return "redirect:/display";
 }
}