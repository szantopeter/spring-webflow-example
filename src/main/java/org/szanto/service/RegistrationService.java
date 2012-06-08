/**
 * 
 */
package org.szanto.service;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.szanto.model.User;

/**
 * @author pszanto
 *  
 */

@Service("registrationService")
public class RegistrationService {
	
	List<User> userStore = new LinkedList<User>();

	private int age(Date date) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);
		
		Calendar now = new GregorianCalendar();
		int res = now.get(Calendar.YEAR) - cal.get(Calendar.YEAR);
		if ((cal.get(Calendar.MONTH) > now.get(Calendar.MONTH))
				|| (cal.get(Calendar.MONTH) == now.get(Calendar.MONTH) && cal
						.get(Calendar.DAY_OF_MONTH) > now
						.get(Calendar.DAY_OF_MONTH))) {
			res--;
		}
		return res;
	}
	

	public boolean isUserAdult(User user) {
		if (age(user.getDob()) >= 18) {
			return true;
		}
		return false;
	}

	public boolean isUserChild(User user) {
		if (age(user.getDob()) < 14) {
			return true;
		}
		return false;
	}
	

	public boolean isUserTeen(User user) {
		int age = age(user.getDob());
		if (age < 18 && age >= 14) {
			return true;
		}
		return false;
	}
	
	public void storeUser(User user) {
		userStore.add(user);
	}
	
	public String isEmailAvailible(String emailAddress) {
		
		for (User user : userStore) {
			if (emailAddress.equals(user.getEmailAddress())) {
				return "<font color=\"red\">Email address is taken</font>";
			}
		}
		
		return "<font color=\"green\">Email address is available</font>";
	}
	
	
	
}
