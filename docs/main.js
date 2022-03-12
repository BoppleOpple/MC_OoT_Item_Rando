import { saveDatapack } from "./spoiler_log_to_datapack.js"
import {  randomise   } from "./randomisation.js"

let ReferenceSpoiler;
// move this to an <input type="submit"> later, for testing it will be onload
async function loaded () {
  ReferenceSpoiler = await loadJSON("data/reference_spoiler_log.json");

  for (let region in ReferenceSpoiler){
    let regionNode = document.createElement("li");
    regionNode.class = "regionListElement";

    let regionLabel = document.createElement("label");
    regionLabel.innerText = region;
    regionNode.appendChild(regionLabel);

    let regionCheckbox = document.createElement("input");
      regionCheckbox.id = region;
      regionCheckbox.type = "checkbox";
      regionCheckbox.addEventListener("click", function(_){
        for (let sublistElement of this.parentNode.getElementsByClassName("sublist")[0].childNodes){
          sublistElement.getElementsByTagName("input")[0].checked = this.checked;
        }
      });
      regionNode.appendChild(regionCheckbox);

    let indent = document.createElement("ol");
    indent.setAttribute("class", "sublist")
    for (let check of ReferenceSpoiler[region]){
      let checkNode = document.createElement("li");
      checkNode.setAttribute("class", "checkListElement");

      let label = document.createElement("label");
      let text = check.name.split('_');
      for (let i in text){
        text[i] = text[i][0].toUpperCase()+text[i].slice(1, text[i].length);
      }
      label.innerText = text.join(' ') + ": ";
      checkNode.appendChild(label);

      let checkbox = document.createElement("input");
      checkbox.id = check.name;
      checkbox.type = "checkbox";
      checkNode.appendChild(checkbox);

      indent.appendChild(checkNode);
    }
    regionNode.appendChild(indent);
    document.getElementById("Locations").appendChild(regionNode);
  }
}

async function download(){
  let settings = {}; // Read Inputs
  let spoiler = await randomise(settings, ReferenceSpoiler); // generate spoiler JSON

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
      console.log(txtValue, filter)
      if (li.class == "checkListElement"){
        li.parentNode.parentNode.style.display = "";
      }
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
document.getElementById("downloadButton").addEventListener("click", download);