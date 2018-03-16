function notify() {
  const notifications = document.querySelector('javascript');
  const userId = notifications.dataset.userId
  fetch(`/users/${userId}/notification`)
  .then(response => response.json())
  .then((data) => {
      notifications.style.display = "block";
      notifications.innerHTML = data.number;
  });
};

export { notify };


