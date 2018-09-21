# Thing Divider

This is a modeling of a Thing Divider problem, where Participants are allowed to pick their favourite Things. These Things,
some of which may have a minimum or maximum number of Participants, should be divided among them, so that each
Participant is allotted a single Thing. A Thing could be many things: a task, a thesis subject, a project to work on ...

Things may be mandatory, meaning that at least 1 Participant should be allotted
the Thing (this may be so if the Things are tasks). Things may also have a minimum and a maximum number of Participants.
This is a modeling of a fair system, where each Participant's happiness is maximized, and unhappiness, if unavoidable,
is randomly allotted.

# IDP

This modeling makes use of IDP. IDP is a Knowledge Representation system, developed by the KULeuven. Below you will find some
links regarding IDP.
- [More information about IDP](https://dtai.cs.kuleuven.be/software/idp)
- [Download](https://dtai.cs.kuleuven.be/software/idp/try) IDP
- IDP [tutorial](https://www.google.be/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=2ahUKEwi0mbuA5MvdAhVDxhoKHYG0D8EQFjAAegQIABAC&url=https%3A%2F%2Fdtai.cs.kuleuven.be%2Fkrr%2Ffiles%2FTutorial-IDP.tex&usg=AOvVaw2Wn0AQa1lO__NjTPCjuedq)
- IDP [manual](https://www.google.be/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwibvYSN5MvdAhXvyYUKHdHRAccQFjAAegQIABAC&url=https%3A%2F%2Fdtai.cs.kuleuven.be%2Fkrr%2Ffiles%2Fbib%2Fmanuals%2Fidp3-manual.pdf&usg=AOvVaw17TRxpBS3ROSezHBB6F5Aw)

# Disclaimer
This is still a work in progress, and it does not work as advertised yet.

## Future plans

This is a first attempt at the modeling. I am planning to expand the modeling so that a participant can be allotted multiple
Things. This situation could occur for example if the Things represent tasks, and each Participant is supposed to work
perform 2 tasks. An additional improvement could be to weight the Things, so that some tasks may require another task to
be allotted to the Participant, and some tasks may be sufficient on their own.

When I am satisfied with the modelling, I will attempt to create a web application around it, where organizers can set up
the Things and view the results, and Participants can vote their preferences.
