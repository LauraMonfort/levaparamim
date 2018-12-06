import swal from 'sweetalert';

function bindSweetAlertButtonBookingConfirmation() {
  const swalButton = document.getElementById('sweet-alert-booking-confirmation');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Your item is booked",
        text: "Congratulation!",
        icon: "success",
        // button: ["ok","Go to dashboard"],
      });
    });
  }
}

export { bindSweetAlertButtonBookingConfirmation };
