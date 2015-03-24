component accessors = true {
	property string name;
	property numeric age;

	function init(){
		new StudentTrait(this);
		return this;
	}
}