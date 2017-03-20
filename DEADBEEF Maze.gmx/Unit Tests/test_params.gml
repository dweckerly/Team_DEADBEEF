switch(requiredArgs)
{
    case 0:
        script_execute(chosenScript);
    break;
    case 1:
        script_execute(chosenScript,
            argsArray2d[0, 3]);
    break;
    case 2:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3]);
    break;
    case 3:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3]);
    break;
    case 4:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3]);
    break;
    case 5:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3]);
    break;
    case 6:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3]);
    break;
    case 7:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3]);
    break;
    case 8:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3]);
    break;
    case 9:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3], argsArray2d[8, 3]);
    break;
    case 10:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3], argsArray2d[8, 3],
            argsArray2d[9, 3]);
    break;
    case 11:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3], argsArray2d[8, 3],
            argsArray2d[9, 3], argsArray2d[10, 3]);
    break;
    case 12:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3], argsArray2d[8, 3],
            argsArray2d[9, 3], argsArray2d[10, 3], argsArray2d[11, 3]);
    break;
    case 13:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3], argsArray2d[8, 3],
            argsArray2d[9, 3], argsArray2d[10, 3], argsArray2d[11, 3],
            argsArray2d[12, 3]);
    break;
    case 14:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3], argsArray2d[8, 3],
            argsArray2d[9, 3], argsArray2d[10, 3], argsArray2d[11, 3],
            argsArray2d[12, 3], argsArray2d[13, 3]);
    break;
    case 15:
        script_execute(chosenScript,
            argsArray2d[0, 3], argsArray2d[1, 3], argsArray2d[2, 3],
            argsArray2d[3, 3], argsArray2d[4, 3], argsArray2d[5, 3],
            argsArray2d[6, 3], argsArray2d[7, 3], argsArray2d[8, 3],
            argsArray2d[9, 3], argsArray2d[10, 3], argsArray2d[11, 3],
            argsArray2d[12, 3], argsArray2d[13, 3], argsArray2d[14, 3]);
    break;
}