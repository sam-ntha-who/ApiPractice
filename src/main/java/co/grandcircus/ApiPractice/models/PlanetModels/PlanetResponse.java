package co.grandcircus.ApiPractice.models.PlanetModels;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class PlanetResponse {
	
	private String name;
	private double diameter;
	private List<String> colors;
	@JsonProperty("million-miles-from-sun")
	private MilesFromSun milesFromSun;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getDiameter() {
		return diameter;
	}
	public void setDiameter(double diameter) {
		this.diameter = diameter;
	}
	public List<String> getColors() {
		return colors;
	}
	public void setColors(List<String> colors) {
		this.colors = colors;
	}
	public MilesFromSun getMilesFromSun() {
		return milesFromSun;
	}
	public void setMilesFromSun(MilesFromSun milesFromSun) {
		this.milesFromSun = milesFromSun;
	}
	
	
}
