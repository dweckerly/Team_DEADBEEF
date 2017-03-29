generatePublicKeys() // (e) 
// where e is a public key that is Relatively prime to m

a = 23;
b = 11;

global.n = a * b 
global.m = (a-1) * (b-1) 
globally. e = argument0
 
var k = 1

while ((1 + k * global.m) mod global.e <> 0) 
{ 
    k++; 
}
global.d = (1 + k * global.m) /global.e
