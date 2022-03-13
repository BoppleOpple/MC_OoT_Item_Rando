export async function randomise(settings, default_spoiler){
  let spoiler = {}
  let possibleCheckCoords = [];
  for (let region in default_spoiler){
    for (let check of default_spoiler[region]){
      possibleCheckCoords.push(check.coords)
    }
  }
  for (let region in default_spoiler){
    spoiler[region] = [];
    for (let check of default_spoiler[region]){
      let index = Math.floor(Math.random() * possibleCheckCoords.length);
      let selectedRef = possibleCheckCoords[index]
      possibleCheckCoords.splice(index);
      spoiler[region].push({
        name: check.name,
        coords: check.coords,
        contents: check.contents,
        referenceCoords: selectedRef
      });
    }
  }

  return spoiler;
}