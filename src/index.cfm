<cfset bob = new Person()>
<cfset bob.setName("Bob")>
<cfset bob.setAge(12)>

<cfset jesse = new Student()>
<cfset jesse.setName("Jesse")>
<cfset jesse.setAge(18)>
<cfset jesse.setGrade(10)>

<cfoutput>
	<hr>
	Bob<br>
	age: #bob.getAge()#

	<hr>
	Jesse<br>
	age: #jesse.getAge()#
	grade: #jesse.getGrade()#
	<hr>
</cfoutput>

<cfdump var="#bob#">
<cfdump var="#jesse#">

<cfset o = new genesys.services.JSON()>
<cfdump var="#o#">
