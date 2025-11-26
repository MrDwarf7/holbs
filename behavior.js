var thumbnailElement = document.getElementById("smart_thumbnail");

document.addEventListener("DOMContentLoaded", function(event) {
  // JavaScript code goes here
  // alert("Hello!")

  thumbnailElement.addEventListener("click", function() {
    thumbnailElement.className = (thumbnailElement.className === "small") ? "" : "small";
  });

});
