import { Controller } from "@hotwired/stimulus"
// import smokeimage from "../../assets/images/icons/Smoke.svg"
// const imgUrl = Rails.application.config.assets.url + 'Smoke.svg'

// Connects to data-controller="insert-alert"
export default class extends Controller {
  static targets = ["container"]

  connect() {
    console.log("hello from stimulus")
    const alert = `<a href="/animals/red-fox/" class="text-decoration-none"><div class="custom-alert"><img src="/Smoke.svg" class="alert-icon"/>Smoke detected</div></a>`
    setTimeout(() => {
      this.addAlert(alert)
    }, 10000);
  }

  addAlert(alertHTML) {
    this.containerTarget.insertAdjacentHTML("beforeend",alertHTML)
  }
}
