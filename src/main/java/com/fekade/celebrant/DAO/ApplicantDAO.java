package com.fekade.celebrant.DAO;

import java.util.List;

import com.fekade.celebrant.model.Applicant;

public interface ApplicantDAO {
	
	public void createApplicant(Applicant applicant);

	public List<Applicant> getAllApplicant();
	
	public void deleteApplicant(int id);
	
	public void updateApplicant(int id);
	
	public Applicant getApplicantId(int id);


}
