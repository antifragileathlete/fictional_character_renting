// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


//import flatpickr from 'flatpickr'
import "flatpickr/dist/flatpickr.min.css"

import { toggleDateInputs } from '../components/booking';

/* document.addEventListener("turbolinks:load", () => {
  flatpickr("[data-behaviour='flatpickr']", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  })
}) */


flatpickr(".flatpickr", {
  minDate: "today",

  disable: [
    {
        from: "2025-04-01",
        to: "2025-05-01"
    },
    {
        from: "2025-09-01",
        to: "2025-12-01"
    }
]
}) 



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});
