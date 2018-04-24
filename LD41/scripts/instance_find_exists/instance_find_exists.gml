///instance_find_exists(object, n)
/* Returns the id of the (n)th non-destroyed instance of a given object */
//NOTE: The original instance_find() may return instances previously marked for destruction
objectID = argument0;
objectIndex = argument1;

//Declare local variables
var n;
var nInstance;

//Initialize the return value
nInstance = noone;

//Cycle over each instance of the selected object
n = 0;
while (n <= objectIndex) {
    //NOTE: Instances marked for destruction may be pulled from this find
    nInstance = instance_find(objectID, n);

    //Check if the selected instance has been marked for destruction
    if (!instance_exists(nInstance)) {
        //Increment the effective instance index
        objectIndex += 1;
    };

    //Exit the search if no more instances are available
    if (nInstance == noone) {
        break;
    };

    //Increment the instance check index
    n += 1;
};

//Return the (n)th non-destroyed instance
return nInstance;