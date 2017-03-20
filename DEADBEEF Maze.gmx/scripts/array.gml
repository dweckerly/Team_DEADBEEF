///array(*args);

/*
* @brief Script for instantiating an array as could be done in other high level languages
* @param All arguments to instantiate the array
*/

var arr;

for (var i = 0; i < argument_count; i += 1) {
    arr[i] = argument[i];
}
return arr;
