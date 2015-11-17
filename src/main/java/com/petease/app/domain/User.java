package com.petease.app.domain;
public class User {
	
	//class member
	private String userId;
	private String password;
	private String authType;
	private String firstName;
	private String lastName;
    private String gender;
    private String birthday;
    private String location;
    private String preferPets;
    private String feedingPets;
    private String petName;
    private String career;
	
	//constructor
	public User(){
		this.userId = "";
		this.password = "";
		this.authType = "";
		this.firstName = "";
		this.lastName = "";
		this.gender = "";
		this.birthday = "";
		this.location = "";
		this.preferPets = "";
		this.feedingPets = "";
		this.petName = "";
		this.career = "";
	}
	
	//setter
    public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserId() {
		return this.userId;
	}
    public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return this.password;
	}
    public void setAuthType(String authType) {
		this.authType = authType;
	}
	public String getAuthType() {
		return this.authType;
	}
    public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getfirstName() {
		return this.firstName;
	}
    public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getLastName() {
		return this.lastName;
	}
    public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGender() {
		return this.gender;
	}
    public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getBirthday() {
		return this.birthday;
	}
    public void setLocation(String location) {
		this.location = location;
	}
	public String getLocation() {
		return this.location;
	}
    public void setPreferPets(String preferPets) {
		this.preferPets = preferPets;
	}
	public String getPreferPtes() {
		return this.preferPets;
	}
    public void setFeedingPets(String feedingPets) {
		this.feedingPets = authType;
	}
	public String getFeedingPets() {
		return this.feedingPets;
	}
    public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetName() {
		return this.petName;
	}
    public void setCareer(String career) {
		this.career = career;
	}
	public String getCareer() {
		return this.career;
	}
	
	//toString
	@Override
	public String toString() {
		return "userId = " + this.userId +
			   ", password = " + this.password +
			   ", authType = " + this.authType +
               ", firstName = " + this.firstName +
               ", lastName = " + this.lastName +
               ", gender = " + this.gender +
               ", birthday = " + this.birthday +
               ", location = " + this.location +
               ", preferPets = " + this.preferPets +
               ", feedingPets = " + this.feedingPets +
               ", petName = " + this.petName +
               ", career = " + this.career ;
	}
	
	//equals
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof User)) {
			return false;
		}
		User userObj = (User) obj;
		return (this.userId.equals(userObj.userId)) &&
		       (this.password.equals(userObj.password)) &&
		       (this.authType.equals(userObj.authType)) &&
               (this.firstName.equals(userObj.firstName)) &&
               (this.lastName.equals(userObj.lastName)) &&
               (this.gender.equals(userObj.gender)) &&
               (this.birthday.equals(userObj.birthday)) &&
               (this.location.equals(userObj.location)) &&
               (this.preferPets.equals(userObj.preferPets)) &&
               (this.feedingPets.equals(userObj.feedingPets)) &&
               (this.petName.equals(userObj.petName)) &&
               (this.career.equals(userObj.career)) ;
	}
	
	//clone
	@Override
	public User clone() {
		User userObj = new User();
		userObj.userId = new String(this.userId);
        userObj.password = new String(this.password);
        userObj.authType = new String(this.authType);
        userObj.firstName = new String(this.firstName);
        userObj.lastName = new String(this.lastName);
        userObj.gender =new String(this.gender);
        userObj.birthday = new String(this.birthday);
        userObj.location = new String(this.location);
        userObj.preferPets = new String(this.preferPets);
        userObj.feedingPets = new String(this.feedingPets);
        userObj.petName = new String(this.petName);
        userObj.career =new String(this.career);
		
		return userObj;
	}
}
