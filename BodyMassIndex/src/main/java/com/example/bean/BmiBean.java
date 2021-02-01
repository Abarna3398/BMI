package com.example.bean;


public class BmiBean {
	

	
		//private long id;
		private String name;
		public String gender;
		private String phno;
		private String email;
		private String password;
		

		public BmiBean()
		{}
		
		public BmiBean(String name,String gender,String email, String phno, String password) {
			super();
			//this.id = id;
			this.name = name;
			this.gender = gender;
			this.email = email;
			this.phno = phno;
			this.password = password;
			
		}
		
		
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}
		
		
		public String getPhno() {
			return phno;
		}

		public void setPhno(String phno) {
			this.phno = phno;
		}
		

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		
		



}
