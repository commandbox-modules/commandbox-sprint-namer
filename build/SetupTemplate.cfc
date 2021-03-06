/**
 * Setup the Module Template according to your needs
 */
component {

	/**
	 * Constructor
	 */
	function init(){
		// Setup Pathing
		variables.cwd = getCWD().reReplace( "\.$", "" );
		return this;
	}

	/**
	 * Setup the module template
	 */
	function run(){
		var moduleName = ask( "What is the human readable name of your module?" );
		if ( !len( moduleName ) ) {
			error( "Module Name is required" );
		}
		var moduleSlug = ask( "What is the slug for your module?" );
		if ( !len( moduleSlug ) ) {
			error( "Module Slug is required" );
		}
		var moduleDescription = ask( "Short description of your module?" );
		if ( !len( moduleDescription ) ) {
			error( "Module Description is required" );
		}

		command( "tokenReplace" )
			.params(
				path        = "/#variables.cwd#/**",
				token       = "CommandBox Sprint Namer",
				replacement = moduleName
			)
			.run();

		command( "tokenReplace" )
			.params(
				path        = "/#variables.cwd#/**",
				token       = "commandbox-sprint-namer",
				replacement = moduleSlug
			)
			.run();

		command( "tokenReplace" )
			.params(
				path        = "/#variables.cwd#/**",
				token       = "A handy command to generate sprint names",
				replacement = moduleDescription
			)
			.run();

		// Finalize Message
		print
			.line()
			.boldMagentaLine( "Your module template is now ready for development! Go rock it!" )
			.toConsole();
	}

}
