Link to mockup: https://moqups.com/#!/edit/mlgiardina/9xPy7ulu

## Models - total time: 10 minutes
  -- User
    -- has_many :bleeps
  -- Bleep
    -- belongs_to :user

## Controllers - total time: 1 hour
  - Bleeps
    - Create
    - Show
    - Delete
    - Edit
  - Users
    - create
    - show
    - delete
    - edit

## Views/Routes - total time: 4 hours
  - welcome/index
  - bleep/show
  - bleep/create
  - bleep/edit
  - user/index
  - user/show
  - user/create
  - user/edit

## UMLs
|Bleeper|
|-------|	
|create|	
|show	|	
|edit|
|delete|

- | belongs
- |		to
- V	 

|User|
|-----|
|create|
|show|
|edit|
|delete|	