import { Controller } from 'stimulus'
import StimulusReflex from 'stimulus_reflex'

export default class extends Controller {
  static targets = ["input"]
  connect () {
    StimulusReflex.register(this)
  }

  afterCreate () {
    this.inputTarget.value = ''
  }
}
