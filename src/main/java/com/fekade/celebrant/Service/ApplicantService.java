package com.fekade.celebrant.Service;

import java.util.List;

import com.fekade.celebrant.model.Applicant;

public interface ApplicantService {
	
	public void createApplicant(Applicant applicant);

	public List<Applicant> getAllApplicant();
	
	public void deleteApplicant(int id);
	
	public void updateApplicant(int id);
	
	public Applicant getApplicantId(int id);

}
