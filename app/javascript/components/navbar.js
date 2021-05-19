const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-rent-a-bike');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-rent-a-bike-white');
      } else {
        navbar.classList.remove('navbar-rent-a-bike-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };