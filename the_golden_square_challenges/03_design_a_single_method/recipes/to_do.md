1. Describe the Problem

The problem for this task is that the user wants to keep track of tasks - importantly, this is achieved by checking if a text string 
includes the string #TODO.

2. Design the Method Signature

# Method name to_do

# one parameter => text = string => returns text if it includes #TODO string within.

def to_do(text)
    ... checks if text includes the string #TODO ...
    if text == #TODO 
        return text
    else 
        return "All up to date"
end 

3. Create Examples as Tests

to_do(TEXT_WITH_#TODO) => return "TEXT"

to_do(TEXT_WITHOUT_#TODO) => return "All up to date"

to_do(TEXT_WITH_#TODO_IN_DIFFERENT_CASES) => return "TEXT"
 
4. Implement the Behaviour

