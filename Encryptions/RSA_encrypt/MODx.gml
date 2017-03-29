// MODx (a, b, p): power (a, b) mod p 

if (argument1 <= 2) 
{ 
    return power (argument0, argument1) mod argument2; 
} 
else if (argument1 mod 2 == 0) 
{ 
    return (MODx (argument0, argument1 / 2, argument2) * MODx (argument0, argument1 / 2, argument2)) mod argument2 
} 
else 
{ 
    return (MODx (argument0, argument1-1 , argument2) * MODx (argument0,1, argument2)) mod argument2 
}


