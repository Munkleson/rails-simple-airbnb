function initializeSearch() {
  const input = document.querySelector(".search-input");
  input.addEventListener("keyup", (event) => search(event.target));
}

function search(target) {
  const flats = document.querySelectorAll(".flat");
  const inputValue = target.value.toLowerCase();
  flats.forEach(flat => addNoneToFlats(flat, inputValue));
}

function addNoneToFlats(flat, inputValue) {
  const name = flat.querySelector("h3");
  if (name.innerText.toLowerCase().includes(inputValue)) {
    flat.classList.remove("d-none");
  } else {
    flat.classList.add("d-none");
  }
}

document.addEventListener("turbo:load", initializeSearch)
