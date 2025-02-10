// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Swal from 'sweetalert2';

document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".btn-delete-task").forEach(button => {
    button.addEventListener("click", (event) => {
      event.preventDefault();

      const url = button.getAttribute("href");

      Swal.fire({
        title: "Êtes-vous sûr ?",
        text: "Cette action est irréversible !",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#d33",
        cancelButtonColor: "#3085d6",
        confirmButtonText: "Oui, supprimer !"
      }).then((result) => {
        if (result.isConfirmed) {
          window.location.href = url;
        }
      });
    });
  });
});
