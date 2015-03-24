component {
	function init(parentObject){
		variables.parentObject = parentObject;
		injectFunctions();

		return parentObject;
	}

	private function injectFunctions(){
		var functions = getInjectableFunctions();
		
		for(var injectFunction in functions){
			variables.parentObject[injectFunction] = this[injectFunction];
		}
	}

	private function getInjectableFunctions(){
		var functions = '';
		var objectFunctions = getMetadata(this).functions;

		for(var objectFunction in objectFunctions){
			if(functionIsNotPrivate(objectFunction) and functionIsNotContructor(objectFunction)){
				functions = listAppend(functions, objectFunction.name);
			}
		}
		return functions;
	}

	private function functionIsNotPrivate(any data){
		if(isDefined("data.access")){
			return compareNoCase(data.access, "private") neq 0;
		}
		return true;
	}

	private function functionIsNotContructor(any data){
		return compareNoCase(data.name, "init") neq 0;
	}
}