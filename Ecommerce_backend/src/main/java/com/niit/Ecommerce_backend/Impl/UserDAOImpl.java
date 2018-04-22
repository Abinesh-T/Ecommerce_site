package com.niit.Ecommerce_backend.Impl;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.niit.Ecommerce_backend.DAO.UserDAO;
import com.niit.Ecommerce_backend.Model.UserModel;



@Repository
public class UserDAOImpl implements UserDAO
{

	 @Autowired
		private SessionFactory sessionFactory;
	 public void setSessionFactory(SessionFactory sf){
			this.sessionFactory = sf;
		}
	
	public void addUser(UserModel u) {
		Session s=sessionFactory.openSession();
					s.beginTransaction();
					s.save(u);
					s.getTransaction().commit();
					s.close();
		
	}

	public void getId(int id) {
		
	}

	public void update(UserModel u) {
		
	}

	public void deleteById(int id) {
		
	}

	public ArrayList<UserModel> getAll() {
		return null;
	}

}
