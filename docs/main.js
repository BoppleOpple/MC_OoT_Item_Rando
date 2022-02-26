
function loaded () {
  fetch("spoiler_log.json").then(result=>result.json()).then(data => {
    console.log(data);
  }).catch(err => {
    console.error(err);
  });
}

window.addEventListener("load", loaded);