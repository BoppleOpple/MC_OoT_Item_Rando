export function randomise(settings, logicSheet, logicMacros){
  let rawConditions = {}

  for (let region in logicSheet){
    rawConditions[region] = [];
    for (let check of logicSheet[region].slice(0, logicSheet[region].length-1)){
      rawConditions[region].push(expandCondition(check.requirements, logicMacros));
    }
  }
  console.log(rawConditions);
}

function expandCondition(condition, logicMacros){
  for (let term of condition.split(' ')){
    if (condition.split(' ').length == 1){
      switch (term) {
        case "AND":
          return "&&";
        case "OR":
          return "||";
        default:
          let operatorlessTerm = term;
          operatorlessTerm.replace('(', '');
          operatorlessTerm.replace(')', '');
          for (let macro in logicMacros){
            if (operatorlessTerm == macro.key){
              return term.replace(operatorlessTerm, '(' + expandCondition(macro.requirements) + ')')
            }
          }
          return term;
      }
    }else{
      return expandCondition(term)
    }
  }
}

// export async function randomise(settings, default_spoiler){
//   let spoiler = {}
//   let possibleCheckCoords = [];
//   for (let region in default_spoiler){
//     for (let check of default_spoiler[region]){
//       possibleCheckCoords.push(check.coords)
//     }
//   }
//   for (let region in default_spoiler){
//     spoiler[region] = [];
//     for (let check of default_spoiler[region]){
//       let index = Math.floor(Math.random() * possibleCheckCoords.length);
//       let selectedRef = possibleCheckCoords[index]
//       possibleCheckCoords.splice(index);
//       spoiler[region].push({
//         name: check.name,
//         coords: check.coords,
//         contents: check.contents,
//         referenceCoords: selectedRef
//       });
//     }
//   }

//   return spoiler;
// }