package co.grandcircus.ApiPractice.models.GCInfoModels;

import java.util.List;

public class GCResponse {

	private String organization;
	private List<Rooms> rooms;
	private CEO ceo;
	private List<Languages> languages;
	
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public List<Rooms> getRooms() {
		return rooms;
	}
	public void setRooms(List<Rooms> rooms) {
		this.rooms = rooms;
	}
	public CEO getCeo() {
		return ceo;
	}
	public void setCeo(CEO ceo) {
		this.ceo = ceo;
	}
	public List<Languages> getLanguages() {
		return languages;
	}
	public void setLanguages(List<Languages> languages) {
		this.languages = languages;
	}
	
	
}
