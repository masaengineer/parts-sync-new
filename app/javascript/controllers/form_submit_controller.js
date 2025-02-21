import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["buttonText", "spinner"]

  connect() {
    console.log("Form submit controller connected")
  }

  submit(event) {
    console.log("Submit button clicked")
    this.buttonTextTarget.classList.add("hidden")
    this.spinnerTarget.classList.remove("hidden")
  }
}
