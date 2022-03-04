import { downloadZip } from "https://cdn.jsdelivr.net/npm/client-zip/index.js"

// Lots of code from https://github.com/Touffy/client-zip (Unless LDA knows about exporting ZIPs in JS)

export async function saveDatapack(datapackJSON, NBTData, spoilerLog) {
  let placementFunctions = [];
  let functionNumber = 0;
  let readableLog = [];
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
  console.log(numChecks)
  for (let region in spoilerLog){
    for (let container of spoilerLog[region]){
      functionNumber++;
      let coords = container.coords.split(' ');
      let referenceCoords = container.referenceCoords.split(' ');
      referenceCoords.forEach(parseInt);
      let nbt = {};
      let NBTIndex = 0;

      for (let data of NBTData){
        NBTIndex++;
        if (data.x == referenceCoords[0] && data.y == referenceCoords[1] && data.z == referenceCoords[2]){
          nbt = data.nbt.slice(8, data.nbt.length-1);
        }
      }
      if(nbt.includes("Slot:")){
        nbt = nbt.split("Slot: ");
        nbt.forEach((str, i)=>{
          if (str[0] != '{') {
            nbt[i] = '0' + str.slice(str.indexOf('b'), str.length);
          }
        })
        nbt = nbt.join("Slot: ");
      }
      console.log(nbt);
      let fileBody = "";
      fileBody += "forceload add " + coords[0] + ' ' + coords[2] + '\n';
      fileBody += "data merge block " + container.coords + ' ' + nbt.toString() + "\n";
      fileBody += "forceload remove " + coords[0] + ' ' + coords[2] + '\n';
      if (functionNumber < numChecks){
        fileBody += "setblock ~ ~ ~1 air\n"
        fileBody += "setblock ~ ~ ~2 redstone_block\n"
        fileBody += "data modify block ~ ~ ~ Command set value \"function rando:replacecontainers/replacecontainer" + (functionNumber + 1).toString() + "\"";
      }else{
        fileBody += "fill ~ ~ ~ ~ ~ ~4 air"
        fileBody += "datapack enable \"file/Legend Of Zelda Data\"\n"
        fileBody += "datapack disable \"file/Randomizer\""
      }
      placementFunctions.push({
        name: "datapacks/Randomizer/data/rando/functions/replacecontainers/replacecontainer" + functionNumber.toString() + ".mcfunction",
        lastModified: new Date(),
        input: fileBody
      });
    }
  }
  for (let file of datapackJSON){
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