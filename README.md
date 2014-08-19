parsecsv
========

Static library to parse csv file into a NSArray object



You can parse a simple csv file by providing the file path to the method parseCsvIntoArrayFromFilePath.

Add the files parsecsv.m and parsecsv.h to your project and import the header file.

Call the method as follows: // Ensure the file path exists. NSArray * csvValues = [ParseCSV parseCsvIntoArrayFromFilePath:filePath];

Now the array csvValues contains arrays of strings from the file. You can iterate through each object and get the required strings.
