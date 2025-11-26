
document.addEventListener("DOMContentLoaded", function(event) {
  // JavaScript code goes here
  // alert("Hello!")
  var thumbnailElement = document.getElementById("smart_thumbnail");

   thumbnailElement.addEventListener("click", function() {
       if (thumbnailElement.className === "small") {
           thumbnailElement.className = "";
       } else {
           thumbnailElement.className = "small";
       }
   });
});
