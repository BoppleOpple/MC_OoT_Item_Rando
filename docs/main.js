
function loaded () {
  fetch("spoiler_log.json").then((data)=>{
    saveDatapack(data);
  })
}

window.addEventListener("load", loaded);