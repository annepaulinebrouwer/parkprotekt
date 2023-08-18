import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-alert"
export default class extends Controller {
  static targets = ["container"]

  connect() {
    console.log("hello from stimulus")
    console.log(this.containerTarget)
  }
}
