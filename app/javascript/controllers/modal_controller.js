import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
	static targets = ["overlay", "content"];
  connect() {
    console.log("Modal controller connected!");
  }

  open() {
    this.overlayTarget.classList.add("show");
    this.contentTarget.classList.add("show");
  }

  close() {
    this.overlayTarget.classList.remove("show");
    this.contentTarget.classList.remove("show");
  }
}
