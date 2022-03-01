import { downloadZip } from "https://cdn.jsdelivr.net/npm/client-zip/index.js"

// Lots of code from https://github.com/Touffy/client-zip (Unless LDA knows about exporting ZIPs in JS)

export async function saveDatapack(spoilerLog, datapackJSON) {
  let placementFunctions = [];
  let functionNumber = 0;
  let loadMcfunction = `
  datapack disable "file/Legend Of Zelda Data"
  execute as @e[type=minecraft:falling_block] run kill
  execute at @p run summon marker ~ ~ ~ {Tags:["spawnpoint"]}
  execute at @e[type=marker, tag=spawnpoint] run setblock ~10 ~ ~ command_block{Command:"function rando:replacecontainers/replacecontainer1"}
  execute at @e[type=marker, tag=spawnpoint] run setblock ~10 ~ ~3 command_block[facing=south]{Command:"setblock ~ ~ ~-1 air"}
  execute at @e[type=marker, tag=spawnpoint] run setblock ~10 ~ ~4 chain_command_block[facing=south]{Command:"setblock ~ ~ ~-3 redstone_block", auto:1b}
  execute at @e[type=marker, tag=spawnpoint] run setblock ~10 ~ ~2 redstone_block
  kill @e[type=marker, tag=spawnpoint]
  `
  placementFunctions.push({
    name: "datapacks/Randomizer/data/rando/functions/load.mcfunction",
    lastModified: new Date(),
    input: loadMcfunction
  })

  placementFunctions.push({
    name: "datapacks/Randomizer/pack.mcmeta",
    lastModified: new Date(),
    input: '{"pack": {"pack_format": 1,"description": "OoT Randomizer"}}'
  })
  let numChecks = 0;
  for (let region in spoilerLog){
    for (let _ of spoilerLog[region]){
      numChecks++;
    }
  }
  for (let region in spoilerLog){
    for (let container of spoilerLog[region]){
      functionNumber++;
      let coords = container.coords.split(' ');
      // console.log(coords)
      let fileBody = "";
      fileBody += "forceload add " + coords[0] + ' ' + coords[2] + '\n';
      fileBody += "data modify block " + container.coords + " Items set value [{Slot:0b, id:\"minecraft:dirt\", Count:1b}]\n";
      fileBody += "forceload remove " + coords[0] + ' ' + coords[2] + '\n';
      if (functionNumber < numChecks){
        fileBody += "setblock ~ ~ ~1 air\n"
        fileBody += "setblock ~ ~ ~2 redstone_block\n"
        fileBody += "data modify block ~ ~ ~ Command set value \"function rando:replacecontainers/replacecontainer" + (functionNumber + 1).toString() + "\"";
      }else{
        fileBody += "fill ~ ~ ~ ~ ~ ~4 air"
        fileBody += "datapack enable \"file/Legend Of Zelda Data\""
        fileBody += "datapack disable \"file/Randomizer\""
      }
      placementFunctions.push({
        name: "datapacks/Randomizer/data/rando/functions/replacecontainers/replacecontainer" + functionNumber.toString() + ".mcfunction",
        lastModified: new Date(),
        input: fileBody
      })
    }
  }
  // console.log(datapackJSON[0])
  for (let file of datapackJSON){
    // console.log(file)
    placementFunctions.push({
      name: "datapacks/Legend Of Zelda Data/" + file.path,
      lastModified: new Date(),
      input: file.content
    })
  }

  const blob = await downloadZip(placementFunctions).blob()

  console.log(spoilerLog);
  // I love saving files in js
  let saveElement = document.createElement('a');
  saveElement.setAttribute("download", "Randomizer.zip");
  saveElement.setAttribute("href", URL.createObjectURL(blob));
  saveElement.click();
  saveElement.remove();
}

// Reference directly from https://github.com/Touffy/client-zip README, so much better than trying to learn blob magic

// async function downloadTestZip() {
//   // define what we want in the ZIP
//   const code = await fetch("https://raw.githubusercontent.com/Touffy/client-zip/master/src/index.ts")
//   const intro = { name: "intro.txt", lastModified: new Date(), input: "Hello. This is the client-zip library." }

//   // get the ZIP stream in a Blob
//   const blob = await downloadZip([intro, code]).blob()

//   // make and click a temporary link to download the Blob
//   const link = document.createElement("a")
//   link.href = URL.createObjectURL(blob)
//   link.download = "test.zip"
//   link.click()
//   link.remove()

//   // in real life, don't forget to revoke your Blob URLs if you use them
// }