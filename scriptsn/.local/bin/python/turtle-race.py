from turtle import *
from random import randint

speed(0)
penup()
goto(-140, 140)

# lines
for step in range(15):
    write(step, align='center')
    right(90)
    forward(10)
    pendown()
    forward(150)
    penup()
    backward(160)
    left(90)
    forward(20)

# turtles
ada = Turtle()
ada.color('red')
ada.shape('turtle')

ada.penup()
ada.goto(-160, 100)
ada.pendown()

bob = Turtle()
bob.color('blue')
bob.shape('turtle')

bob.penup()
bob.goto(-160, 80)
bob.pendown()

susy = Turtle()
susy.color('green')
susy.shape('turtle')

susy.penup()
susy.goto(-160, 60)
susy.pendown()

# race
for turn in range(100):
    ada.forward(randint(1, 5))
    bob.forward(randint(1, 5))
    susy.forward(randint(1, 5))

# turn 360 degrees
for turn in range(5):
    ada.right(72)
    bob.right(72)
    susy.right(72)
