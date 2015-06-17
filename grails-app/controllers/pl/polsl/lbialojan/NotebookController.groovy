package pl.polsl.lbialojan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NotebookController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Notebook.list(params), model:[notebookInstanceCount: Notebook.count()]
    }

    def show(Notebook notebookInstance) {
        respond notebookInstance
    }

    def create() {
        respond new Notebook(params)
    }

    @Transactional
    def save(Notebook notebookInstance) {
        if (notebookInstance == null) {
            notFound()
            return
        }

        if (notebookInstance.hasErrors()) {
            respond notebookInstance.errors, view:'create'
            return
        }

        notebookInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'notebook.label', default: 'Notebook'), notebookInstance.id])
                redirect notebookInstance
            }
            '*' { respond notebookInstance, [status: CREATED] }
        }
    }

    def edit(Notebook notebookInstance) {
        respond notebookInstance
    }

    @Transactional
    def update(Notebook notebookInstance) {
        if (notebookInstance == null) {
            notFound()
            return
        }

        if (notebookInstance.hasErrors()) {
            respond notebookInstance.errors, view:'edit'
            return
        }

        notebookInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Notebook.label', default: 'Notebook'), notebookInstance.id])
                redirect notebookInstance
            }
            '*'{ respond notebookInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Notebook notebookInstance) {

        if (notebookInstance == null) {
            notFound()
            return
        }

        notebookInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Notebook.label', default: 'Notebook'), notebookInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'notebook.label', default: 'Notebook'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
