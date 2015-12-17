My Board Game Diary
===================

Purpose
-------
This app was built as a way to record board game meetup attendance and gaming action. Users are able to create meetups with players and further assign these players to game events representing a single instance of a game being played.

Organization
------------
**Meetups** are the broadest level of structure in the app. They represent the general set of time at which games might have been played. Meetups have a name, a location, and a date, for example: "New Year's Party" at "Jenna's house" on "1-1-2015". Furthermore, you can add players to meetups to note in general who was in attendance.

**Events** represent a single instance of a game being played at a meetup, for example, a playing of *Pandemic*. If a game is played multiple times at the meetup, each of these will be different events. Players from the meetup can be assigned as players in a particular game event, and there is opportunity to fill out other fields like a game rating and a description of the outcome of the game.

**Players** are the people! They can be added to meetups and subsequently to events. Players cannot be added to a game event if they are not first added to the meetup containing that event.

**Games** represent board games. At least for now, each game object represents an abstract instance of that game, *not* a particular copy that belongs to a particular player. Therefore, there should be only one listing of a particular game in the Game model.

**Meetups**, **Events**, **Players**, and **Games** are all models in the application, and there is CRUD functionality for each of them.
