package tourGuide;

public class Trips {
	private int packageNumber;
	private String name;
	private String province;
	private String destinations;
	
	public Trips(int packageNumber, String name, String province, String destinations) {
		this.packageNumber = packageNumber;
		this.name = name;
		this.province = province;
		this.destinations = destinations;
	}
	public int getPackageNumber() {
		return packageNumber;
	}
	public String getName() {
		return name;
	}
	public String getProvince() {
		return province;
	}
	public String getDestinations() {
		return destinations;
	}
}
