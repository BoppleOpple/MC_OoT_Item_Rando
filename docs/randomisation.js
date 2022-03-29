
class Player {
  constructor(){
    this.inventory = [];
  }
  has(item){ return (this.inventory.filter(ele=>(ele.contents == item.contents)).length > 0); }

  init(settings, itemPool, logicMacros){
    for (let region in itemPool){
      for (let i in itemPool[region].slice(0, itemPool[region].length-1)){
        let check = itemPool[region][i];
        this.inventory.push(check);
        check.requirements = expandCondition(check.requirements, logicMacros);
      }
    }
  }
}

export function randomise(settings, logicSheet, logicMacros){
  let player = new Player();
  let pool = clone(logicSheet);

  player.init(settings, pool, logicMacros);
  /*

  Start with every item

  - select item to place, starting with major items
  - Randomise pool
  - iterate through check pool and see if each check is reachable without the item
  - if it is, add to result and remove the item from the "player" and continue to next item
    - if not, move on
  - if the loop finishes (no open spots), select an already used check item that does not require the looping item to access, and replace it with the looping item
  - repeat the process with that item

  */
  placedItems = [];
  itemLoop : while (inventory.length > 0){
    pool.sort(_ => Math.random() - 0.5);
    for (let region in pool){
      pool[region].sort(() => Math.random() - 0.5);
    }

    let testItem = inventory.pop();

    for (let region in pool){
      for (let check of pool[region]){
        if (testCondition(inventory, check.requirements)){
          placedItems.push({
            name: check.name,
            coords: check.coords,
            contents: testItem.contents,
            referenceCoords: testItem.coords
          })
          continue itemLoop;
        }
      }
    }
    // If the above loop does not break

    inventory.push(testItem);
    inventory.unshift(placedItems.shift());
  }

  console.log(placedItems);
}

function expandCondition(condition, logicMacros){
  let result = ""
  mainLoop : for (let term of condition.split(' ')){
    if (condition.split(' ').length == 1){
      switch (term) {
        case "AND":
          result += "&&";
          break mainLoop;
        case "OR":
          result += "||";
          break mainLoop;
        case "NOT":
          result += "!";
          break mainLoop;
        default:
          let operatorlessTerm = term;
          operatorlessTerm.replace('(', '');
          operatorlessTerm.replace(')', '');
          for (let macro in logicMacros){
            if (operatorlessTerm == macro.key){
              result += term.replace(operatorlessTerm, '(' + expandCondition(macro.requirements) + ')')
            }
          }
          result += term;
      }
    }else{
      result += expandCondition(term)
    }
  }
  return result
}

function clone(object){
  let copy = (typeof object == Object) ? {} : ((typeof object == Array) ? [] : null);
  for (let key in object){
    copy[key] = object[key];
  }
  return copy;
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