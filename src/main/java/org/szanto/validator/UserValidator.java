/**
 * 
 */
package org.szanto.validator;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.binding.validation.ValidationContext;
import org.springframework.stereotype.Component;
import org.szanto.model.User;

/**
 * @author pszanto
 * 
 */
@Component
public class UserValidator {

	public void validateRegistrationPage1(User user, ValidationContext context) {
		MessageContext messageContext = context.getMessageContext();

		if (user.getFirstName() != null && user.getFirstName().equalsIgnoreCase("Peter")) {
			
			messageContext.addMessage(new MessageBuilder().error().source(
			"firstName").defaultText(
			"Peter? Peter is me!").build());
			
		}
	}

}
