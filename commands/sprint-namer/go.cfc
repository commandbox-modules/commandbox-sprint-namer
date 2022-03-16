component excludeFromHelp=true {

	property name="mockdata" inject="mockData@mockDatacfc";

	function run(){
		var name = mockData.mock( "name" : "words:2", $returnType : "struct" ).name;
		print.line( "Your sprint name is: #name#"  );
	}

}
