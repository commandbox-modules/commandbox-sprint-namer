component excludeFromHelp=true {

	property name="mockdata" inject="mockData@mockDatacfc";

	function run(){
		print.line(
			ucFirst( mockData.mock( "name" : "words:2", $returnType : "struct" ).name, true )
		);
	}

}
