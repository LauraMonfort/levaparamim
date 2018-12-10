import swal from 'sweetalert';

function bindSweetAlertButtonBookingConfirmation() {
  const swalButtons = document.querySelectorAll('.sweet-alert-booking-confirmation');
  if (swalButtons) { // protect other pages
    swalButtons.forEach(button => {
      button.addEventListener('click', () => {
        swal({
          title: "Delivery request sent!",
          text: "The sender has been notified. Wait for his confirmation! Check the status on My deliveries",
          icon: "success",
          // button: ["ok","Go to dashboard"],
        });
      });
    })

  }
}

export { bindSweetAlertButtonBookingConfirmation };
