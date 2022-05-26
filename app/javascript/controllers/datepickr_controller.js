import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
// Connects to data-controller="datepickr"

export default class extends Controller {
  static values = {
    availability: Array
  }
  connect() {
    console.log(this.availabilityValue)
    flatpickr(".datepicker", {
      dateFormat: "Y-m-d",
      disable: this.availabilityValue
  })
  }
}
