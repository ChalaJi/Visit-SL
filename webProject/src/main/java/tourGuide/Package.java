package tourGuide;

public class Package extends Trips {
	private String duration;
	
	public Package(int packageNumber, String name, String duration, String province, String destinations) {
		super(packageNumber,name,province,destinations);
		this.duration = duration;	
	}
	
	public String getDuration() {
		return duration;
	}
	
}
