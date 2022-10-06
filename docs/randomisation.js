const KEYWORDS = ["Has", "Setting", "State"]

class Player {
  constructor(){
    this.inventory = [];
    this.currentStates = {};
    this.settings = {};
  }

  init(settings, itemPool, logicMacros){
    for (let region in itemPool){
      for (let i in itemPool[region].slice(0, itemPool[region].length-1)){
        let check = itemPool[region][i];
        this.inventory.push(check);
        check.requirements = expandCondition(check.requirements, logicMacros);
      }
    }
    this.settings = {...settings};
  }
  test(condition){
    let states = condition.split("state");
    states = states.slice(1, states.length);

    for (i in states){
      let state = states[i].split(')')[0];
      state = state.slice(1, state.length);
      states[i] = state;

    }
    let result = false;
    for (let i = 0; i < Math.pow(2, states.length); i++){
      let boolStr = i.toString(2);
      for (j in states){
        this.currentStates[states[j]] = !!boolStr[j];
      }
      console.log(condition)
      result = eval(condition);
      if (result){
        break;
      }
    }
    return result;
  } // Changes scope of eval to act on the current player object

  has(item){
    return this.inventory.filter(check => item == check.contents).length > 0;
  }

  setting(key){
    return this.settings[key];
  }

  state(playerState){
    return this.currentStates[playerState];
  }
}

export function randomise(settings, logicSheet, logicMacros){
  let player = new Player();
  let pool = {...logicSheet};

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
  let placedItems = [];
  itemLoop : while (player.inventory.length > 0){
    for (let region in pool){
      pool[region].sort(_ => Math.random() - 0.5);
    }

    let testItem = player.inventory.pop();

    for (let region in pool){
      for (let check of pool[region]){
        if (player.test(check.requirements)){
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

    player.inventory.push(testItem);
    player.inventory.unshift(placedItems.shift());
  }

  console.log(placedItems);
}

export function expandCondition(condition, logicMacros, checkedTerms = []){
  console.log(condition, checkedTerms)
  condition = condition.replace(/\s/g, '');
  condition = condition.replace(/AND/g, " && ");
  condition = condition.replace(/OR/g, " || ");
  condition = condition.replace(/NOT/g, " ! ");
  condition = condition.replace(/[^this\.]\(/g, " ( ");
  condition = condition.replace(/\)/g, " ) ");

  
  let result = [];
  mainLoop : for (let term of condition.split(' ')){
    for (let keyWord of KEYWORDS){
      if (term.startsWith(keyWord)){
        console.log(term)
        result.push("this." + keyWord.toLowerCase() + '("' + term.slice(keyWord.length, term.length) + '")');
        continue mainLoop
      }
    }

    for (let macro of logicMacros){
      if (term == macro.key){
        if (!checkedTerms.includes(term)){
          let expanded = expandCondition(macro.requirements, logicMacros, [...checkedTerms, term])
          result.push('(' + expanded + ')');
          continue mainLoop
        }else{
          result.push("false");
          continue mainLoop
        }
      }
    }
    result.push(term);
  }
  
  // console.log(condition , result);
  result = result.join(' ');
  result = result.replace(/\(\s*\)/g, '');
  result = result.replace(/(?<=\()\s*((&&)|(\|\|))/g, '');
  result = result.replace(/((&&)|(\|\|))\s*(?=\))/g, '');
  result = result.replace(/(&&)\s*(&&)/g, "&&");
  result = result.replace(/(\|\|)\s*(\|\|)/g, "||");
  return result;
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


export function simplifyBool(expression = 'false'){
  console.log(expression)
  let simple = expression

  simple = simple.replace(/!\s*!/g, "!");
  simple = simple.replace(/(!\s*false)/g, "true")
  simple = simple.replace(/(!\s*true)/g, "false")

  simple = simple.replace(/(\|\|\s*false)|(false\s*\|\|)/g, '')
  simple = simple.replace(/(?<=^|\(|\s)((\w+\s*&&\s*false)|(false\s*&&\s*\w+))(?=\s|\)|$)/g, 'false')

  simple = simple.replace(/(&&\s*true)|(true\s*&&)/g, '')
  simple = simple.replace(/(?<=^|\(|\s)((\w+\s*\|\|\s*true)|(true\s*\|\|\s*\w+))(?=\s|\)|$)/g, 'true')


  simple = simple.replace(/(\((?=\s*\w*\s*\)))|((?<=\(\s*\w*\s*)\))/g, '')

  simple = simple.replace(/(?<=^|\()\s*((&&)|(\|\|))/g, '');
  simple = simple.replace(/((&&)|(\|\|))\s*(?=\)|$)/g, '');
  simple = simple.replace(/(&&)\s*(&&)/g, "&&");
  simple = simple.replace(/(\|\|)\s*(\|\|)/g, "||");
  return (expression == simple) ? simple : simplifyBool(simple)
}
