const form = document.querySelector('#login-form');

// Validate form đăng nhập
form.addEventListener(
    'submit',
    event => {
        if (!form.checkValidity()) {
            event.preventDefault();
            event.stopPropagation();
        }

        form.classList.add('was-validated');
    },
    false
);
