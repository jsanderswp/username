# README for Username Validation Script

## Author Information
- **Name:** Jackson Sanders
- **Course:** CPSC 298
- **Assignment:** Username Validation
- **Date:** 01/20/2026

## Program Description
This script begins by describing username requirements to a user and prompting them for input. It then checks their username string against the requrements using regualr expressions. Users are provided error messages if they provide invalid input, and a thank you message if they provide valid input.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
The while loop uses a variable called "valid" that is set to the value of "false". The loop will run as long as "valid" has this value. The first check that is made within the if statement is whether or not the username starts with a lowercase letter, which is made using the ^ character outside the brackets to denote the beginning of the string, and =~ (contains). The next two checks are for length, which make use of the -lt and -gt to check if the string is between 3 and 12 characters. Lastly, the final check is for if the string contains invalid characters, which is made with =~ and [] containing all valid characters.

## Regular Expression Pattern
The validation uses the following regular expression patterns:
```
^[a-z]
[^a-z0-9_]
```
These patterns ensure that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The length checking was done with -gt and -lt

## Testing Results
I tried 6 different usernames.

Jackson - failed
jackson - passed
us - failed
usususususususususus - failed
user& - failed
jws123_456 - passed

## Challenges and Solutions
I am just not perfectly familiar with bash script syntax yet, and so there were a lot of little errors I needed to clean up.

## Resources
I used ChatGPT to debug after I had written the bulk of my script.

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
