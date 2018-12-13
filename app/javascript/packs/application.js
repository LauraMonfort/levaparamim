import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

console.log('Hello')

import { bindSweetAlertButtonBookingConfirmation } from '../components/banner';
bindSweetAlertButtonBookingConfirmation();

// import Flatpickr
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css";
flatpickr("#query_delivery_date_");
flatpickr(".flatpickr-field");

document.querySelector('#request_size').addEventListener('click', event => {
  event.currentTarget.style.color = '#000';
})
