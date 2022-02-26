
function loaded () {
  fetch("../Map Datapack/spoiler_log.json").then((data)=>{
    saveDatapack(data);
  })
}

window.addEventListener("load", loaded);