package com.petease.app.dao.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.petease.app.common.Formatter;
import com.petease.app.domain.User;

public class UserRowMapper implements RowMapper<User>{
	public User mapRow(ResultSet resultSet,int row) throws SQLException
	{
		String userId;
		String password;
		String authType;
		String firstName;
		String lastName;
	    String gender;
	    String birthday;
	    String address;
	    String city;
	    String state;
	    String preferPets;
	    String feedingPets;
	    String petName;
	    String career;
		
		User user;
		
		//Get value from result set of query
		
		userId = resultSet.getString("user_id");
		password = resultSet.getString("password");
		authType = resultSet.getString("auth_type");
		gender = resultSet.getString("gender");
		birthday = Formatter.date2String(resultSet.getDate("DOB"));
		firstName = resultSet.getString("first_name");
		lastName = resultSet.getString("last_name");
		address = resultSet.getString("address");
		city = resultSet.getString("city");
		state = resultSet.getString("state");
		preferPets = resultSet.getString("prefer_pets");
		feedingPets = resultSet.getString("feeding_pets");
		petName = resultSet.getString("pet_name");
		career = resultSet.getString("career");
		
		//Set value to object
		user = new User();
		
		user.setUserId(userId);
		user.setPassword(password);
		user.setAuthType(authType);
		user.setGender(gender);
		user.setBirthday(birthday);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setAddress(address);
		user.setCity(city);
		user.setState(state);
		user.setPreferPets(preferPets);
		user.setFeedingPets(feedingPets);
		user.setPetName(petName);
		user.setCareer(career);
		
		return user;
	}
}
