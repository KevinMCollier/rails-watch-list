import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("Hello from the Navbar controller!")
  }
  updateNavbar() {
    if (window.scrollY >= 10) {
      this.element.classList.add("navbar-white");
    } else {
      this.element.classList.remove("navbar-white");
    }
  }
}
