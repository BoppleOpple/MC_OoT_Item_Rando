import { saveDatapack } from "./spoiler_log_to_datapack.js"

async function loaded () {
  await saveDatapack(await loadJSON("data/spoiler_log.json"), await loadJSON("data/OoT_data.json"));
}

async function loadJSON(path) {
  let result = await fetch(path);
  let data = await result.json();
  return data;
}

window.addEventListener("load", loaded);