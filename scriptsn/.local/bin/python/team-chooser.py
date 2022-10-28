from random import choice

players = ['John', 'Noah', 'Jack', 'Dee', 'Henry', 'Donald', 'Bob', 'Billy']

print(players)

teamA = []

teamB = []

playerA = choice(players)
print(playerA)
teamA.append(playerA)
players.remove(playerA)
print('Players left:', players)


playerB = choice(players)
print(playerB)
teamA.append(playerB)
players.remove(playerB)
print('Players left:', players)
