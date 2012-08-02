/*
Publishes all open FLA files.

@author Rafael Rinaldi (rafaelrinaldi.com)
@since July 31, 2012
*/

var documents = fl.documents;
var document;

if(documents.length == 0) {
	alert("Nothing to be published");
} else {
	publish();
}

function publish() {

	alert("Getting ready to publish " + documents.length + " file" + (documents.length > 1 ? "s" : "") + "...");

	for(var count = 0; count < documents.length; ++count) {
		document = documents[count];
		document.publish();
	}

	alert("All documents have been published!");

}