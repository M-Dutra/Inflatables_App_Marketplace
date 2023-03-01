import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["startTime", "endTime"]

  connect() {
    console.log("flatpickr connected")

    flatpickr(this.startTimeTarget, {
      altInput: true,
      enableTime: false,
      ateFormat: "d-m-Y",
      plugins: [new rangePlugin({ input: "#end_time"})]
    })

    flatpickr(this.endTimeTarget, {
      altInput: true,
      enableTime: false,
      dateFormat: "d-m-Y",
    })
  }
}
