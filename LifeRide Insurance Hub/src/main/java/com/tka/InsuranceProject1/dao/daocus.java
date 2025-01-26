package com.tka.InsuranceProject1.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.InsuranceProject1.Entity.Cpolicy;
import com.tka.InsuranceProject1.Entity.Customer;
import com.tka.InsuranceProject1.Entity.VahicalDtails;

@Repository
public class daocus {
	@Autowired
	SessionFactory session;

	public String resiter(Customer customer) {
		try {
			Session openSession = session.openSession();

			Transaction tr = openSession.beginTransaction();
			openSession.save(customer);
			tr.commit();
			String msg = "Account open";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Account open";
			return msg;
		}
	}

	public String policyde(Cpolicy cpolicy) {
		try {
			Session openSession = session.openSession();

			Transaction tr = openSession.beginTransaction();
			openSession.save(cpolicy);
			tr.commit();
			String msg = "Account open";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Account open";
			return msg;
		}

	}

	public Customer findByEmail(String email) {

		try (Session openSession = session.openSession()) {
			Query<Customer> query = openSession.createQuery("From Customer where email = : email", Customer.class);

			query.setParameter("email", email);
			return (query.uniqueResult());
		} catch (

		Exception e) {

			e.printStackTrace();
		}
		return null;
	}

	public void save(Customer customer) {

	}

	public List<Cpolicy> findByCustomerId(int customerId) {
		SessionFactory sessionFactory = null;
		// Obtain the current session
		Session session = sessionFactory.getCurrentSession();

		// Create an HQL query to fetch the policies for a specific customerId
		String hql = "FROM Cpolicy WHERE customer.id = :customerId";
		Query<Cpolicy> query = session.createQuery(hql, Cpolicy.class);
		query.setParameter("customerId", customerId);

		// Execute the query and return the result
		return query.getResultList();
	}

	public List<Customer> disolay() {
		Session op = session.openSession();
		List<Customer> plist = null;
		try {

			Criteria criteria = op.createCriteria(Customer.class);
			plist = criteria.list();

			return plist;
		} catch (Exception e) {
			e.printStackTrace();

			String msg = "something went worng";
			return plist;
		}

	}

	public List<Cpolicy> policy() {
		Session op = session.openSession();
		List<Cpolicy> plist = null;
		try {

			Criteria criteria = op.createCriteria(Cpolicy.class);
			plist = criteria.list();

			return plist;
		} catch (Exception e) {
			e.printStackTrace();

			String msg = "something went worng";
			return plist;
		}
	}

	public String vahicaldtails(VahicalDtails vahicalDtails) {
		try {
			Session openSession = session.openSession();

			Transaction tr = openSession.beginTransaction();
			openSession.save(vahicalDtails);
			tr.commit();
			String msg = "Add details";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "add dtails";
			return msg;
		}
		
	}
public String DeleteCustomerById(int pk) {
	Customer cus=null;
	try {
		Session op = session.openSession();
		Transaction tr = op.beginTransaction();
		cus=op.get(Customer.class, pk);
		op.delete(cus);
		tr.commit();
		String msg="Customer deleted sucsesfuly";
		return msg;
	} catch (Exception e) {
		e.printStackTrace();
		String msg="Customer deleted sucef";
		return msg;
	}
}
	
}