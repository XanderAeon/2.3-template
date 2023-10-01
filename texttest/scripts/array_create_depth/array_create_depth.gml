function array_create_depth(sizes=[0]) {
	var array = [noone];
	var friend = array;
	var i, j;
	iterate sizes to {
		for (j=0; j<array_length(friend); j++) {
			friend[j] = array_create(sizes[i], "depth " + string(i));
		}
		friend = friend[0];
	}
	return array;
}

function array_get_depth(array) {
	var dude = array;
	var i;
	get_arguments();
	for (i=1; i<array_length(arguments); i++) {
		try {
			dude = dude[arguments[i]];
		} catch(e) {
			dude = [];
			dude = array[arguments[i]];
		}
	}
	return dude;
}
//log(array_create_depth([3, 4, 5, 6]));
//array_create_depth failure no. 4.
//getting closer.