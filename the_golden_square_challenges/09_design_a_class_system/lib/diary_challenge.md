1. Describe the Problem

<!-- As a user
So that I can record my experiences
I want to keep a regular diary -->

<!-- As a user
So that I can reflect on my experiences
I want to read my past diary entries -->

<!-- As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed -->

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System

``` ruby

class Diary_Entries
    def initialize
        @diary_entry = ''

    def entry(diary_entry)
        return @diary_entry
        
    def word_count
        return @diary_entry.split.size
    

class Read_Diary_Entries
        def initilize
            @diary_list = []
        
        def add_entries(entries)
            @diary_list << entries
        
        def read_diary_entries
            return @diary_list

class Busy_day_reading 
          
            
``` 

3. Create Examples as Integration Tests

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

Encode one of these as a test and move to step 4.

4. Create Examples as Unit Tests

Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

Encode one of these as a test and move to step 5.

5. Implement the Behaviour

For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.