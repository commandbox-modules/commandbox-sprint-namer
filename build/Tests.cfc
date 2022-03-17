/**
 * This task is used to execute all of your test suite.
 * No need to do try/catch we will do that for you.  Just write all the commands, assertions you need.
 */
component{

	/**
	 * Run my test suites
	 */
	function run(){
		var name = command( "sprint-namer go" ).run( returnOutput : true );
		if( listLen( name, " " ) != 2 ){
			throw( type : "AssertException", message = "The name returned (#arguments.name#) is not composed of 2 words" );
		} else {
			print.greenLine( "√ Name produced: #name#" )
		}
	}
}
