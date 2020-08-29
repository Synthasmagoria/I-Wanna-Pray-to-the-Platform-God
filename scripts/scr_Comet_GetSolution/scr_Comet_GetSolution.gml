///@desc Generates the solution to the comet puzzle
///@func scr_Comet_GetSolution(seed)
///@arg seed

random_set_seed(argument[0]);

var choice_number, choice;
choice_number = 12;
choice = array_create(choice_number);

for (var i = 0; i < choice_number; i++) {
	choice[i] = i;
}

var solution_number, solution, choice_index;
solution_number = 6;
solution = array_create(solution_number);
choice_index = 0;

for (var i = 0; i < solution_number; i++) {
	choice_index = irandom(choice_number - 1);
	solution[i] = choice[choice_index];
	
	for (var ii = choice_index + 1; ii < choice_number; ii++) {
		choice[ii - 1] = choice[ii];
	}
	
	choice_number--;
}

randomize();

return solution;
