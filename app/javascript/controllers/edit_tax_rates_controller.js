import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-tax-rates"
export default class extends Controller {
  static targets = [ 'ctax10', 'ctax8', 'ctax0', 'afterTax10' ]

  connect() {
    // console.log(this.element)
    console.log(this.ctax0Target)
  }

  enableDisable(check) {
    if (check) {
      console.log('tax 8')
    } else {
      console.log('not tax 8')
    }
  }

  send() {
    const check10 = this.ctax10Target.querySelector(':first-child .form-check :nth-child(2)').checked
    const check8 = this.ctax8Target.querySelector(':first-child .form-check :nth-child(2)').checked
    const check0 = this.ctax0Target.querySelector(':first-child .form-check :nth-child(2)').checked

    this.enableDisable(check8)


  }


}
