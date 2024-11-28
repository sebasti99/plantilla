document.getElementById('contactForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita el envío del formulario

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const message = document.getElementById('message').value;

    // Validación básica
    if (!name || !email || !password || !message) {
        alert('Por favor, completa todos los campos.');
        return;
    }

    // Muestra alerta de confirmación
    alert(`Gracias por tu mensaje, ${name}!`);

    // Limpia el formulario
    document.getElementById('contactForm').reset();
}); 