package co.grandcircus.ApiPractice.service;



import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.ApiPractice.models.CSModels.CSResponse;
import co.grandcircus.ApiPractice.models.PlanetModels.PlanetResponse;

@Service
public class ApiService {

	private RestTemplate request = new RestTemplate();
	
	public PlanetResponse[] getPlanetInfo() {
		String url = "https://grandcircusco.github.io/demo-apis/planets.json";
		PlanetResponse[] response = request.getForObject(url, PlanetResponse[].class);
		return response;
	}
	
	public CSResponse getCSHallofFame() {
		String url = "https://grandcircusco.github.io/demo-apis/computer-science-hall-of-fame.json";
		CSResponse response = request.getForObject(url, CSResponse.class);
		return response;
	}
	
}