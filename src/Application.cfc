component {
	this.mappings["/genesys"] = getDirectoryFromPath(expandPath("../../genesys2/"));

	function onApplicationStart(){
		import "/genesys2";
	}
}