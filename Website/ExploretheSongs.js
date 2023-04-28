var dropdowns = document.getElementsByClassName("dropdown");
for (var i = 0; i < dropdowns.length; i++) {
  var dropdown = dropdowns[i];
  var dropbtn = dropdown.getElementsByClassName("dropbtn")[0];
  dropbtn.addEventListener("click", function() {
    this.parentElement.getElementsByClassName("dropdown-content")[0].classList.toggle("show");
  });
  dropbtn.addEventListener("mouseover", function() {
    this.parentElement.getElementsByClassName("dropdown-content")[0].style.display = "block";
  });
  dropbtn.addEventListener("mouseout", function() {
    this.parentElement.getElementsByClassName("dropdown-content")[0].style.display = "none";
  });
}
