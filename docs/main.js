import { saveDatapack } from "./spoiler_log_to_datapack.js"
import {  randomise, expandCondition, simplifyBool  } from "./randomisation.js"

let ReferenceSpoiler, datapack;
async function loaded () {
  ReferenceSpoiler = await loadJSON("data/referencespoilerlog.json");
  datapack = await loadJSON("data/OoT_data.json");

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

  let cutscenes = datapack.filter(obj=>obj.path=="/data/ocarina_of_time/functions/jump_cutscenes/loop.mcfunction")[0]["content"].split('#');
  for (let cutscene of cutscenes.slice(2, cutscenes.length)){ // Slice to remove header comments
    cutscene = cutscene.split('\n')[0];
    cutscene = cutscene.slice(0, cutscene.length-1);
    let cutsceneNode = document.createElement("li");
    cutsceneNode.class = "cutsceneListElement";

    let cutsceneLabel = document.createElement("label");
    cutsceneLabel.innerText = cutscene;
    cutsceneNode.appendChild(cutsceneLabel);
    
    let cutsceneCheckbox = document.createElement("input");
    cutsceneCheckbox.id = cutscene;
    cutsceneCheckbox.type = "checkbox"
    cutsceneCheckbox.checked = true;
    cutsceneNode.appendChild(cutsceneCheckbox);
    document.getElementById("Cutscenes").appendChild(cutsceneNode);
  }

  let result = expandCondition("CanGetToKokiriDekuTree", await loadJSON("data/logicmacros.json"))
  result = simplifyBool(result)
  result = result.replace(/\(/g, ' ( ')
  result = result.replace(/\)/g, ' ) ')
  result = result.replace(/&&/g, ' && ')
  result = result.replace(/\|\|/g, ' || ')
  result = result.replace(/!\s*/g, ' !')
  result = result.replace(/\s+/g, ' ')
  result = result.replace(/(^ )|( $)/g, '')
  console.log(result)
  // console.log(expandCondition("CanGetToKokiriDekuTree", await loadJSON("data/logicmacros.json")))
  // console.log(expandCondition("A AND B", [
  //   {
  //     type: "Location",
  //     key: "A",
  //     requirements: "B"
  //   },
  //   {
  //     type: "Location",
  //     key: "B",
  //     requirements: "C OR HasX"
  //   },
  //   {
  //     type: "Location",
  //     key: "C",
  //     requirements: "A OR HasY"
  //   }
  // ]))
}

async function download(){
  let settings = {}; // Read Inputs
  let spoiler = await randomise(settings, await loadJSON("data/logicsheet.json"), await loadJSON("data/logicmacros.json")); // generate spoiler JSON

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