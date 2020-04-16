component output="false" mixin="base" {

	function init() {
		this.version="1.0.0";

		return this;
	}
	
	/**
 	* adds custom integer columns `createdBy`, `updatedBy` and `deletedBy` for tracking records modifications
 	*
 	* [section: Migrator]
 	* [category: Table Definition Functions]
 	*/
	public any function trackModifications() {
		integer(columnNames='createdBy,updatedBy', null=false);
		integer(columnName='deletedBy', null=true);
		return this;
	}
}