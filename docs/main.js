import { saveDatapack } from "./spoiler_log_to_datapack.js"
import {  randomise   } from "./randomisation.js"

// move this to an <input type="submit"> later, for testing it will be onload
async function loaded () {
  let settings = {}; // Read Inputs
  let spoiler = await randomise(settings, await loadJSON("data/reference_spoiler_log.json")); // generate spoiler JSON

  console.log(spoiler)
  await saveDatapack(await loadJSON("data/OoT_data.json"), await loadJSON("data/blockentitiespruned.json"), spoiler);
}

async function loadJSON(path) {
  let result = await fetch(path);
  let data = await result.json();
  return data;
}

window.addEventListener("load", loaded);