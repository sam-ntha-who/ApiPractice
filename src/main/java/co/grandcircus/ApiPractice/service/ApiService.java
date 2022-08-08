package co.grandcircus.ApiPractice.service;



import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.ApiPractice.models.BlogModels.BlogResponse;
import co.grandcircus.ApiPractice.models.CSModels.CSResponse;
import co.grandcircus.ApiPractice.models.GCInfoModels.GCResponse;
import co.grandcircus.ApiPractice.models.PlanetModels.PlanetResponse;
import co.grandcircus.ApiPractice.models.RecipeModels.RecipeResponse;

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

	public GCResponse getGrandCircusInfo() {
		String url = "https://grandcircusco.github.io/demo-apis/grand-circus.json";
		GCResponse response = request.getForObject(url, GCResponse.class);
		return response;
	}
	
	public BlogResponse getBlogInfo() {
		String url = "https://grandcircusco.github.io/demo-apis/blog-posts.json";
		BlogResponse response = request.getForObject(url, BlogResponse.class);
		return response;
	}
	
	public RecipeResponse getRecipes() {
		String url = "https://grandcircusco.github.io/demo-apis/recipes.json";
		RecipeResponse response = request.getForObject(url, RecipeResponse.class);
		return response;
	}
	
}
