package ch06;

//빈즈 : 테이블명+Bean

public class TeamBean {

	//선언된 컬럼을 private 선언한다.
	private int num;
	private String name;
	private String city;
	private int age;
	private String team;
	
	//getter & setter 생성
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
}
