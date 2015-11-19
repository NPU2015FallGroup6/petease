//***********************************************
//Validate when the button be clicked 
//***********************************************

//Check length of element
function isProperLength(elemId, length) {
	if(document.getElementById(elemId).value.length>length) {
		return "<div>The length of " + elemId + " is over the limit. Please enter less then "+length+" characters.</div>";
	}
	return "";
}

//Check empty of element
function isEmpty(elemId) {
	if(document.getElementById(elemId).value == "") {
		return "<div>" + elemId + " must be filled.</div>"
	}
}

//Validation of question commit
function questionCommitValidation() {
	var errStr = "";
	//Check length of Question Title
	errStr += isProperLength("Question Title", 100);
	//Check empty of Question Title
	errStr += isEmpty("Question Title");
	//Check length of Question
	errStr += isProperLength("Question", 60000);
	//Check empty of Question
	errStr += isEmpty("Question");
	//Display error message above the button
	document.getElementById("errPlacehold").innerHTML = errStr;
	return errStr == ""?true:false;
}

