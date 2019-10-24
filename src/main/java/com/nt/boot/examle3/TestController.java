package com.nt.boot.examle3;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {

	@RequestMapping(value = "/login")
	public String getEmpDetails(ModelMap model) {
		System.out.println(" Calling Mehtid getEmpDetails");
		return "initialInsideApp";
	}

	@RequestMapping(value = "/addDetails", method = RequestMethod.POST)
	public String submit(@Valid @ModelAttribute("employee") InputData employee, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "error";
		}

		model.addAttribute("name", employee.getPassengerName());
		model.addAttribute("from", employee.getBoardingPoint());
		model.addAttribute("to", employee.getDestination());
		model.addAttribute("date", employee.getJourneyDate());
		model.addAttribute("price", employee.getTicketFare());
		model.addAttribute("mobileNo", employee.getMobileno());

		System.out.println(" Object printing " + employee);
		return "bookingDetails";
	}

}
