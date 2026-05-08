// Web Worker - ana thread throttle'a tabi olsa da bu worker arka planda
// ayni araligi koruyarak tick mesaji gondermeye devam eder.

let timer = null;

self.addEventListener("message", event => {
  const { type, intervalMs } = event.data || {};

  if (type === "start") {
    if (timer) {
      clearInterval(timer);
    }

    timer = setInterval(() => {
      self.postMessage({ type: "tick" });
    }, intervalMs);

    self.postMessage({ type: "started" });
  }

  if (type === "stop") {
    if (timer) {
      clearInterval(timer);
      timer = null;
    }

    self.postMessage({ type: "stopped" });
  }
});
