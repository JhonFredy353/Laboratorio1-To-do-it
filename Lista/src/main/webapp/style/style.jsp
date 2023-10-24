<style>

  /* Estilos generales */
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
}

body {
    background: linear-gradient(to right, #e2e2e2, #c9d6ff);
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    margin: 0;
}

.container {
    background-color: #fff;
    border-radius: 30px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.35);
    overflow: hidden;
    width: 100%;
    max-width: 768px;
    min-height: 480px;
    position: relative;
}

.container p {
    font-size: 14px;
    line-height: 20px;
    letter-spacing: 0.3px;
    margin: 20px 0;
}

.container span {
    font-size: 12px;
}

.container a {
    color: #333;
    font-size: 13px;
    text-decoration: none;
    margin: 15px 0 10px;
}

.container button {
    background-color: #512da8;
    color: #fff;
    font-size: 12px;
    padding: 10px 45px;
    border: 1px solid transparent;
    border-radius: 8px;
    font-weight: 600;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    margin-top: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.container button.hidden {
    background-color: transparent;
    border-color: #fff;
}

.container form {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: #fff;
    padding: 0 40px;
    height: 100%;
}

.container input {
    width: 100%;
    padding: 10px 15px;
    margin: 8px 0;
    font-size: 13px;
    border-radius: 8px;
    outline: none;
    border: 1px solid #ccc;
    transition: border-color 0.3s ease;
}

.container input:focus {
    border-color: #512da8;
}

/* Estilos de animación y transición */
.container.active .sign-in,
.container.active .sign-up {
    transform: translateX(100%);
}

.container.active .sign-up {
    opacity: 1;
    animation: move 0.6s;
}

@keyframes move {
    0%, 49.99% {
        opacity: 0;
    }
    50%, 100% {
        opacity: 1;
    }
}

.container.active .toggle-container {
    transform: translateX(-100%);
    border-radius: 0 150px 100px 0;
}

.container.active .toggle {
    transform: translateX(50%);
}

.container.active .toggle-left {
    transform: translateX(0);
}

.container.active .toggle-right {
    transform: translateX(200%);
}

/* Estilos específicos para el formulario de login */
.login .input {
    width: 100%;
    height: 30px;
    margin-bottom: 50px;
}

.login .input .input1 {
    width: 100%;
    height: 100%;
    font-size: 16px;
    background: transparent;
    border: none;
    outline: none;
    border-bottom: 2px solid black;
    color: black;
}

.login .input i {
    position: absolute;
    right: 0;
    bottom: -27px;
    color: black;
}

.login .button {
    width: 100%;
    height: 40px;
    margin-bottom: 15px;
}

button {
    width: 100%;
    height: 40px;
    background-color: #499EBF;
    border: none;
    outline: none;
    font-size: 20px;
    font-weight: 700;
    border-radius: 7px;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #5c6bc0;
}

</style>
