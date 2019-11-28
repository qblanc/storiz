const StickyToolbar = () => {
  window.addEventListener('scroll', (e) => {
  const toolbar = document.querySelector('#trix-toolbar-1');
    if (window.scrollY >= 200) {
      toolbar.classList.add('toolbar-shadow');
    } else {
      toolbar.classList.remove('toolbar-shadow');
    }  })
};

export { StickyToolbar }
