import { Controller } from "@hotwired/stimulus"
// import smokeimage from "../../assets/images/icons/Smoke.svg"

// Connects to data-controller="insert-alert"
export default class extends Controller {
  static targets = ["container"]

  connect() {
    console.log("hello from stimulus")
    const alert = `<div class="custom-alert">Smoke detected</div>`
    setTimeout(() => {
      this.addAlert(alert)
    }, 5000);
  }

  addAlert(alertHTML) {
    this.containerTarget.insertAdjacentHTML("beforeend",alertHTML)
  }
}
