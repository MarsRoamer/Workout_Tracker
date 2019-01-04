let placeHolder;

function getWorkouts(gym) {

	fetch('/workouts/test?gym_id=' + gym)
		.then(function(response) {
			console.log(response)
			return response.json();
		})
		.then(function(myjson){

			const template = Handlebars.compile(document.getElementById("workouts-template").innerHTML);
			const result = template(myjson.workouts);
			placeHolder = myjson.workouts

			document.getElementById("workouts").innerHTML = result;
			// clickCount++;
			// if(clickCount % 2 === 0){

			// }
			$("#workoutBtn").hide();
			$("#hideWorkouts").show();
			console.log(myjson)
		})
	
}

function hideWorkouts() {
	$("#workouts").empty();
	$("#hideWorkouts").toggle();
	$("#workoutBtn").toggle();
	
}

// function previousWorkout() {
// 	debugger;
// }

class Comment{
	constructor(comment, name) {
		this.comment = comment;
		this.name = name;

	}
	getComment() {
		return `${this.name} commented: ${this.comment}`
	}
}

function sortWorkouts() {

  let sorted = placeHolder.sort(function(a, b){
    if(a.conditioning_type.toUpperCase() < b.conditioning_type.toUpperCase()) return -1;
    if(a.conditioning_type.toUpperCase() > b.conditioning_type.toUpperCase()) return 1;
    return 0;
  })
  	const template = Handlebars.compile(document.getElementById("workouts-template").innerHTML);
	const result = template(sorted);

	document.getElementById("workouts").innerHTML = result;
 
}


