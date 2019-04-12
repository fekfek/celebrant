package com.fekade.celebrant.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.fekade.celebrant.Service.ApplicantService;
import com.fekade.celebrant.model.Applicant;


@Transactional
@Controller
public class ApplicantController {
	
	@Autowired
	private ApplicantService applicantService;
	
	//to show the form to fill info about applicant
	@RequestMapping(value="/apply", method=RequestMethod.GET)
		public String application(Model md) {
			md.addAttribute("anyname", new Applicant() );
			return "newApplication";
	}
	//to submit the filled info about applicant 
	@RequestMapping(value = "/submitapplication", method = RequestMethod.POST)
    public String doApply(Model model, @Validated Applicant applicant, BindingResult result) {

        if (result.hasErrors()) {
            return "newApplication";	
        } else {

        	applicantService.createApplicant(applicant);
            return "redirect:/showapplications";	
        }

    }
	//to show all applications
	@RequestMapping(value = "/showapplications", method = RequestMethod.GET)	
    public String showOffers(Model model) {
        
        List<Applicant> applicants = applicantService.getAllApplicant();
        
        model.addAttribute("myApplicants", applicants );
        
        return "showApplications";	
    }
	//to remove an applicant
	@RequestMapping(value = "/applicant/{applicant.id}/delete")	
    public String doDelete(@PathVariable("applicant.id") int id) {
        
		    applicantService.deleteApplicant(id);
            return "redirect:/showapplications";	
        }
	//to update an applicant
	@RequestMapping(value = "/applicant/{applicant.id}/update", method = RequestMethod.GET)
	public String doUpdate(@PathVariable("applicant.id") int id, Model model) {
		
		model.addAttribute("updateMe",applicantService.getApplicantId(id));
		return "updateApplicant";
	}

}
