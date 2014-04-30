package test

class Persona {
	
	String nombre
	String appelidoPaterno
	String appelidoMaterno
	Estado estado

    static constraints = {
		nombre blank:false
		appelidoPaterno blank:false
		appelidoMaterno blank:false
		estado nullable:false
    }
	
	String toString() {
		"$nombre $appelidoPaterno $appelidoMaterno"
	}
}
