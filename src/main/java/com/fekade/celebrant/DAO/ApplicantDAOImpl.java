package com.fekade.celebrant.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fekade.celebrant.model.Applicant;

@Repository
public class ApplicantDAOImpl implements ApplicantDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	Session session;
	
	@Override
	public void createApplicant(Applicant applicant) {
		session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(applicant);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Applicant> getAllApplicant() {
		session=sessionFactory.getCurrentSession();
		List<Applicant> applicant=session.createQuery("From Applicant").getResultList();
		return applicant;
	}

	@Override
	public void deleteApplicant(int id) {
		session=sessionFactory.getCurrentSession();
		Applicant applicant=session.load(Applicant.class, id);
		if(applicant != null) {
			session.delete(applicant);
		}
	}

	@Override
	public void updateApplicant(int id) {
		session=sessionFactory.getCurrentSession();
		Applicant applicant=session.load(Applicant.class, id);
		if(applicant !=null) {
			session.update(applicant);
		}
	}

	@Override
	public Applicant getApplicantId(int id) {
		session=sessionFactory.getCurrentSession();
		Applicant applicant=session.get(Applicant.class, id);
		return applicant;
	}
}
