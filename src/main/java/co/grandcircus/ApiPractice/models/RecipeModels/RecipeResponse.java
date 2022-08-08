package co.grandcircus.ApiPractice.models.RecipeModels;

import java.util.List;

public class RecipeResponse {
	
	private String title;
	private int count;
	private List<Recipes> recipes;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<Recipes> getRecipes() {
		return recipes;
	}
	public void setRecipes(List<Recipes> recipes) {
		this.recipes = recipes;
	}
	
}
