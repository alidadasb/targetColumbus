// Place your Spring DSL code here
beans = {
	customPropertyEditorRegistrar(CustomDateEditorRegistrar)
    rest(grails.plugins.rest.client.RestBuilder)
}
