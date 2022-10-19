const KEYWORDS = ["Has", "Setting", "State", "Start"]
const OPERATIONS = ["&&", "||", "!", "(", ")", ""]

class Player {
	constructor(){
		this.inventory = [];
		this.currentStates = {};
		this.settings = {};
		this.startingLocation = "LinksHouse";
	}

	init(settings, itemPool, logicMacros){
		for (let region in itemPool){
			for (let i in itemPool[region].slice(0, itemPool[region].length-1)){
				let check = itemPool[region][i];
				this.inventory.push(check);
				check.requirements = (check.requirements=='')?"false":expandCondition(check.requirements, logicMacros);
				console.log(check.requirements)
			}
		}
		this.settings = {...settings};
	}
	test(condition){
		let states = condition.split("state");
		states = states.slice(1, states.length);

		for (let i in states){
			let state = states[i].split(')')[0];
			state = state.slice(1, state.length);
			states[i] = state;

		}
		let result = false;
		for (let i = 0; i < Math.pow(2, states.length); i++){
			let boolStr = i.toString(2);
			for (let j in states){
				this.currentStates[states[j]] = !!boolStr[j];
			}
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

	start(location){
		return this.startingLocation == location;
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
		console.log(player.inventory.length)
		for (let region in pool){
			pool[region].sort(_ => Math.random() - 0.5);
		}

		let testItem = player.inventory.pop();

		// for (let region in pool){
		// 	for (let check of pool[region]){
				
		// 		if (player.test(check.requirements)){
		// 			placedItems.push({
		// 				name: check.name,
		// 				coords: check.coords,
		// 				contents: testItem.contents,
		// 				referenceCoords: testItem.coords
		// 			})
		// 			continue itemLoop;
		// 		}
		// 	}
		// }
		// If the above loop does not break

		for (let region in pool){
			for (let check of pool[region]){
				
				placedItems.push({
					name: check.name,
					coords: check.coords,
					contents: testItem.contents,
					referenceCoords: testItem.coords
				})
				continue itemLoop;
			}
		}
		player.inventory.push(testItem);
		player.inventory.unshift(placedItems.shift());
	}

	return placedItems
}

export function expandCondition(condition, logicMacros, checkedTerms = []){
	console.log(condition, checkedTerms)
	condition = condition.replace(/\s/g, '');
	condition = condition.replace(/AND/g, " && ");
	condition = condition.replace(/OR/g, " || ");
	condition = condition.replace(/NOT/g, " ! ");
	condition = condition.replace(/\(/g, " ( ");
	condition = condition.replace(/\)/g, " ) ");
	condition = condition.replace(/this\.\w+\s*\(/g, "this.(");

	
	
	let result = [];
	mainLoop : for (let term of condition.split(' ')){
		for (let keyWord of KEYWORDS){
			if (term.startsWith(keyWord)){
				console.log(term)
				result.push("this." + keyWord.toLowerCase() + '("' + term.slice(keyWord.length, term.length) + '")');
				continue mainLoop
			}
		}
		for (let region in logicMacros){
			for (let macro of logicMacros[region]){
				if (term == macro.key){
					if (!checkedTerms.includes(term)){
						let expanded = expandCondition(macro.requirements, logicMacros, [...checkedTerms, term])
						console.log(expanded)
						result.push('(' + expanded + ')');
						continue mainLoop
					}else{
						result.push("false");
						continue mainLoop
					}
				}
			}
		}
		// console.log(term)
		// result.push(term)
		console.log(term, OPERATIONS.includes(term)?term:"false")
		result.push(OPERATIONS.includes(term)?term:"false");
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

	simple = simple.replace(/!\s*!/g, "");
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

	
	// False and (stuff)
	let currentRegEx = /false\s*&&\s*\(/g;
	while(currentRegEx.test(simple)){
		let startSpan = [simple.search(currentRegEx)];
		startSpan.push(startSpan[0] + simple.match(currentRegEx).length);
		
		let depth = 0;
		let index = startSpan[0];
		do {
			let nextLeftBracket = simple.indexOf('(', index);
			let nextRightBracket = simple.indexOf(')', index);
			if (nextLeftBracket < nextRightBracket && nextLeftBracket != -1){
				depth += 1;
				index = nextLeftBracket+1;
			}else{
				depth -= 1;
				index = nextRightBracket+1;
			}
		} while (depth > 0);
		simple = simple.slice(0, startSpan[0]) + " false " + simple.slice(index, simple.length);
	}
	
	// (stuff) and False
	currentRegEx = /\)\s*&&\s*false/g;
		while(currentRegEx.test(simple)){
			let startSpan = [simple.search(currentRegEx)];
			startSpan.push(startSpan[0] + simple.match(currentRegEx)[0].length);
			
			let depth = 0;
			let index = startSpan[0];
			do {
				let nextLeftBracket = simple.lastIndexOf('(', index);
				let nextRightBracket = simple.lastIndexOf(')', index);
				if (nextRightBracket > nextLeftBracket && nextLeftBracket != -1){
					depth += 1;
					index = nextRightBracket-1;
				}else{
					depth -= 1;
					index = nextLeftBracket-1;
				}

				console.log(depth)
			} while (depth > 0);
			simple = simple.slice(0, index) + " false " + simple.slice(startSpan[1], simple.length);
		}
	
	// True or (stuff)
	currentRegEx = /true\s*\|\|\s*\(/g;
	while(currentRegEx.test(simple)){
		let startSpan = [simple.search(currentRegEx)];
		startSpan.push(startSpan[0] + simple.match(currentRegEx).length);
		
		let depth = 0;
		let index = startSpan[0];
		do {
			let nextLeftBracket = simple.indexOf('(', index);
			let nextRightBracket = simple.indexOf(')', index);
			if (nextLeftBracket < nextRightBracket && nextLeftBracket != -1){
				depth += 1;
				index = nextLeftBracket+1;
			}else{
				depth -= 1;
				index = nextRightBracket+1;
			}
		} while (depth > 0);
		simple = simple.slice(0, startSpan[0]) + " true " + simple.slice(index, simple.length);
	}

	// (stuff) or True
	currentRegEx = /\)\s*\|\|\s*true/g;
		while(currentRegEx.test(simple)){
			let startSpan = [simple.search(currentRegEx)];
			startSpan.push(startSpan[0] + simple.match(currentRegEx)[0].length);
			
			let depth = 0;
			let index = startSpan[0];
			do {
				let nextLeftBracket = simple.lastIndexOf('(', index);
				let nextRightBracket = simple.lastIndexOf(')', index);
				if (nextRightBracket > nextLeftBracket && nextLeftBracket != -1){
					depth += 1;
					index = nextRightBracket-1;
				}else{
					depth -= 1;
					index = nextLeftBracket-1;
				}
			} while (depth > 0);
			simple = simple.slice(0, index) + " true " + simple.slice(startSpan[1], simple.length);
		}

	// Python:

	// # False and (stuff)
	// resultStrings = regex.search(r"(false\s*&&\s*\()", simple)
	// while resultStrings:
	// 	startSpan = resultStrings.spans(1)[0]

	// 	bracketsSearch = regex.search(r"(?:(\()|(\))|.)*", simple)
	// 	openBrackets = bracketsSearch.starts(1)
	// 	closeBrackets = bracketsSearch.starts(2)
	// 	brackets = openBrackets + closeBrackets
	// 	brackets.sort()

	//	depth = 1
	//	for bracket in brackets:
	//		if bracket > startSpan[0]:
	//			depth += 1 if bracket in openBrackets else -1
	//			if(depth == 0):
	//				simple = simple[:startSpan[0]] + " false " + simple[bracket:]
	//				resultStrings = regex.search(r"(false\s*&&\s*\()", simple)
	//				break
	return (expression == simple) ? simple : simplifyBool(simple)
}
