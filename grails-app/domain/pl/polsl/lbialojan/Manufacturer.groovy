package pl.polsl.lbialojan

class Manufacturer {
	String name;

	String toString() {
		return name;
	}

	static hasMany = [notebooks:Notebook]
    static constraints = {
    	name(maxLength:50, blank:false)
    }
}
