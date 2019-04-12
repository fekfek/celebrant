package com.fekade.celebrant.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fekade.celebrant.DAO.ApplicantDAO;
import com.fekade.celebrant.model.Applicant;

@Service
public class ApplicantServiceImpl implements ApplicantService {
	@Autowired
	private ApplicantDAO applicantDAO;

	@Override
	@Transactional
	public void createApplicant(Applicant applicant) {
		applicantDAO.createApplicant(applicant);

	}

	@Override
	public List<Applicant> getAllApplicant() {
		
		return applicantDAO.getAllApplicant();
	}

	@Override
	@Transactional
	public void deleteApplicant(int id) {
		applicantDAO.deleteApplicant(id);

	}

	@Override
	@Transactional
	public void updateApplicant(int id) {
		applicantDAO.updateApplicant(id);

	}

	@Override
	@Transactional
	public Applicant getApplicantId(int id) {
		
		return applicantDAO.getApplicantId(id);
	}

}
