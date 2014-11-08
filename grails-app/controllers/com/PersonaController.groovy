package com

class PersonaController {

   def scaffold = true

    def capturaPersonaFlow = {
        inicializa {
            println "inicializa web flow"
            action {
                println "inicializa action"
                Persona persona = new Persona()
                [persona: persona]
            }
            on ("success").to "nombre"
        }

        nombre {
            println "Name gsp"
            on("next"){NombreCommand cmd ->
                if(cmd.hasErrors()) {
                    println "View nombre tiene errores"
                    flow.cmd = cmd
                    return nombre()
                }
            }.to "accion1"
            on("previous").to "nombre"
            on("cancel").to "finish"
        }

        accion1 {
            println "Accion 1"
            action{
                println "step2Action action"
                flow.persona.properties = params
            }
            on("error").to "nombre"
            on(Exception).to "nombre"
            on("success").to "direccion"
        }

        direccion {
            println "Address gsp"
            on("next"){DireccionCommand cmd ->
                if(cmd.hasErrors()) {
                    println "Views direccion contiene errores"
                    flow.cmd = cmd
                    return direccion()

                }
            }.to "accion2"
            on('previous').to('nombre')
            on("cancel").to "finish"
        }

        accion2 {
            println "accion 2"
            action{
                println "accion2"
                flow.persona.properties=params
            }
            on("error").to "direccion"
            on(Exception).to "direccion"
            on("success").to "telefono"
        }

        telefono {
             println "Vista telefono"
             on("next"){TelefonoCommand cmd ->
                 if(cmd.hasErrors()) {
                     println "Vista telefono contiene errores"
                     flow.cmd = cmd
                     return telefono()
                 }
             }.to "accion3"

             on("previous").to "direccion"
             on("cancel").to "finish"
         }

         accion3 {
             println "accion 3"
             action{
                 println "Entro a accion completar"
                 flow.persona.properties=params
                 Persona persona = flow.persona
                 persona.save(flush: true)
                 if (!persona.save()) {
                     flash.message = "No se salvo a la persona"
                     return error()
                 }
             }
             on("success").to "datosFin"
             on("error").to "telefono"
             on(Exception).to "telefono"
         }

        datosFin{
            on('next').to('finish')
            on('previous').to('telefono')
            on('cancel').to('finish')
        }

        finish {
            redirect(controller: 'persona', action: 'index')
        }

    }

    static defaultAction = "capturaPersona"
}


class NombreCommand implements Serializable {
    String primeNombre
    String apellido

    static constraints = {
        importFrom(PersonaController)
    }
}

class DireccionCommand implements Serializable {
    String direccion1
    String direccion2
    String ciudad
    String estado
    String codigoPostal

    static constraints = {
        importFrom(PersonaController)
    }

}

class TelefonoCommand implements Serializable {
    String telefono
    String email

    static constraints = {
       importFrom(PersonaController)
    }

}