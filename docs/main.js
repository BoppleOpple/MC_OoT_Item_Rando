import { saveDatapack } from "./spoiler_log_to_datapack.js"
import {  randomise   } from "./randomisation.js"

// move this to an <input type="submit"> later, for testing it will be onload
async function loaded () {
  const ReferenceSpoiler = await loadJSON("data/reference_spoiler_log.json");

  // for (let region in ReferenceSpoiler){
  //   let regionNode = document.createElement("li")

  //   document.getElementById("Locations")
  //   spoiler[region] = [];
  //   for (let check of ReferenceSpoiler[region]){
  //     let selectedRef = possibleCheckCoords[Math.floor(Math.random() * possibleCheckCoords.length)]
  //     spoiler[region].push({
  //       name: check.name,
  //       coords: check.coords,
  //       contents: check.contents,
  //       referenceCoords: selectedRef
  //     });
  //   }
  // }

  let settings = {}; // Read Inputs
  let spoiler = await randomise(settings, ReferenceSpoiler); // generate spoiler JSON

  console.log(spoiler)
  await saveDatapack(await loadJSON("data/OoT_data.json"), await loadJSON("data/blockentitiespruned.json"), spoiler);
}

async function loadJSON(path) {
  let result = await fetch(path);
  let data = await result.json();
  return data;
}

// Frontend functions

function searchBox(_) {
  // in functions called by elements, that element is used as the caller, so no need for IDs
  let filter = this.value.toUpperCase();
  let listElements = this.parentNode.getElementsByTagName("li");
  for (let li of listElements) {
    let listElementLabel = li.getElementsByTagName("label")[0];
    let txtValue = listElementLabel.textContent || listElementLabel.innerText;
    if (txtValue.toUpperCase().includes(filter)) {
      li.style.display = "";
    } else {
      li.style.display = "none";
    }
  }
}


window.addEventListener("load", loaded);
for (let input of document.getElementsByClassName("searchbar")){
  input.addEventListener("keyup", searchBox);
}