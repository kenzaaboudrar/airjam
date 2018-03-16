function notify() {
  const notifications = document.querySelector('notification');
  const userId = notifications.dataset.userId
  fetch(`/users/${userId}/notification`)
  .then(response => response.json())
  .then((data) => {
    // if (data.number === 0) {
    //   notifications.style.display = "none";
    // } else {
    //   notifications.style.display = "block";
    // });
      if (data.number === 0) {
        notifications.classList.add("transparent");
      } else {
        notifications.classList.remove("transparent");
        notifications.innerHTML = data.number;
      };


  });
};

export { notify };


