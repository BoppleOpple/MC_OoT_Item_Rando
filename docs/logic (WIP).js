export function randomise(settings, logicSheet, logicMacros){
  let rawConditions = {}

  for (let region in logicSheet){
    rawConditions[region] = [];
    for (let check of logicSheet[region].slice(0, logicSheet[region].length-1)){
      
    }
    rawConditions[region].push();
  }
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
              return term.replace(operatorlessTerm, '(' + expandCondition(term) + ')')
            }
          }
          return term;
      }
    }else{
      return expandCondition(term)
    }
  }
}