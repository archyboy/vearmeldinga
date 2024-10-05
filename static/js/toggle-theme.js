let element = document.getElementsByTagName("html");
const currentTheme = localStorage.getItem('theme');

document.write(currentTheme)

if (currentTheme) {
   element[0].classList.add(currentTheme);
}

function switchTheme() {
    if (element[0].classList.contains('theme-light')) {
       localStorage.setItem('theme', 'theme-dark');
    } else {
       localStorage.setItem('theme', '');
    }
       element[0].classList.toggle("theme-light");
}

