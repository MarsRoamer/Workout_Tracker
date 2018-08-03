// const clickCount = 0
	// $(function(){
	// 	$("#previous-workout").on("click", function(element) {
	// 		let id = parseInt($("#previous-workout").attr("data-id")) + 1;
	// 		$.getJSON("/workouts/display?workout_id=" + id, function(data) {

 //      			$("#wodName").text(data["name"]);
 //      			$("#wodType").text(data["conditioning_type"]);
 //      			$("#wodDescription").text(data["description"]);
 //      			$("#previous-workout").attr("data-id", data["id"]);
 //    		});
			
	// 	})
	// })



function getWorkouts(gym) {

	fetch('/workouts/test?gym_id=' + gym)
		.then(function(response) {
			console.log(response)
			return response.json();
		})
		.then(function(myjson){

			const template = Handlebars.compile(document.getElementById("workouts-template").innerHTML);
			const result = template(myjson.workouts);

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

function previousWorkout() {
	debugger;
}

class Comment{
	constructor(comment, name) {
		this.comment = comment;
		this.name = name;

	}
	getComment() {
		return `${this.name} commented: ${this.comment}`
	}
}

