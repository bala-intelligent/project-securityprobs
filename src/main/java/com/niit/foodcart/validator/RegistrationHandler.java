package com.niit.foodcart.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

//import com.niit.foodcart.dao.impl.RegistrationDao;
import com.niit.foodcart.model.Registration;
import com.niit.foodcart.service.impl.RegistrationService;
@Component
public class RegistrationHandler {
	
	public Registration initFlow(){
			return new Registration();
		}
	@Autowired(required=true) 
	RegistrationService registrationservice;
	 
		public String validateDetails(Registration registration,MessageContext messageContext){
			String status = "success";
			
			if(registration.getUsername().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"username").defaultText("Username cannot be Empty").build());
				status = "failure";
			}
			if(registration.getEmail().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"email").defaultText("Email cannot be Empty").build());
				status = "failure";
			}
			if(registration.getPhonenumber().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"phonenumber").defaultText("phone number cannot be Empty").build());
				status = "failure";
			}
			if(registration.getPassword().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"password").defaultText(" cannot be Empty").build());
				status = "failure";
			}
			if(registration.getConfirmpassword().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"confirmpassword").defaultText(" cannot be Empty").build());
				status = "failure";
			}
			if(status.equals("success"))
			{

				registrationservice.saveOrUpdate( registration); 
						// TODO Auto-generated method stub			
			}
			
			return status;
			
		}
		
		
}
