package com

class Persona implements Serializable{

    String primeNombre
    String apellido
    String direccion1
    String direccion2
    String ciudad
    String estado
    String codigoPostal
    String telefono
    String email



    static constraints = {
        primeNombre(blank:false)
        apellido(blank:false)
        direccion1( blank:false)
        direccion2(blank:false)
        ciudad(blank:false)
        estado(nullable:true)
        codigoPostal(blank:false)
        telefono(blank:false)
        email(blank:false)
    }

    String toString() {
        "${primeNombre} ${apellido}"
    }
}