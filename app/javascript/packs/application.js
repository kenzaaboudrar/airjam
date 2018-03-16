import "bootstrap";

import "../components/flatpickr";

import { notify } from "../components/notification.js";

setInterval(function() {
  notify();
}, 1000);
