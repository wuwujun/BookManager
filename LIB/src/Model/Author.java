package Model;

public class Author {
	private String country;
	private String name;
	private String author_id;
	private Integer age;
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	
	public Author() {
		
	}
	public Author(String country, String name, String author_id, Integer age) {
		super();
		this.country = country;
		this.name = name;
		this.author_id = author_id;
		this.age = age;
	}
	
	
	
	
}
