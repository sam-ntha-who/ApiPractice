package co.grandcircus.ApiPractice.models.BlogModels;
import java.util.List;


public class BlogResponse {
	
	private String title;
	private String language;
	private List<Posts> posts;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public List<Posts> getPosts() {
		return posts;
	}
	public void setPosts(List<Posts> posts) {
		this.posts = posts;
	}
	
}
