show_debug_message("Unit Test finished. Averaged results are:");
for(var _i = 0; _i < array_height_2d(resultsArray2d); _i++)
{
    var _str = "";
    _str += string(resultsArray2d[_i, 0]);
    _str += string(resultsArray2d[_i, 2] / stepPerTest);
    show_debug_message(_str);
}