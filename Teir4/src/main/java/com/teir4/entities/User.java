package com.teir4.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "User")
public class User {
    
  
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id ;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;		
		result = prime * result + id;
		
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		
		if (id != other.id)
			return false;	
		
		return true;
	}

	@Override
	public String toString() {
		return "User [id=" + id 
				+ "]";
	}
	

	public User(int id) {
		super();
		this.id = id;
		
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

}
