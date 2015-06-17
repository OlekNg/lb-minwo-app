package pl.polsl.lbialojan

class Notebook {
	String name;
	String screenSize;
	String processor;
	String gpu;
	String ram;
	String hdd;

	String toString() {
		StringBuilder sb = new StringBuilder();
		if (name != null) sb.append(name).append(" ");
		if (screenSize != null) sb.append(screenSize).append(" ");
		if (processor != null) sb.append(processor).append(" ");
		if (gpu != null) sb.append(gpu).append(" ");
		if (ram != null) sb.append(ram).append(" ");
		if (hdd != null) sb.append(hdd).append(" ");
		return sb.toString();
	}

	static belongsTo = [manufacturer:Manufacturer]
    static constraints = {
    	name(maxLength:50, blank:false)
    }
}
