package com.niit.foodcart.validator;

import org.springframework.validation.Errors;

import com.niit.foodcart.model.FileUpload;

public class FileUploadValidator {

	public boolean supports(Class clazz) {
		//just validate the FileUpload instances
		return FileUpload.class.isAssignableFrom(clazz);
	}
	public void validate(Object target, Errors errors) {

		FileUpload file = (FileUpload)target;

		if(file.getFile().getSize()==0){
			errors.rejectValue("file", "required.fileUpload");
		}
	}
}
