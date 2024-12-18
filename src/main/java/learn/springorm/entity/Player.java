package learn.springorm.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Player {
	
	@Id
	int id;
	String name;
	String club;
	String country;
	
	
	public Player() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Player(int id, String name, String club, String country) {
		super();
		this.id = id;
		this.name = name;
		this.club = club;
		this.country = country;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
	public String toString() {
		return "Player [id=" + id + ", name=" + name + ", club=" + club + ", country=" + country + "]";
	}
	
	
}
