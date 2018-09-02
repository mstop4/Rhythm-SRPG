/// @arg m
/// @arg n
/// @arg modulo

var _m = argument[0];
var _n = argument[1];
var _mod = argument[2];

return ((((_m - _n) mod _mod) + _mod * 1.5) mod _mod) - _mod * 0.5;