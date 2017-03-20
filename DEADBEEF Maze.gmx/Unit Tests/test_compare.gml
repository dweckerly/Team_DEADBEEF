var _buff = buffer_create(argument0, buffer_fast, 1);
var _size = buffer_get_size(_buff);

var _mostSignificantByte = argument1 >> 8;
var _leastSignificantByte = argument1 ^ (_mostSignificantByte << 8);

buffer_poke(_buff, _size - 2, buffer_u8, _mostSignificantByte);
buffer_poke(_buff, _size - 1, buffer_u8, _leastSignificantByte);

var _returnValue1 = 0;
var _returnValue2 = 0;

var _time = get_timer();
for(var _i = 0; _i < iterPerStep; _i++)
{
    _returnValue1 = buffer(_buff);
}
_time = get_timer() - _time;

resultsArray2d[0, 0] = "buffer: ";
resultsArray2d[0, 1] = _time;

var _time = get_timer();
for(var _i = 0; _i < iterPerStep; _i++)
{
    _returnValue2 = buffer(_buff);
}
_time = get_timer() - _time;

resultsArray2d[1, 0] = "buffer: ";
resultsArray2d[1, 1] = _time;