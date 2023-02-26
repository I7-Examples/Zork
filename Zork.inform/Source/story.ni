"Zork" by Dean Menezes

Include (- Serial "071102"; -).


Part 1 - New Actions and Concepts

The story genre is "Fantasy". 
The story headline is "A Computerized Fantasy Simulation Game".
Use memory economy.
When play begins:
Change the description of yourself to "That's difficult unless your eyes are prehensile.";
silently switch score notification off;
decrease turn count by 1;
clear the screen;
say "[line break]".

When play begins: 
To silently switch score notification off: 
        (- notify_mode = 0; -). 

Instead of throwing something at the player:
  say "A terrific throw! [The noun] hits you squarely in the head. Normally, this
wouldn't do much damage, but by incredible mischance, you fall over backwards
trying to duck, and break your neck, justice being swift and merciful in the
Great Underground Empire.";
  end the game in death.
Wishing is an action applying to nothing. Understand "wish" and "make wish" and "make a wish" as wishing.
Understand "$VERIFY" as verifying the story file.
Carry out wishing:  
if the player is in Top of Well or the player is in Circular Room and the player is holding the bag of coins begin;
  say "A whispering voice replies, 'Water makes the bucket go.'
Unfortunately, wishing makes the coins go...";
  remove the bag of coins from play;
else;
  say "No one is listening.";
end if.
A room can be indoors or outdoors. A room is usually indoors. 
Understand "wall" as a direction when the location is indoors. 
Understand "cretin" as yourself.
The former location is a room that varies.
First carry out going rule: 
    change the former location to the location. 
Use the serial comma.
Include Basic Help Menu by Emily Short.
Include Punctuation Removal by Emily Short.
Include Basic Screen Effects by Emily Short.
Before swearing obscenely:
  say "[one of]Such language in a high-class establishment like this![or]Oh, dear. Such language from a supposedly winning adventurer![or]You ought to be ashamed of yourself.[or]It's not so bad. You could have been killed already.[or]Tough shit, asshole.[at random]" instead.
After reading a command:
     remove stray punctuation;
     if the player's command includes "&", replace the matched text with "and".
Understand "gdt" as a mistake ("If you want to debug the game, use the standard Inform debugging verbs."). 
Understand "noobj" as a mistake ("In the MDL sources, NOOBJ is described as a 'hack'. As we are above such practices, NOOBJ is not implemented.").
Reading it through is an action applying to two things. Understand "examine [something] in [something]" as reading it through. Understand "examine [something] through [something]" as reading it through.
Understand "read [something] in [something]" as reading it through. Understand "read [something] through [something]" as reading it through.
Check reading it through:
if the second noun is the flask and the noun is the red cake begin;
  say "The icing, now visible, says 'Evaporate'.";
else if the second noun is the flask and the noun is the blue cake;
  say "The icing, now visible, says 'Enlarge'.";
else if the second noun is the flask and the noun is the orange cake;
  say "The icing, now visible, says 'Explode'.";
else if the second noun is not transparent and the second noun is not the flask;
    say "How does one look through [a second noun]?" instead;
else if the second noun is the bottle and the noun is the red cake or the blue cake or the orange cake;
   say "The letters appear larger but are still too small to read.";
else;
   try examining the noun instead;
  end if.
Understand "board [something]" as entering.
Understand "disembark" as exiting.
Understand "climb [direction]" as going.
Understand "light [electric lamp]" as switching on.
Understand "extinguish [electric lamp]" as switching off.
Understand "douse [electric lamp]" as switching off.
Understand "climb through [something]" as climbing.
Understand "what is [something]" as examining.

Understand "mumble" and "sigh" as a mistake ("You'll have to speak up if you want me to hear you.").

Understand "repent" as a mistake ("It may well be too late.").
Ringing is an action applying to one carried thing.  Understand "ring [something]" as ringing.
Check ringing:
if the noun is not a bell, say "How, exactly, do you ring that?" instead.
Carry out ringing:
say "Ding Dong."
A bell is a kind of thing.
Your bare hands are a part of the player.
Understand the command "stab" as "attack".

The better attacking rule is listed instead of the block attacking rule in the check attacking rulebook.
This is the better attacking rule:
if dead flag is 1, say "All such attacks are vain in your position." instead;
if the player is carrying a weapon (called the blade), try attacking the noun with the blade instead;
if the noun is the player begin;
  say "If you insist... Poof, you're dead!";
  end the game in death instead;
end if;
say "You'll have to say with what you want to attack [the noun].".
Poking is an action applying to one visible thing. Understand "poke [something]" and "blind [something]" as poking.
Check poking:
if the noun is not the Cyclops, try attacking the noun instead.
Carry out poking: say "'Do you think I'm as stupid as my father?' he says, dodging."
When play begins:
choose row 1 in Table of Basic Help Options;
change description entry to "Welcome to Zork![paragraph break]   You are near a large dungeon, which is reputed to contain vast quantities of treasure.  Naturally, you wish to acquire some of it.  In order to do so, you must of course remove it from the dungeon. To receive full credit for it, you must deposit it safely in the trophy case in the living room of the house.[paragraph break]   In addition to valuables, the dungeon contains various objects which may or may not be useful in your attempt to get rich.  You may need sources of light, since dungeons are often dark, and weapons, since dungeons often have unfriendly things wandering about.  Reading material is scattered around the dungeon as well;  some of it
is rumored to be useful.[paragraph break]   To determine how successful you have been, a score is kept. When you find a valuable object and pick it up, you receive a certain number of points, which depends on the difficulty of finding the object.  You receive extra points for transporting the treasure
safely to the living room and placing it in the trophy case.  In addition, some particularly interesting rooms have a value associated with visiting them.  The only penalty is for getting yourself killed, which you may do only twice.[paragraph break]   Of special note is a thief (always carrying a large bag) who likes to wander around in the dungeon (he has never been seen by the light of day).  He likes to take things.  Since he steals for pleasure rather than profit and is somewhat sadistic, he only takes things which you have seen.  Although he prefers valuables, sometimes in his haste
he may take something which is worthless.  From time to time, he examines his take and discards objects which he doesn't like.  He may occasionally stop in a room you are visiting, but more often he just wanders through and rips you off (he is a skilled pickpocket).".

Rule for deciding whether all includes the quantity of water: if the quantity of water is in the bottle, it does not; else it does.
Rule for deciding whether all includes things which are fixed in place: it does not.
Understand "bye" and "goodbye" as quitting the game.

Understand "WIN" and "WINNAGE" as a mistake ("Naturally!").
Understand "LOSE" and "CHOMP" as a mistake ("I don't know how to do that: I win in all cases.").

Understand "foo" and "bar" and "bletch" as a mistake ("Oh yeah, well FOO, BAR, and BLETCH to you too.").

Understand "PLUGH" and "XYZZY" as a mistake ("A hollow voice says 'Fool'.").

Understand "back" and "go back" as a mistake ("He who puts his hand to the plow and looks back is not fit for the kingdom of winners.  In any case, 'BACK' doesn't work.").

Odysseusing is an action applying to nothing. Understand "ODYSSEUS" and "ULYSSES" as Odysseusing.  Carry out odysseusing: say "Wasn't he a sailor?".

Understand "ZORK" and "DUNGEON" as a mistake ("At your service!").

Swimming is an action applying to nothing. Understand "SWIM" as swimming. 
Carry out swimming: 
  if the player can see a watersource begin;
    say "Swimming is not allowed in this dungeon.";
  else;
    say "I think swimming is best accomplished in water.";
  end if.
Understand "water" as a watersource.
Understand "bug" as a mistake ("It's not a bug, its a feature.").

Understand "feature" as a mistake ("That's right.").

Finding is an action applying to one visible thing. Understand "find [something]" as finding. Understand "locate [something]" as finding. Understand "where is [something]" as finding.
Check finding:
if the noun is the player, say "You're around here somewhere..." instead;
if the noun is the white house, say "It's right here! Are you blind or something?" instead;
if the noun is your hands, say "Within six feet of your head, assuming you haven't left that somewhere." instead;
if the noun is the lurking grue, say "There is no grue here, but I'm sure there is at least one lurking in the darkness nearby. I wouldn't let my light go out if I were you!" instead.
Carry out finding:
say "It's right here."

The better drinking rule is listed instead of the block drinking rule in the check drinking rulebook.
This is the better drinking rule:
if the noun is the quantity of water begin;
  say "Thank you very much -- I was very thirsty (probably from all this talking).";
  remove the noun from play;
else if the noun is the water;
  say "Thank you very much -- I was very thirsty (probably from all this talking).";
else;
  say "I don't think [the noun] would agree with you." instead;
end if.

Greeting is an action applying to nothing. Understand "hello" and "hi" and "greetings" as greeting. Carry out greeting: say "[one of]Hello[or]Good day[or]Nice weather we've been having lately[or]Goodbye[at random]."

Praying is an action applying to nothing. Understand "pray" as praying. 
Check praying:
if the player is not in Altar and dead flag is 1, say "Your prayers are not heard." instead;
if the player is not in Altar, say "If you pray enough, your prayers may be answered." instead.

Carry out praying:
if dead flag is 1, say "From the distance the sound of a lone trumpet is heard.  The room
becomes very bright, and you feel disembodied.  In a moment, the brightness fades, and you find yourself rising, as if from a long sleep, deep in the woods.  In the distance you can faintly hear a song bird and the sounds of the forest.";
now the player is unlit;
move the player to Forest 1.

A secret door is a kind of door.
A secret door can be revealed or unrevealed.
A secret door is unrevealed.
A secret door is scenery.
A secret door is closed.
A secret switch is a kind of thing.
A secret switch can be revealed or unrevealed.
A secret switch is unrevealed.
A secret switch is scenery.

To print the you can't go message:
	(- L__M(##Go, 2, 0); -).

To print the you can't see message:
	(- L__M(##Miscellany, 30, 0); -).

Rule for printing the description of a dark room: say "It is pitch black.  You are likely to be eaten by a grue." instead. 
Rule for printing a refusal to act in the dark: say "It is too dark in here to see." instead.
Before going through a secret door which is unrevealed:
	print the you can't go message instead.

Before doing something to a secret door which is unrevealed:
	print the you can't see message instead.

Before doing something when when a secret door is the second noun and the second noun is unrevealed:
	print the you can't see message instead.

Before doing something to a secret switch which is unrevealed:
	print the you can't see message instead.

A thing has a number called case-points. The case-points of a thing is usually 0.

After inserting a thing (called the treasure) into the trophy case: 
award case-points of the treasure points; 
continue the action. 

The taking action has an object called the place taken from (matched 
as "from"). 
Setting action variables for taking: 
        now the place taken from is the holder of the noun. 
After taking a thing (called the treasure) from the trophy case: 
        award zero minus case-points of the treasure points; 
        continue the action.
To say banknotes:
say line break;
say fixed letter spacing;
say " _______________________________________________________________[line break]";
say "| 1  0   0         GREAT UNDERGROUND EMPIRE           1  0   0  |[line break]";
say "| 1 0 0 0 0                                           1 0 0 0 0 |[line break]";
say "| 1 0 0 0 0                                           1 0 0 0 0 |[line break]";
say "| 1  0   0                  DIMWIT                    1  0   0  |[line break]";
say "|                      ||||||||||||||||                         |[line break]";
say "|                      ||   __  __   ||              B30332744D |[line break]";
say "|                      ||  -OO  OO-  ||                         |[line break]";
say "|       IN FROBS       [unicode 92]||    >>    ||/       WE TRUST          |[line break]";
say "|                       ||  ______  ||                          |[line break]";
say "| B30332744D             |  ------  |                           |[line break]";
say "|                        [unicode 92][unicode 92]________//                           |[line break]";
say "| 1  0   0    Series       FLATHEAD     LD Flathead   1  0   0  |[line break]";
say "| 1 0 0 0 0   719GUE                     Treasurer    1 0 0 0 0 |[line break]";
say "| 1 0 0 0 0                                           1 0 0 0 0 |[line break]";
say "| 1  0   0        One Hundred Royal Zorkmids          1  0   0  |[line break]";
say "|_______________________________________________________________|[line break][variable letter spacing]".
To say flathead: 
               say fixed letter spacing; 
   say "               |||||||||||||| [line break]"; 
   say "              ||   __  __   || [line break]"; 
   say "              ||   $$  $$   || [line break]"; 
   say "             [unicode 92]||     >>     ||/ [line break]"; 
   say "              ||  ________  || [line break]"; 
   say "               |  -//-----  | [line break]"; 
   say "               [unicode 92][unicode 92]_//_______// [line 
break]"; 
   say "              ___// |  | [line break]"; 
   say "             /__//  |  | [line break]"; 
   say "                    |  | [line break]"; 
   say "         __________//  [unicode 92][unicode 92]__________ 
[line break]"; 
   say "        / $ /       ****       [unicode 92] $ [unicode 92] 
[line break]"; 
   say "       /   /         **         [unicode 92]   [unicode 92] 
[line break]"; 
   say "      /   /|         **         |[unicode 92]   [unicode 92] 
[line break]"; 
   say "     /   / |         **         | [unicode 92]   [unicode 92] 
[line break]"; 
   say "    /   /  |         **         |  [unicode 92]   [unicode 92] 
[line break]"; 
   say "    ^   ^__|______$Z$**$Z$______|__^   ^ [line break]"; 
   say "    [unicode 92]         *   $Z$**$Z$   *         / [line 
break]"; 
   say "     [unicode 92]________*___$Z$**$ Z$___*________/ [line 
break]"; 
   say "           |      $Z$**$Z$      | [line break]"; 
   say "           J   PIERPONT  FLATHEAD [line break]"; 
   say "                  CHAIRMAN[line break]";
  say variable letter spacing.
Rotation speed is a number that varies. Rotation speed is usually 1.
Rotation room is a number that varies. Rotation room is usually 1.
The going action has a number called the dark terminus count. 
Setting action variables for going: 
    now the dark terminus count is 0; 
    if in darkness, increase the dark terminus count by 1. 
The last carry out going rule: 
    if in darkness, increase the dark terminus count by 1.
After going:
  if the dark terminus count is 2, set off the grues;
  else continue the action.
To set off the grues:
say "Oh no! You walked directly into the slavering fangs of a lurking grue!";
end the game in death.

A weapon is a kind of thing.
Understand the command "swing" as something new.
Swinging it is an action applying to one carried thing.  Understand "swing [something]" as swinging it.
Carry out swinging it:
if dead flag is 1, say "All such attacks are vain in your position." instead;
if the player can see a person (called the villain) who is not the player, try attacking the villain with the noun instead;
say "Please specify at what do you wish to swing the [noun]."
Procedural rule while attacking something with your bare hands: ignore the carrying requirements rule. 
Procedural rule while destroying something with your bare hands: ignore the carrying requirements rule.
Attacking it with is an action applying to one visible thing and one carried thing.
Understand "attack [something] with [something]" as attacking it with.
Understand "attack [something] using [something]" as attacking it with.
Carry out attacking it with:
if dead flag is 1, say "All such attacks are vain in your position." instead;
if the noun is the player begin;
say "If you insist... Poof, you're dead!";
end the game in death instead;
end if;
if the noun is not a person, say "I've known strange people, but attacking [a noun]?" instead;
if the second noun is not a weapon, say "Trying to kill [a noun] with only [a second noun] very self-destructive." instead. 
The lurking grue is a backdrop. The lurking grue is everywhere.
The description of the lurking grue is "The grue is a sinister, lurking presence in the dark places of the earth. Its favorite diet is adventurers, but its insatiable appetite is tempered by its fear of light. No grue has ever been seen by the light of day, and few have survived its fearsome jaws to tell the tale."

Understand the commands "destroy",  "break", "hit", and "smash"  and "thump" as something new.
 Destroying is an action applying to one visible thing. 
Understand "destroy [something]" as destroying.
Understand "mangle [something]" as destroying. 
Understand "mung [something]" as destroying. 
Understand "break [something]" as destroying. 
Understand "hit [something]" as destroying.
Understand "smash [something]" as destroying.
Understand "thump [something]" as destroying.
Carry out destroying:
if dead flag is 1, say "All such attacks are vain in your position." instead;
if the noun is a person, try attacking the noun instead; 
say "Trying to destroy [a noun] is not notably useful."

Destroying it with is an action applying to one visible thing and one carried thing. Understand "destroy [something] with [something]" as destroying it with.
Understand "mangle [something] with [something]" as destroying it with. Understand "mung [something] with [something]" as destroying it with . Understand "break [something] with [something]" as destroying it with. Understand "smash [something] with [something]" as destroying it with. Understand "swing [something] at [something]" as destroying it with (with nouns reversed).
Understand "mangle [something] using [something]" as destroying it with. Understand "mung [something] using [something]" as destroying it with . Understand "break [something] using [something]" as destroying it with. Understand "smash [something] using [something]" as destroying it with. Understand "thump [something] with something" as destroying it with. Understand "thump [something] using [something]" as destroying it with. Understand "destroy [something] using [something]" as destroying it with.
Carry out destroying it with:
if dead flag is 1, say "All such attacks are vain in your position." instead;
if the noun is a person, try attacking the noun with the second noun instead; 
say "Trying to destroy [a noun] is not notably useful."
Instead of searching a door: 
    say "[The noun] is [if open]open, but I can't see what's beyond it.[otherwise]closed.[end if]".


Understand "frobozz" as a mistake ("The Frobozz Company, Ltd., created, owns, and operates this dungeon.").

Understand "schedule" as a mistake ("The dungeon is ALWAYS open (always room for one more).").

Understand "time" as a mistake ("You have been playing Zork for longer than you think.").

Treasure-travelling is an action applying to nothing. Understand "treasure" as treasure-travelling. Check treasure-travelling: if the player is not in Temple, say "Nothing happens." instead.
Carry out treasure-travelling: move the player to Treasure Room.
Temple-travelling is an action applying to nothing. Understand "temple" as temple-travelling. Check temple-travelling: if the player is not in Treasure Room, say "Nothing happens." instead.
Carry out temple-travelling: move the player to Temple.
Hi-saying is an action applying to one visible thing. Understand "hello [something]" and "hi [something]" as hi-saying.
Check hi-saying:
if the noun is the sailor, say "Nothing happens here." instead;
if the noun is the aviator, say "Here, nothing happens." instead;
if the noun is not a person, say "I think that only schizophrenics say 'Hello' to [a noun]." instead.
Carry out hi-saying:
say "[The noun] bows his head to you in greeting."
Instead of asking someone to try greeting: try hi-saying the noun instead.
The sailor is a backdrop. The sailor is everywhere. 
The aviator is a backdrop. The aviator is everywhere. Understand "flyer" as the aviator.
Brochure flag is a number that varies. Brochure flag is usually 0.
Sending for is an action applying to one visible thing. Understand "send for [something]" as sending for. Understand "send [something]" as sending for.
Check sending for:
if the noun is not the obj1234, say "Why would you send for that?" instead.
Carry out sending for the free brochure:
if brochure flag is 0 begin;
  say "OK, but you know the postal service...";
  change brochure flag to 1;
else if brochure flag is 1;
  say "It's probably on its way now.";
else if brochure flag is 2;
  say "What, you mean you need another one?";
end if.

The obj1234 is a backdrop. The obj1234 is everywhere. Understand "brochure" and "free brochure" as the obj1234. The free brochure is a thing. 
Instead of doing something other than sending for to the obj1234: print the you can't see message instead.
The description of the brochure is "[brochure text]".
Does the player mean sending for the obj1234: it is very likely.
Does the player mean doing something to the free brochure: it is very likely.
To say brochure text:
say "The mailing label on this glossy brochure from MIT Tech reads [paragraph break]";
say "               Intrepid Adventurer[line break]";
say "               c/o Local Dungeon Master[line break]";
say "               White House, GUE[line break]";
say "From the Introduction:[paragraph break]";
say "The brochure describes, for the edification of the prospective student, the stringent but wide-ranging curriculum of MIT Tech.  Required courses are offered in Ambition, Distraction, Uglification, and Derision.  The Humanities are not slighted at this institution, as the student may register for Reeling and Writhing, Mystery (Ancient and Modern), Seaography, and Drawling (which includes Stretching and Fainting in Coils).  Advanced students are expected to learn Laughing and Grief.[paragraph break]";
say "                                 William Barton Flathead, Founder[paragraph break]";
say  "(The brochure continues in this vein for a few hundred more pages.)[line break]";
say  "[if the Don Woods stamp is a part of the brochure]Affixed loosely to the brochure is a small stamp.[end if]".
The Don Woods stamp is a part of the brochure.
Procedural rule when taking the Don Woods stamp: 
        ignore the can't take component parts rule.
The description of the Don Woods stamp is "[stamp text]".
To say stamp text:
say fixed letter spacing;
say "+--v----v----v----v----v--+[line break]";
say "|         _______         |[line break]";
say ">  One   /       [unicode 92]     G  <[line break]";
say "| Lousy /         [unicode 92]    U  |[line break]";
say "> Point |   ___   |    E  <[line break]";
say "|       |  (___)  |       |[line break]";
say ">       <--)___[unicode 40]-->    P  <[line break]";
say "|       / /     [unicode 92][unicode 92]     o  |[line break]";
say ">      / /       [unicode 92][unicode 92]    s  <[line break]";
say "|     |-|---------|-|  t  |[line break]";
say ">     | |  [unicode 92] _ /  | |  a  <[line break]";
say "|     | | --(_)-- | |  g  |[line break]";
say ">     | |  /| |[unicode 92]  | |  e  <[line break]";
say "|     |-|---|_|---|-|     |[line break]";
say ">      [unicode 92] [unicode 92]__/_[unicode 92]__/ /      <[line break]";
say "|       _/_______[unicode 92]_       |[line break]";
say ">      |  f.m.i.c. |      <[line break]";
say "|      -------------      |[line break]";
say ">                         <[line break]";
say "|   Donald Woods, Editor  |[line break]";
say ">     Spelunker Today     <[line break]";
say "|                         |[line break]";
say "+--^----^----^----^----^--+[line break]";
say variable letter spacing.
The case-points of the Don Woods stamp is 1.
The size of the free brochure is 30.
The size of the Don Woods stamp is 1.
Every turn:
if the player has been in Living Room for the second turn and brochure flag is 1 begin;
  say "There is a knocking sound from the front of the house.";
  change brochure flag to 2;
  move the free brochure to the mailbox;
end if.
Instead of hi-saying the sailor for the tenth time:
say "I think that phrase is getting a bit worn out."
Instead of hi-saying the sailor for the 20th time:
say "You seem to be repeating yourself."
Understand "pour [something] in/into/on/onto [something]" as inserting it into.
Understand "fill [something] with [something]" as inserting it into (with nouns reversed).
A watersource is a kind of thing. A watersource is always scenery.
A watersource can be drainable or nondrainable. A watersource is usually drainable.
A quantity of water is a thing.
The size of the quantity of water is 4.
When play begins: move the quantity of water to the bottle.
Instead of taking a watersource:
if the player is carrying the bottle, try inserting the noun into the bottle instead;
else say "The water slips through your fingers."
Instead of inserting a watersource into something:
if the second noun is closed begin;
  say "[The second noun] is closed." instead;
else if the second noun is not the bottle;
  say "The water leaks out of [the second noun] and evaporates immediately." instead;
else if something is in the bottle;
  say "The bottle is already full." instead;
else;
  say "The bottle is now full of water.";
  move the quantity of water to the bottle;
end if.
Instead of inserting the quantity of water into something:
if the second noun is closed begin;
  say "[The second noun] is closed." instead;
else if the second noun is not the bottle;
  say "The water leaks out of [the second noun] and evaporates immediately.";
  remove the quantity of water from play;
end if.
Instead of inserting the quantity of water into the bottle:
try taking the quantity of water instead.
Instead of inserting the quantity of water into an enterable container:
  if the bottle is closed, say "The bottle is closed." instead;
  say "There is now a puddle in the bottom of [the second noun].";
  now the quantity of water is in the second noun.
Instead of taking the quantity of water:
if the player is not carrying the bottle and the quantity of water is in the bottle begin;
  try taking the bottle instead;
else if the quantity of water is in the bottle;
  say "You already have it.";
else if the player is not carrying the bottle;
  say "The water slips through your fingers." instead;
else if the bottle is closed;
  say "The bottle is closed." instead;
else if something is in the bottle;
  say "The bottle is already full." instead;
else if the player is in the bucket;
  say "The bottle is now full of water.";
  move the quantity of water to the bottle;
  move the bucket to Circular Room;
else;
   say "The bottle is now full of water.";
  move the quantity of water to the bottle;
end if.
Instead of throwing the quantity of water at something:
  say "The water splashes on [the second noun] and evaporates immediately.";
  remove the quantity of water from play.
A persuasion rule for asking someone to try doing something when dead flag is 1:
say "No one hears you." instead.

Instead of dropping when the player's command includes "throw":
if the noun is the quantity of water begin;
  say "The water splashes on the walls and evaporates immediately.";
  remove the noun from play;
else;
  continue the action;
end if.
Instead of dropping the quantity of water when the player's command does not include "throw":
try pouring the noun instead.
Pouring is an action applying to one thing.
Understand "pour [something]" as pouring. 
Carry out pouring: 
if the noun is the bottle and the quantity of water is in the bottle begin;
 try pouring the quantity of water instead;
else if the noun is the quantity of water and the bottle is closed;
  say "You'll have to open the bottle first.";
else if the player is in the bucket;  
  move the quantity of water to the bucket;
  say "There is now a puddle in the bottom of the wooden bucket.";
  say "The bucket rises and comes to a stop.";
  try looking;
else if the noun is the quantity of water and the player is in an enterable container (called the conveyance);
   say "There is now a puddle in the bottom of [the conveyance].";
   move the quantity of water to the conveyance;
else if the noun is the quantity of water;
  say "The water spills all over the ground and evaporates immediately.";
  remove the quantity of water from play;
else if the noun is not a container;
  say "You must tell me how to do that.";
else if the noun is closed;
  say "You'll have to open [the noun] first.";
else;
  now everything which is in the noun is in the location;
  say "The contents of [the noun] spill out of [the noun] and onto the floor.";
end if.
Winding is an action applying to one carried thing. Understand "wind [something]" and "wind up [something]" and "wind [something] up" as winding.
Check winding: if the noun is not the canary and the noun is not the broken canary, say "You cannot wind up [a noun]." instead.
Understand the command "answer" as something new.
Understand the command "say" as something new.
Saying is an action applying to one topic. Understand "answer [text]" as saying.
Understand "say [text]" as saying.
Check saying:
if the player is not in Riddle Room or the topic understood does not include "well" or the great door is open, say "No one seems to be listening." instead.
Carry out saying:
say "There is a clap of thunder and the east door opens.";
now the great door is open;
now the great door is openable.
Leaving is an action applying to one visible thing. Understand "exit [something]" as leaving.
Check leaving:
if the player is not in the noun, say "How do you expect to do that when you aren't even in [the noun]?" instead;
try exiting.

Table of Rankings
Score	Rank
-31	"Incompetent"
0	"Beginner"
31	"Amateur Adventurer"
62	"Novice Adventurer"
123	"Junior Adventurer"
246	"Adventurer"
370	"Hacker"
493	"Winner"
554	"Master"
585	"Wizard"
616	"Cheater"	

Kicking is an action applying to one visible thing. Understand "kick [something]" as kicking.
Carry out kicking: if dead flag is 1, say "All such attacks are vain in your position." instead;
say "Kicking [a noun] is not notably useful."

Table of Fancy Status
left				central	right
" [the player's surroundings]"	""	"Score: [score]    Moves: [turn count]"

When play begins:
if wide enough,  change right alignment depth to 25;
else  change right alignment depth to 10.
Rule for constructing the status line:
     if wide enough, fill status bar with Table of Fancy Status;
    else fill status bar with Table of Ordinary Status;
     rule succeeds.
To decide whether wide enough:
(-(0->$21>=60)-).
Lamp-power is a number that varies. Lamp-power is usually 130.
Every turn:
  if the battery-powered brass lantern is switched on begin;
  decrease lamp-power by 1;
  if lamp-power is 50, say "The lamp appears to be getting dimmer.";
  if lamp-power is 30, say "The lamp appears to be getting dimmer.";
  if lamp-power is 20, say "The lamp appears to be getting dimmer.";
  if lamp-power is 10, say "The lamp appears to be getting dimmer.";
  if lamp-power is  4, say  "The lamp is dying.";
  if lamp-power is 0 begin;
    say "I hope you have more light than from a lamp.";
    now the battery-powered brass lantern is switched off;
  end if;
  end if.
Instead of switching on the battery-powered brass lantern when lamp-power is 0: say "The battery has died."

Load-max is a number that varies. Load-max is usually 100.
A thing has a number called size.  The size of a thing is usually 5.
A container has a number called capacity. The capacity of a container is usually 5.
Weight-sum is a number that varies. Weight-sum is usually 0.
Check the player taking something:
change weight-sum to 0;
repeat with item running through things had by the player begin;
  change weight-sum to weight-sum plus the size of item;
end repeat;
if weight-sum plus the size of the noun is greater than load-max, say "Your load is too heavy.  You will have to leave something behind." instead.
Check inserting something into something else:
change weight-sum to 0;
repeat with item running through things in the second noun begin;
  change weight-sum to weight-sum plus the size of item;
end repeat;
if weight-sum plus the size of the noun is greater than the capacity of the second noun, say "It won't fit." instead.
Lifting is an action applying to one visible thing. Understand "lift [something]" and "raise [something]" as lifting.
Check lifting:
if the noun is the rug begin;
say "The rug is too heavy to lift, but in trying to raise it you notice an irregularity beneath it.";
else if the noun is the basket;
  if the player is in Lower Shaft begin;
    say "The basket is raised to the top of the shaft.";
    move the basket to Shaft Room;
    move the fbasket to Lower Shaft;
  else;
    say "Playing in this way with [a noun] has no effect.";
  end if;
else if the noun is the fbasket;
  if the player is in Shaft Room begin;
    say "The basket is raised to the top of the shaft.";
    move the basket to Shaft Room;
    move the fbasket to Lower Shaft;
  else;
    say "The basket is at the other end of the chain.";
  end if;
else;
  say "Playing in this way with [a noun] has no effect.";
end if.
Lowering is an action applying to one visible thing. Understand "lower [something]" as lowering.
Check lowering:
if the noun is the basket begin;
  if the player is in Shaft Room begin;
    say "The basket is lowered to the bottom of the shaft.";
    move the fbasket to Shaft Room;
    move the basket to Lower Shaft;
  else;
    say "Playing in this way with [a noun] has no effect.";
  end if;
else if the noun is the fbasket;
 if the player is in Lower Shaft begin;
    say "The basket is lowered to the bottom of the shaft.";
    move the fbasket to Shaft Room;
    move the basket to Lower Shaft;
  else;
    say "The basket is at the other end of the chain.";
  end if;
else;
  say "Playing in this way with [a noun] has no effect.";
end if.

Attachment relates things to each other in groups. The verb to be attached to implies the attachment relation. 
The block tying rule is not listed in any rulebook.
A rope is a kind of thing. Definition: a thing is nonrope if it is not a rope.
A thing can be round or unevenly shaped. A thing is usually round.
Check tying:
if the noun is the second noun, say "There is nothing it can be tied to." instead;
if the second noun is a rope, try tying the second noun to the noun instead;
if the noun is attached to a nonrope thing (called the item), say "[The noun] is already attached to [the item]." instead;
if the player is carrying the second noun, say "It is too clumsy when you are carrying it." instead;
if the second noun is round, say "There is nothing it can be tied to." instead.

Carry out tying:
  now the noun is attached to the second noun.
Report tying:
  say "The rope is now attached to [the second noun].".
Instead of taking a rope (called the coil) when the coil is attached to a nonrope thing (called the item):
  say "You'll have to untie [the item] first."
Check taking a nonrope thing (called the item) which is attached to a rope:
say "The coil of rope comes loose from [the item].";
now the coil is not attached to the item.
Untying it from is an action applying to two things. 
Understand "untie [something] from [something]" as untying it from. Understand "untie [something]" as untying it from. 

Rule for supplying a missing second noun while untying something from: 
    if the number of secondary things attached to the noun is 0, say "[The noun] is already entirely free." instead; 
    if the noun is a rope 
    begin; 
        if the number of touchable nonrope things which are attached to the rope > 1 
        begin; 
            say "You'll have to say which thing you want to untie [the noun] from."; 
            rule fails; 
        otherwise; 
            if the number of touchable nonrope attached to the noun is 0, say "You can't reach [the random nonrope thing attached to the noun]." instead; 
            let the tied object be a random touchable nonrope thing which is attached to the rope; 
            say "(from [the tied object])[line break]"; 
            change the second noun to the tied object; 
        end if; 
    otherwise; 
        if the noun is attached to a rope (called the tied object) 
        begin; 
            say "(from [the tied object])[line break]"; 
            change the second noun to the tied object; 
        end if; 
    end if. 
Check untying it from: 
    if the noun is attached to the second noun or the second noun is attached to the noun, do nothing; 
    otherwise say "[The noun] and [the second noun] are already not tied together." instead;
if the noun is not a rope, try untying the second noun from the noun instead.
Carry out untying it from: 
    now the noun is not attached to the second noun. 
Report untying it from: 
    say "The rope is now untied." 
Definition: a thing is secondary if it is not the noun. 
A thing has a text called the later appearance. The later appearance of something is usually "".
Rule for writing a paragraph about something (called the thingy):
  if the thingy is untouched and the initial appearance of the thingy is not "" begin;
    say "[initial appearance of the thingy]";
  else if the later appearance of the thingy is not "";
    say "[later appearance of the thingy]";
  else;
    say "There is [a thingy] here[unicode 46]";
  end if;
  if something visible is in the thingy begin;
    if the thingy is the trophy case, say "[line break]Your collection of treasures consists of:[line break]";
   else say "[line break][The thingy] contains:[line break][stuff in the thingy]";
  end if.

Indent is a number that varies. Indent is usually 0.
To say stuff in (thingy - a thing):
  increase indent by 2;
  repeat with item running through visible things which are in the thingy begin;
      say indent spaces;
      if something visible is in the item, say "[A item], which contains:[line break][stuff in the item]";
      else say "[A item][line break]";
  end repeat;
  decrease indent by 2.
To say (j - a number) spaces:
   (- spaces({j}); -).
A thing can be untouched or touched. A thing is usually untouched.
The initial appearance of something is usually "".
After taking something: now the noun is touched; continue the action.
To fatally leap:
  say "[one of]You should have looked before you leaped.[or]I'm afraid that leap was a bit much for your weak frame.[or]In the movies, your life would be passing in front of your eyes.[or]Geronimo...[or]I'm afraid that leap you've attempted has done you in.[at random]";
  end the game in death.

Table of Basic Help Options (continued)
title	subtable		description
"InvisiClues Hints"		Table of Hints	--

"Basics"

Table of Hints
title	subtable	description	toggle
"How do I open the egg?"	Table of Egg Hints	""	hint toggle rule
"How do I enter Hades?"	Table of Hades Hints	""	hint toggle rule
"How do I get the platinum bar?"	Table of Bar Hints	""	hint toggle rule
"How do I pass the glacier?"	Table of Glacier Hints	""	hint toggle rule
"How do I work the well?"	Table of Well Hints	""	hint toggle rule
"How do I work the rainbow?"	Table of Rainbow Hints	""	hint toggle rule
"What good is the barrel?"	Table of Barrel Hints	""	hint toggle rule
"How does the Bank of Zork work?"	Table of Bank Hints	""	hint toggle rule
"How do I get to the endgame?"	Table of Endgame Hints	""	hint toggle rule
"How do I get the last point?"	Table of Brochure Hints	""	hint toggle rule

Table of Egg Hints
hint	used
"You could try 'SMASH EGG'"	a number
"But that severely detracts from its aesthetic appeal"	--
"It takes a great deal of manual dexterity and the proper tools."	--
"Someone else in the game can do it. "	--
"Only the Thief can open the egg. Give it to him or leave it underground where he will find it."	--

Table of Hades Hints
hint	used
"You must first exorcise the demons; are you properly equipped?"	a number
"For a hint, read the black book."	--
"It requires the bell, book and candles."	-- 
"Ring the bell, light the candles, and read the black book."	--

Table of Bar Hints
hint	used
"You must disable the echo."	a number
"The solution has something to do with the room's acoustics."	--
"Type ECHO."	-- 

Table of Glacier Hints
hint	used
"The glacier swells with heat.  Have you found anything fiery?"	a number
"Try throwing the torch at the glacier."	--

Table of Well Hints
hint	used
"Have you tried making a wish?"	a number
"Make sure you are carrying the coins. Saving the game would also be a good idea."	--
"If the well won't bring you water, you could try bringing water to the well."	--
"Get in the bucket, then pour water into it."	--

Table of Rainbow Hints
hint	used
"You can cross it and get the pot of gold."	a number
"You do not click your heels together three times while saying 'There's no place like home.' "	--
"The solution of this puzzle is similar to the solution of the fissure puzzle in ADVENTURE"	--
"Wave the stick while standing at the end of the rainbow"	--

Table of Barrel Hints
hint	used
"The barrel is for joy riders.  If you have always wanted to go for a ride in a barrel, try 'Geronimo'."	--

Table of Bank Hints
hint	used
"The Bank of Zork is built on illusions.  Walls are one of the key illusions."	a number
"Have you tried walking through the curtain of light?"	--
"The curtain leads to four locations."	--
"It is completely deterministic (i.e., non-random)."	--
"The location to which it leads is determined by the direction from which you entered the Depository."	--
"If you enter from the east or west East Viewing Room, you will be transported to Viewing Room. If you enter from the south (e.g., the Chairman's Office) you will be transported to the Small Room."	--
"You can leave the Small Room by walking through the south wall (thus entering the Depository from the North). "	--
"If you enter the Depository from the north, you will be transported to the Vault."	--

Table of Endgame Hints
hint	used
"You must win the main game (get all possible points)."	a number
"Wait around until you see a sinister wraithlike figure"	--
"Then enter the crypt, close the door, turn off your lamp, and wait"	--

Table of Brochure Hints
hint	used
"Have you read the newspaper?"	a number
"Have you availed yourself of ALL opportunities for intellectual improvement?"	--
"Try reading the matchbook."	--
"Type 'SEND FOR FREE BROCHURE'"	--

Check requesting the score:
if dead flag is 1, say "How can you think of your score in your condition?" instead.
Before opening:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before closing:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before eating:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before drinking:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before rubbing:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before touching:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before burning:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before untying:
if dead flag is 1, say "Even such a simple action is beyond your capabilities" instead.
Before saying:
if dead flag is 1, say "No one hears you." instead.

Part 2 - Above Ground Stuff

A room called West of House is an outdoors room. "You are in an open field on the west side of a white house with a boarded front door."

The small mailbox is a container in West of House. The mailbox is fixed in place, closed, and openable. 
The size of the leaflet is 2.
The capacity of the mailbox is 10.
A leaflet is in the mailbox. The description of the leaflet is "[leaflet text]".
To say leaflet text:
center "Welcome to Zork!";
say paragraph break;
say "   Zork is a game of adventure, danger, and low cunning.  In it you will explore some of the most amazing territory ever seen by mortal man.  Hardened adventurers have run screaming from the terrors contained within.[paragraph break]";
say "   In Zork, the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
say "   No system should be without one![paragraph break]";
say "   Zork was created at the MIT Laboratory for Computer Science by
Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling.  It was inspired by the Adventure game of Crowther and Woods, and the long tradition of fantasy and science fiction games.[paragraph break]";
say "   On-line information may be obtained with the command HELP (synonyms are ABOUT, INFO, HINT, etc.)."

An electric lamp is a kind of device. Carry out switching on an electric lamp: now the noun is lit. Carry out switching off an electric lamp: now the noun is unlit.

A portable supporter called a rubber welcome mat is here. "A rubber mat saying 'Welcome to Zork' lies by the door." The description of the mat is "The mat says 'Welcome to Zork'."
The size of the rubber welcome mat is 12.
An outdoors room called North of House is north of West of House.  "You are facing the north side of a white house.  There is no door here, and all the windows are barred." South of North of House is nowhere.  West of North of House is West of House. 

An outdoors room called South of House is south of West of House.  "You are facing the south side of a white house.  There is no door here, and all the windows are barred."  North of South of House is nowhere. West of South of House is West of House.

An outdoors room called Behind House is east of North of House and east of South of House. "You are behind the white house.  In one corner of the house is a window that is [if the window is closed]slightly ajar. [otherwise]open." 
North of Behind House is North of House.  South of Behind House is South of House. Behind House is outdoors.

The white house is a backdrop.  The white house is in West of House and North of House and South of House and Behind House. The description of the white house is "The house is a beautiful colonial house which is painted white.  It is clear that the owners must have been extremely wealthy."

The front door is scenery in West of House.
Instead of entering the front door: say "The door is locked, and there is evidently no key."
Instead of going east from West of House: say "The door is locked, and there is evidently no key."
Check opening the front door: say "The door cannot be opened." instead.
Instead of unlocking the front door with something: say "It doesn't seem to work."

The window is a door.  The window is west of Behind House and east of Kitchen. The window is closed and openable. The window is scenery.
Instead of climbing the window: try entering the noun instead.
Instead of going inside while in Behind House: try entering the window instead. Instead of going outside while in Kitchen:  try entering the window instead.
Report opening the window: say "With great effort, you open the window far enough to allow entry." instead.
Report closing the window: say "The window closes (more easily than it opened)." instead.
After going through the window for the first time: award 10 points; continue the action.
The description of the kitchen is "This is the kitchen of the white house.  A table seems to have been used recently for the preparation of food.  A passage leads to the west, and a dark staircase can be seen leading upward.  A dark chimney leads down and to the east is a small window which is [if the window is open]open. [otherwise]closed."
The sack is here. "On the table is an enlongated brown sack, smelling of hot peppers." The sack is a closed openable container.
The capacity of the sack is 15. The size of the sack is 3.
Inside the sack is a lunch and a clove of garlic.  The lunch and the garlic are edible.
Report eating something: say "Thank you very much.  That reallly hit the spot." instead.
A closed openable transparent container called a bottle is here. "Sitting on the table is a small bottle." 
Instead of destroying the bottle:
  say "A brilliant maneuver destroys the bottle.";
  remove the bottle from play.
The capacity of the bottle is 4.
Instead of dropping the bottle when the player's command includes "throw":
  try throwing the noun at the player instead.
Instead of throwing the bottle at something:
  say "The bottle hits the far wall and shatters.";
  remove the bottle from play.
Understand "bottle of [something related by containment]" as the bottle.
The Living Room is west of the Kitchen.  "This is the living room.  There is a door to the east. [if the wooden door is closed] To the west, there is a wooden door with strange gothic lettering, which appears to be nailed shut. [otherwise] To the west, there is a wooden door with strange gothic lettering and a cyclops-sized hole in it."
The description of the wooden door is "The engravings translate to 'This space intentionally left blank.' [if the door is open]The door has a cyclops-sized hole in it." 
An oriental rug is here. "In center of the room is [if the trap door is not revealed]a large oriental rug.[otherwise][status of the trap door] trap door." Understand "carpet" as the rug.
A closed openable transparent container called a trophy case is here.
Instead of taking the case: say "The trophy case is securely fastened to the wall (perhaps to foil any attempt by robbers to remove it)."
A weapon called an elvish sword is here.  "On hooks above the mantelpiece hangs an elvish sword of great antiquity."
Understand "glamdring" and "orcrist" as the elvish sword.
Understand "lamp" as the battery-powered brass lantern.

The size of the sword is 30.
An electric lamp called a battery-powered brass lantern is here.  "A battery powered brass lantern is on the trophy case." 
The size of the battery-powered brass lantern is 15.
A broken lamp is a thing. Understand "lantern" and "brass" as the broken lamp.
Instead of throwing the lamp at something:
  say "The lamp smashes into the ground and is ruined.";
  remove the battery-powered brass lantern from play;
  now the broken lamp is in the location.
Instead of dropping the battery-powered brass lantern when the player's command includes "throw":
  say "The lamp smashes into the ground and is ruined.";
  remove the battery-powered brass lantern from play;
  now the broken lamp is in the location.
Instead of switching on or switching off the broken lamp: say "The lamp is broken.  Some idiot must have smashed it."
A newspaper is here. "There is an issue of US NEWS & DUNGEON REPORT here."
The description of the newspaper is
" [masthead]
Zork (Dungeon) has been ported to Inform 7.

Lots and lots and lots and LOTS of bugs have been fixed.

Aspiring adventurers should avail themselves of every opportunity
to broaden their intellectual horizons and increase their perspicacity.

Fatal events have somewhat more convoluted results than previously."
To say masthead:
center "****************************";
center "*US NEWS AND DUNGEON REPORT*";
center "****************************";
say paragraph break.

Understand "news", "report", and "paper" as the newspaper.

Forest is a region.  Forest 1, Forest 2, Forest 3, Forest 4, Forest 5, and Up a Tree are in Forest.

North of North of House is Forest 4 with printed name "Forest" and description "This is a dimly lit forest, with large trees all around.  One particularly large tree with some low branches stands here."
Every turn while in Forest: 
if a random chance of 1 in 5 succeeds, say "You hear in the distance the chirping of a song bird.".
Up a Tree is an outdoors room.

A door called the tree is a door. The tree is scenery. The tree is open and not openable.  The tree is up from Forest 4 and down from Up a Tree.

Instead of dropping something while in Up a Tree:
if the noun is not the jewel-encrusted egg begin;
  say "[The noun] falls to the ground.";
  move the noun to Forest 4;
else if the golden clockwork canary is not in the jewel-encrusted egg;
  say "The jewel-encrusted egg falls to the ground and is ruined.";
  move the broken jewel-encrusted egg to Forest 4;
  remove the broken canary from play;
  remove the jewel-encrusted egg from play;
else;
  say "The jewel-encrusted egg falls to the ground and is ruined.";
  move the broken jewel-encrusted egg to Forest 4;
  remove the jewel-encrusted egg from play;
end if.

The description of Up a Tree is "You are about ten feet above the ground nestled among some large branches. The nearest branch above you is beyond your reach."
Instead of climbing the tree: try entering the noun instead.
The capacity of the nest is 20.
The capacity of the jewel-encrusted egg is 6.

A container called the birds nest is here. "On the branch is a small birds nest.".  A closed unopenable container called the jewel-encrusted egg is here. "In the bird's nest is a large egg encrusted with precious jewels, apparently scavenged somewhere by a childless songbird.  The egg is covered with fine gold inlay and ornamented in lapis lazuli and mother-of-pearl.  Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed. The egg appears extremely fragile." The egg is in the nest. The description of the egg is "The egg is covered with fine gold inlay and ornamented in lapis lazuli and mother-of-pearl.  Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed. The egg appears extremely fragile." 
The broken jewel-encrusted egg is an open openable container. The broken clockwork canary is inside the broken egg.
The golden clockwork canary is inside the jewel-encrusted egg.
Instead of dropping the jewel-encrusted egg when the player's command includes "throw": try destroying the broken egg instead.
Instead of throwing the jewel-encrusted egg at something:
try destroying the jewel-encrusted egg instead.
Instead of destroying the jewel-encrusted egg when the jewel-encrusted egg is not openable:
   say "Your rather indelicate handling of the egg has caused it some damage.[line break]The egg is now open.";
   move the broken egg to the holder of the jewel-encrusted egg;
   remove the jewel-encrusted egg from play;
     say "There is a golden clockwork canary nestled in the egg.  It seems to have recently had a bad experience.  The mountings for its jewel-like eyes are empty, and its silver beak is crumpled.  Through a cracked crystal window below its left wing you can see the remains of intricate machinery.  It is not clear what result winding it would have, as the mainspring appears sprung.".
Carry out winding the broken canary:
  say "There is an unpleasant grinding noise from inside the canary."

The description of the broken canary is "There is a golden clockwork canary nestled in the egg.  It seems to have recently had a bad experience.  The mountings for its jewel-like eyes are empty, and its silver beak is crumpled.  Through a cracked crystal window below its left wing you can see the remains of intricate machinery.  It is not clear what result winding it would have, as the mainspring appears sprung."
The description of the golden clockwork canary is "This is a golden clockwork canary.  It has ruby eyes and a silver beak.  Through a crystal window below its left wing you can see intricate machinery inside.  It appears to have wound down."
Instead of destroying the jewel-encrusted egg with something:
try destroying the jewel-encrusted egg instead.
After taking the jewel-encrusted egg for the first time: award 5 points; continue the action.
A beautiful brass bauble is a thing.
Bauble flag is a number that varies. Bauble flag is 0.
The case-points of the jewel-encrusted egg is 7.
Carry out winding the golden clockwork canary:
if the player is in Forest and bauble flag is 1 begin;
  say "The canary chirps, slightly off key, an aria from a forgotten opera.
From out of the greenery flies a lovely song bird.  It perches on a
limb just over your head and opens its beak to sing.  As it does so,
a beautiful brass bauble drops from its mouth, bounces off the top
of your head, and lands glimmering in the grass.  As the canary winds
down, the song bird flies away.";
  change bauble flag to 1;
  move the bauble to the location;
else;
  say "The canary chirps blithely, if somewhat tinnily, for a short time.";
end if.
After taking the golden clockwork canary for the first time: award 6 points; continue the action.
After taking the bauble for the first time: award 1 point; continue the action.
The case-points of the golden clockwork canary is 2.
The case-points of the bauble is 1.
North of an outdoors room called Clearing is nowhere. West of Clearing is Forest 4. 
Southwest of Clearing is Behind House. Northeast of Behind House is nowhere. East of Behind House is Clearing.

Forest 3 is an outdoors room.
South of Clearing is Forest 3.  North of Forest 3 is South of House. East of Forest 3 is Clearing.  "This is a dimly lit forest, with large trees all around.  To the east, there appears to be sunlight." The printed name of Forest 3 is "Forest".
West of Forest 4 is North of House. Clearing is south of Forest 4. North of Forest 4 is Forest 3. South of Forest 3 is Forest 5. Forest 5 has printed name "Forest" . Forest 5 has description "This is a large forest, with trees obstructing all views except to the east, where a small clearing may be seen through the trees." North of Forest 5 is Forest 2. The description of Forest 2 is "This is a forest with trees in all directions around you." The printed name of Forest 2 is "Forest". South of Forest 5 is Forest 5. West of Forest 5 is Forest 3.  North of Forest 2 is Forest 2. West of Forest 2 is Forest 3. Southeast of Clearing is Forest 2. Northwest of Forest 2 is nowhere.
West of West of House is Forest 1. East of Forest 1 is Forest 4. North of Forest 1 is Forest 1. West of Forest 1 is Forest 1. The printed name of Forest 1 is "Forest". The description of Forest 1 is "This is a forest with trees in all directions around you."

Clearing has description "This is a clearing, with a forest surrounding you on the west and south." A pile of leaves is here.
The later appearance of the pile of leaves is "There is a pile of leaves on the ground."
The size of the leaves is 25.
The grating is a secret door.  The grating is down from Clearing and up from Grating Room.  The grating is closed, openable, locked, and lockable.  
After taking or pushing or pulling the leaves for the first time:
say "Moving the pile of leaves reveals a grating.";
now the grating is revealed.
Every turn: if the player is in Grating Room, now the grating is revealed.
The attic stairs is a door. The attic stairs are open and not openable.The attic stairs is scenery.
A dark room called the Attic is up from the attic stairs. "This is the Attic.  The only exit is stairs that lead down."

A rope called a large coil of rope is here.  "A large coil of rope is in the corner." A square brick feeling like clay is here. 

The later appearance of the square brick is "There is a square brick here which feels like clay." 
The size of the rope is 10.
The size of the brick is 15.
A weapon called a nasty-looking knife is here. "On a table is a nasty-looking knife."
Understand "nasty knife" as the nasty-looking knife.
Down from the attic stairs is the Kitchen. Instead of climbing the attic stairs: try entering the noun.
The wooden door is a door.  The wooden door is scenery.  The wooden door is west of Living Room and east of Strange Passage.  The wooden door is closed and not openable.

Down from the Living Room is a secret door called the trap door.
To say status of the trap door:
say "[if the trap door is open]an open[otherwise]a closed".

The trap door is up from the Cellar. Understand "trapdoor" and "trap-door" as the trap door.
Report opening the trap door:
say "The door reluctantly opens to reveal a rickety staircase descending into darkness."
Report closing the trap door:
say "The door swings shut and closes."
Exit found is a number variable.
After going through the trap door for the first time: 
award 25 points;
if exit found is not 1, shut the player in;
continue the action.
To shut the player in:
say "The trap door crashes shut, and you hear someone barring it.";
now the trap door is closed. 
Instead of opening the trap door when the player is in the Cellar and exit found is not 1:
 say "The trap door is locked from above."
Instead of looking under the rug: say "There's a trap door under the rug."
Instead of going through the closed trap door: say "The trap door is closed."
Instead of taking the rug: say "The rug is too heavy to lift."
After pushing or pulling the rug for the first time: say "With a great effort, the rug is moved to one side of the room. With the rug moved, the dusty cover of a closed trap door appears."; now the trap door is revealed.
After pushing or pulling the rug: say "Having moved the carpet previously, you find it impossible to move it again."



Part 3 - The Dungeon

A dungeon is a kind of room. A dungeon is usually dark.
The Cellar is a dungeon. The Cellar is west of a dungeon called Troll Room.  "You are in a dark and damp cellar with a narrow passageway leading east, and a crawlway to the south.  On the west is the bottom of a steep metal ramp which is unclimbable."
Instead of going west from Cellar: say "You attempt to climb the ramp, but it is too slippery, and you slide back down."
West of a dungeon called West of Chasm is south of Cellar. "You are on the west edge of a chasm, the bottom of which cannot be seen. The east side is sheer rock, providing no exits. A narrow passage goes west.  The path you are on continues to the north and south."
Instead of going down from West of Chasm: say "The chasm probably leads directly to the infernal regions."
Instead of jumping while in West of Chasm: fatally leap.
A dungeon called Gallery is south of West of Chasm. "This is an art gallery. Most of the paintings which were here have been stolen by vandals with exceptional taste. The vandals left through the north, south, or west exits."
A painting is here. "Fortunately, there is still one chance for you to be a vandal, for on the far wall is a work of unparalleled beauty."
The printed name of the painting is "masterpiece by a neglected genius".
The inventory listing of the painting is "a painting". Understand "masterpiece" as the painting.
After taking the painting for the first time: award 4 points; continue the action. 
The painting has case-points 7.
The size of the painting is 15.
A worthless piece of canvas is a thing.
Instead of destroying the painting:
    say "Congratulations!  Unlike the other vandals, who merely stole the
artist's masterpieces, you have destroyed one."; now the player has the worthless piece of canvas; remove the painting from play.

Instead of destroying the painting with something:
    say "Congratulations!  Unlike the other vandals, who merely stole the
artist's masterpieces, you have destroyed one."; now the player has the worthless piece of canvas; remove the painting from play.

South of Gallery is northwest of a dungeon called Studio. The description of Studio is "This is what appears to have been an artist's studio. The walls and floors are splattered with paints of 69 different colors. Strangely enough, nothing of value is hanging here. At the north and northwest of the room are open doors (also covered with paint). An extremely dark and narrow chimney leads up from a fireplace. Although you might be able to get up the chimney, it seems unlikely that you could get back down."

The chimney is a door.  The chimney is open and not openable.  Instead of climbing the chimney: try entering the noun instead. The chimney is scenery.  The chimney is up from Studio and down from Kitchen.
Instead of going through the chimney when the player is carrying more than 2 things:
    say "The chimney is too narrow for you and your baggage."
Instead of going through the chimney while in Kitchen:
    say "Only Santa Claus climbs down chimneys."
Instead of going through the chimney when the player is carrying nothing:
    say "Going up empty-handed is a bad idea."

South of a dungeon called Bank Entrance is west of Gallery. 
"This is the large entrance hall of the Bank of Zork, the largest banking institution of the Great Underground Empire. A partial account of its history is in 'The Lives of the Twelve Flatheads' with the chapter on J. Pierpont Flathead. A more detailed history (albeit less objective) may be found in Flathead's outrageous autobiography 'I'm Rich and You Aren't -- So There!'
Most of the furniture has been ravaged by passing scavengers. All that
remains are two signs at the northwest and northeast corners of the room, which say
[paragraph break]
[fixed letter spacing]
    <-- WEST VIEWING ROOM    EAST VIEWING ROOM -->
[variable letter spacing]".
Northwest of Bank Entrance is south of a dungeon called West Teller's Room. The description of West Teller's Room is "This is a small square room, which was used by a bank officer whose job it was to retrieve safety deposit boxes for the customer. On the north side of the room is a sign which reads 'Viewing Room'. On the west side of the room, above an open door, is a sign reading [paragraph break]
[fixed letter spacing]
            BANK PERSONNEL ONLY [variable letter spacing]".
Northeast of Bank Entrance is south of a dungeon called East Teller's Room. The description of East Teller's Room is "This is a small square room, which was used by a bank officer whose job it was to retrieve safety deposit boxes for the customer. On the north side of the room is a sign which reads 'Viewing Room'. On the east side of the room, above an open door, is a sign reading [paragraph break]
[fixed letter spacing]
            BANK PERSONNEL ONLY [variable letter spacing]".
North of West Teller's Room is a dungeon called Viewing Room. The description of Viewing Room is "This is a room used by holders of safety deposit boxes to view their contents. On the north side of the room is a sign which says [paragraph break][sign text]".

To say sign text:
center "REMAIN HERE WHILE THE BANK OFFICER RETRIEVES YOUR DEPOSIT BOX";
center "WHEN YOU ARE FINISHED, LEAVE THE BOX, AND EXIT TO THE SOUTH";
center "AN ADVANCED PROTECTIVE DEVICE PREVENTS ALL CUSTOMERS FROM";
center "REMOVING ANY SAFETY DEPOSIT BOX FROM THIS VIEWING AREA!";
center "Thank you for banking at the Zork!".
South of Viewing Room is Bank Entrance.
North of East Teller's Room is Viewing Room.
North of Bank Entrance is nowhere.
East of East Teller's Room is a east of a lighted dungeon called Safety Depository. 
West of West Teller's Room is a west of Safety Depository.
The description of Safety Depository is "This is a large rectangular room. The east and west walls here were used for storing safety deposit boxes. As might be expected, all have been carefully removed by evil persons. The northern 'wall' of the room is a shimmering curtain of light. To the east, west, and south of the room are large doorways."
A large stone cube is here. "In the center of the room is a large stone cube, about 10 feet on a side. Engraved on the side of the cube is some lettering." Understand "vault" as the cube. The cube is fixed in place.
A dungeon called Chairman's Office is south of Safety Depository. "This room was the office of the Chairman of the Bank of Zork. Like the other rooms here, it has been extensively vandalized. The lone exit is to the north."
A portrait is here. "A portrait of J. Pierpont Flathead hangs on the wall." Understand "painting" as the portrait. The printed name of the portrait is "portrait of J. Pierpont Flathead".
The description of the portrait is "[flathead]".
Gnome flag is a number that varies. Gnome flag is usually 1.
The curtain of light is a thing in the Safety Depository.  The curtain is scenery. Understand "north" and "wall" as the curtain.
Small Room is a dark room.  The description of Small Room is "This is a small bare room with no distinguishing features. There are no exits from this room."
Vault is a dark room. The description of Vault is "This is the Vault of the Bank of Zork, in which there are no doors."
A stack of zorkmid bills is here. "On the floor sit 200 neatly stacked zorkmid bills." Understand "notes" or "banknotes" or "bank notes" as the bills. The description of the bills is "[banknotes]".
After taking the portrait for the first time: award 10 points; continue the action.
After taking the bills for the first time: award 10 points; continue the action.
The case-points of the portrait is 5.
The case-points of the bills is 15.
The size of the bills is 10.
The size of the portrait is 25.

Instead of going east when the player is in Safety Depository and the player has the portrait: say "The alarm sounds briefly, and an invisible force prevents your from leaving."
Instead of going west when the player is in Safety Depository and the player has the portrait: say "The alarm sounds briefly, and an invisible force prevents your from leaving."
Instead of going east when the player is in Safety Depository and the player has the bills: say "The alarm sounds briefly, and an invisible force prevents your from leaving."
Instead of going west when the player is in Safety Depository and the player has the bills: say "The alarm sounds briefly, and an invisible force prevents your from leaving."
Instead of touching, taking, pushing, pulling, or rubbing the curtain: say "As you attempt this feat, your hand goes through the curtain."
Instead of entering the curtain: 
say "You feel somewhat disoriented as you pass through.";
if the former location is West Teller's Room, move the player to Viewing Room;
if the former location is East Teller's Room, move the player to Viewing Room;
if the former location is Small Room, move the player to Vault;
if the former location is Vault or the former location is Chairman's Office, move the player to Small Room.
Understand "NORTH WALL" and "NORTHERN WALL" as the curtain.


The Gnome of Zurich is a man. The description of the Gnome of Zurich is "This is an epicene Gnome of Zurich, wearing a three-piece suit and carrying a safety deposit box."
Giving something to the Gnome of Zurich is paying the gnome. Throwing something at the Gnome of Zurich is paying the gnome.
Instead of paying the gnome:
if the case-points of the noun is not 0 begin;
   say "The gnome carefully places the [noun] in the deposit box.  'Let me show you the way out,' he says, making it clear that he will be pleased to see the last of you. Then, you are momentarily disoriented, and when you recover, you are back at the Bank Entrance.";
  remove the noun from play;
  remove the Gnome of Zurich from play;
  move the player to Bank Entrance;
else;
  say "'I wouldn't put THAT in a safety deposit box,' remarks the gnome with disdain, tossing it over his shoulder, where it disappears with an understated 'pop'.";
  remove the noun from play;
end if.

Instead of attacking the Gnome of Zurich: say "The gnome says, 'Well, I never!' and disappears with a snap of his fingers, leaving you alone."
Instead of attacking the Gnome of Zurich with something: say "The gnome says, 'Well, I never!' and disappears with a snap of his fingers, leaving you alone."
Every turn: if gnome flag is 1 and the player has been in Small Room for exactly 4 turns begin; say "An epicene Gnome of Zurich, wearing a three-piece suit and carrying a
 safety deposit box, materializes in the room.  'You seem to have
 forgotten to deposit your valuables,' he says, tapping the lid of the
 box impatiently.  'We don't usually allow customers to use the boxes
 here, but we can make this ONE exception, I suppose...'  He looks
 askance at you over his wire-rimmed bifocals."; move the Gnome of Zurich to Small Room; change gnome flag to 0; end if.
Instead of throwing something at the curtain: 
say "The curtain dims slightly as the [noun] passes through it.";
if the former location is West Teller's Room, move the player to Viewing Room;
if the former location is East Teller's Room, move the player to Viewing Room;
if the former location is Small Room, move the noun to Vault;
if the former location is Vault, move the noun to Small Room;
if the former location is Chairman's Office, move the noun to Small Room.
The south wall is a thing in Small Room.  The south wall is scenery.
Instead of entering the south wall: say "You feel somewhat disoriented as you pass through."; change the former location to the location; move the player to Safety Depository.
Understand "southern wall" as the south wall.
The north wall is a thing in Vault.  The north wall is scenery.
Instead of entering the north wall: say "You feel somewhat disoriented as you pass through."; change the former location to the location; move the player to Safety Depository.

Every turn:
if the player has been in Vault for exactly 4 turns begin; say "A metallic voice says, 'Hello, Intruder!  Your unauthorized presence in the vault area of the Bank of Zork has set off all sorts of nasty surprises, several of which seem to have been fatal.  This message brought to you by the Frobozz Magic Alarm Company.'"; end the game in death; end if.
Instead of throwing something at the north wall: 
say "The [noun] goes through."
Instead of throwing something at the south wall: 
say "The [noun] goes through."
Understand "NORTHERN WALL" as the north wall.
Does the player mean doing something to the curtain: it is very likely.
Does the player mean doing something to the north wall: it is very likely.
Does the player mean doing something to the south wall: it is very likely.
Instead of touching, taking, pushing, pulling, or rubbing the north wall: say "As you attempt this feat, your hand goes through the wall."
Instead of touching, taking, pushing, pulling, or rubbing the south wall: say "As you attempt this feat, your hand goes through the wall."
A dungeon called North-South Crawlway is north of Studio. "This is a north-south crawlway; a passage also goes to the east. There is a hole above, but it provides no opportunities for climbing." North of North-South Crawlway is north of West of Chasm. East of North-South Crawlway is east of Troll Room.
Instead of going up from North-South Crawlway: say "Not even a human fly could get up it."

A maze is a kind of dungeon.  A maze usually has printed name "Maze". The description of a maze is usually "This is part of a maze of twisty little passages, all alike."
A dead end is a kind of dungeon. A dead end usually has printed name "Dead End".
South of Troll Room is west of a maze called Maze 1. North of Maze 1 is Maze 1. East of Maze 1 is north of a maze called Maze 2. South of Maze 1 is south of a maze called Maze 3. North of Maze 3 is Maze 2. East of Maze 3 is a maze called Maze 4. East of Maze 2 is south of a dead end called DE1. North of Maze 4 is west of Maze 2.
North of a maze called Maze 5 is Maze 4.  A skeleton is here. "A skeleton, probably the remains of a luckless adventurer, is here." An old leather bag of coins is here. "An old leather bag, bulging with coins is here." A burned-out lantern is here. "The deceased adventurer's useless lantern is here." Understand "useless" and "lamp" as the burned-out lantern.  The printed name of the bag of coins is "bag of coins".
A set of keys is here.
The printed name of the set of keys is "set of skeleton keys". Understand "skeleton keys" as the keys.

The size of the keys is 10.
A weapon called a rusty knife is here. "Beside the skeleton is a rusty knife."
The size of the rusty knife is 20.
After taking the rusty knife when the player is carrying the sword: say "As you pick up the rusty knife, your sword gives a single pulse of blinding blue light."
Instead of attacking something with the rusty knife: say "As the knife approaches its victim, your mind is submerged by an overmastering will.  Slowly, your hand turns, until the rusty blade is an inch from your neck.  The knife seems to sing as it savagely cuts your throat."; end the game in death.
Instead of throwing the rusty knife at something: say "As the knife approaches its victim, your mind is submerged by an overmastering will.  Slowly, your hand turns, until the rusty blade is an inch from your neck.  The knife seems to sing as it savagely cuts your throat."; end the game in death.

Instead of doing something to the skeleton: say "A ghost appears in the room and is appalled by your desecration of the remains of a fellow adventurer.  He casts a curse on all of your valuables and orders them banished to the Land of the Living Dead.  The ghost leaves, muttering obscenities."; scatter the treasure.
To scatter the treasure:
repeat with item running through things had by the player
begin;
if the case-points of the item is greater than 0, move the item to Land of the Living Dead;
end repeat.
Instead of switching on or switching off the burned-out lantern: say "The lantern is burned out."
The size of the burned-out lantern is 20.
After taking the coins for the first time: award 10 points; continue the action.
The case-points of the coins is 5.
The size of the coins is 15.
Southwest of Maze 5 is down from a maze called Maze 6. East of Maze 5 is a dead end.  West of Maze 6 is Maze 6. Up from Maze 6 is north of a maze called Maze 7. Northwest of Maze 7 is Maze 7. Southeast of Maze 7 is a east of a maze called Maze 8. West of Maze 8 is north of a maze called Maze 9. East of Maze 9 is south of Maze 7. Down from Maze 9 is east of a maze called Maze 10.  North from Maze 10 is a dead end. West of Maze 10 is Maze 5. Southwest from Maze 10 is a southwest of maze called Maze 11.  Northeast of Maze 11 is west of Maze 9. Down from Maze 11 is Maze 8. East of Maze 7 is Maze 11. West of Maze 11 is nowhere. Northwest of Maze 11 is Grating Room. The description of Grating Room is "This is a small room near the maze.  There are twisty passages in the immediate vicinity. Above you is a [if the grating is open]open[end if]grating[if the grating is locked] locked with a skull-and-crossbones lock[end if][if the grating is open] with sunlight poring in[end if]." Understand "grate" as the grating. The set of keys unlocks the grating. After going through the grating: now exit found is 1; continue the action. West from Maze 7 is up from Maze 10. East of Maze 6 is a maze called Maze 12. Northeast of Maze 12 is DE1. Southwest of DE1 is nowhere. East of Maze 12 is northeast of a maze called Maze 13.  Southeast of Maze 12 is north of a dead end. West of Maze 13 is Maze 13. Up from Maze 12 is a northeast of a maze called Maze 14. Northwest of Maze 14 is Maze 14. South of Maze 14 is Maze 14. West of Maze 14 is west of a maze called Maze 15. South of Maze 12 is south of Maze 15. Northeast of Maze 15 is east of a dungeon called Cyclops Room. North of Cyclops Room is Strange Passage.
The description of Cyclops Room is "This is a room with an exit on the west side, and a staircase leading up."
A man called the Cyclops is here. "[cyclops text]."
Cyclops flag is a number that varies.
Every turn:
if the player has been in Cyclops Room for at most 1 turn and the Cyclops is not gone, now the Cyclops is basic;
if the player can see the basic Cyclops for the fifth turn, now the Cyclops is hungry;
if the Cyclops is basic or the cyclops is gone, change cyclops flag to 0;
if the player can see the hungry cyclops or the player can see the thirsty cyclops, increase cyclops flag by 1;
if cyclops flag is 1, say "The cyclops seems somewhat agitated.";
if cyclops flag is 2, say "The cyclops appears to be getting more agitated.";
if cyclops flag is 3, say "The cyclops is moving about the room, looking for something.";
if cyclops flag is 4, say "The cyclops was looking for salt and pepper.  I think he is gathering condiments for his upcoming snack.";
if cyclops flag is 5, say "The cyclops is moving toward you in an unfriendly manner.";
if cyclops flag is 6, say "You have two choices: 1. Leave 2. Become dinner.";
if cyclops flag is 7 begin;
say "The cyclops, tired of all your games and trickery, eats you.[line break]The cyclops says, 'Mmm mmm!  Just like mom used to make 'em.'";
end the game in death;
end if.
Instead of waking or attacking or poking the asleep Cyclops, say "The Cyclops yawns and stars at the thing that woke him."

Instead of attacking the basic Cyclops: say "The cyclops ignores all injuries to his body with a shrug."; now the cyclops is hungry.
Instead of attacking the basic Cyclops with something: try attacking the Cyclops instead.
Instead of attacking the Cyclops when the Cyclops is hungry or when the Cyclops is thirsty: say "Your actions don't appear to be doing much harm to the cyclops, but
they do not exactly lower your insurance premiums, either."
Instead of attacking the Cyclops with something when the Cyclops is hungry or when the Cyclops is thirsty: try attacking the Cyclops instead.
Up from Cyclops Room is an open unopenable door called the staircase.
Understand "stairs" as the staircase.
After entering the staircase for the first time:
award 25 points;
continue the action.
Treasure Room is a dark room. The description of Treasure Room is "This is a large room, whose north wall is solid granite.  A number
of discarded bags, which crumble at your touch, are scattered about
on the floor.  There is an exit down and what appears to be a newly
created passage to the east."
Down from treasure room is the staircase.
The Cyclops can be basic, hungry, thirsty, asleep, or gone. 
To say cyclops text:
if the cyclops is basic, say "A cyclops, who looks prepared to eat horses (much less mere adventurers), blocks the staircase.  From his state of health
and the bloodstains on the walls, you gather that he is not very
friendly, though he likes people";
if the cyclops is hungry, say "The cyclops is standing in the corner, eyeing you closely.  I don't think he likes you very much.  He looks extremely hungry, even for a cyclops";
If the cyclops is thirsty, say "The cyclops, having eaten the hot peppers, appears to be gasping. His inflamed tongue protrudes from his man-sized mouth";
If the cyclops is asleep, say "The cyclops is sleeping blissfully at the foot of the stairs";
If the cyclops is gone, say "The north wall, previously solid, now has a cyclops-shaped hole in it".
The description of the cyclops is "[cyclops text]."
Carry out odysseusing when the player can see the Cyclops and the Cyclops is not asleep and the Cyclops is not gone: award 10 points; now exit found is 1; now the cyclops is gone; now the wooden door is open; say "The cyclops, hearing the name of his father's deadly nemesis, flees the room by knocking down the wall on the north side of the room."; stop the action.
Instead of doing something to the cyclops when the cyclops is gone: print the you can't see message instead.
Instead of doing something when the cyclops is the second noun and the cyclops is gone: say "I don't see any cylops here."
Instead of going north from Cyclops Room when the cyclops is in Cyclops Room and the cyclops is not gone: say "You can't go that way."
Instead of taking the cyclops when the cyclops is not gone: say "The cyclops does not take to kindly to being grabbed."
Instead of going through the staircase when the cyclops is in Cyclops Room and the cyclops is not asleep and the cyclops is not gone: say "The cyclops doesn't look like he'll let you pass."
The staircase is scenery. Instead of climbing the staircase: try entering the noun instead.
Instead of giving something to the cyclops when the cyclops is not gone and the cyclops is not asleep: say "The cyclops may be hungry, but there is a limit.".
Instead of giving the bottle to the cyclops when the cyclops is not thirsty and the quantity of water is in the bottle or giving the water to the cyclops when the cyclops is not thirsty: say "The cyclops is apparently not thirsty and refuses your generosity."
Instead of giving the bottle to the cyclops when the cyclops is thirsty and the cyclops is not gone and the quantity of water is in the bottle or giving the water to the cyclops when the cyclops is thirsty and the cyclops is not gone: say "The cyclops looks tired and quickly falls fast asleep (what did you put in that drink, anyway?)."; now the cyclops is asleep; remove the bottle from play.
Instead of giving the garlic to the cyclops when the cyclops is not gone: say "The cyclops is not so stupid as to eat that!"
Instead of giving the lunch to the cyclops when the cyclops is not gone: say "The cyclops says, 'Mmm mmm!  I love hot peppers!  But oh, could I use a drink.  Perhaps I could drink the blood of that thing.' From the gleam in his eye, it could be surmised that you are 'that thing'."; now the cyclops is thirsty; remove the bottle from play.
The description of Strange Passage is "This is a long passage.  To the south is one entrance.  On the east there is an old wooden door with a large hole in it (about
cyclops sized)."
West of a dungeon called East-West Passage is north of Troll Room. "This is a narrow east-west passageway.  There is a narrow stairway leading down at the north end of the room."
After going north from Troll Room for the first time: award 5 points; continue the action.
North of East-West Passage is a dungeon called Deep Ravine. Down from  East-West Passage is Deep Ravine. 
The description of Deep Ravine is "This is a deep ravine at a crossing with an east-west crawlway.  Some stone steps are at the south of the ravine, and a steep staircase descends."
Down from Deep Ravine is south from a dungeon called Resevoir South. The description of Resevoir South is "This is a long room on the south shore of a large reservoir. There is a western exit, a passageway south, and a steep pathway climbing up along the edge of a cliff."
A drainable watersource called the puddle1 is in Resevoir South.
Instead of going down from Deep Ravine when the player is carrying the coffin:
say "The stairs are to steep for you with your burden."
West of a dungeon called the Round Room is East-West Passage. "This is a circular room with passages off in eight directions."
Southwest of Round Room is Maze 1. Northeast of Maze 1 is nowhere.
After going:
if the location is Round Room, say "Your compass needle spins wildly, and you cannot get your bearings."; continue the action.
Instead of going nowhere from Round Room when rotation room is 1, try going east instead.
Instead of going from the Round Room when rotation room is 1:
    say "Unfortunately, it is impossible to tell directions in here."; 
    move the player to a random adjacent room. 
A dungeon called the Grail Room is east of the Round Room. "You are standing in a small circular room with a pedestal.  A set of stairs leads up, and passages leave to the east and west."
An open container called a grail is here. "There is an extremely valuable (perhaps original) grail here."
The grail is not openable.
The size of the grail is 10.
The capacity of the grail is 5.
Understand "holy grail" as the grail. The case-points of the grail is 5.
After taking the grail for the first time: award 2 points; continue the action.
East of Grail Room is north of a dungeon called Narrow Crawlway. The description of Narrow Crawlway is  "This is a narrow crawlway.  The crawlway leads from north to south. However, the south passage divides to the south and southwest."
West of a dungeon called Temple is up from Grail Room. "This is the west end of a large temple.  On the south wall is an ancient inscription, probably a prayer in a long-forgotten language. The north wall is solid granite.  The entrance at the west end of the room is through huge marble pillars." 
A scenery thing called the inscription is in Temple. Understand "prayer" as the inscription.  The description of the inscription is "The prayer is inscribed in an ancient script which is hardly remembered these days, much less understood.  What little of it can be made out seems to be a diatribe against small insects, absent-mindedness, and the picking up and dropping of small objects.  The final verse seems to consign trespassers to the land of the dead.  All evidence indicates that the beliefs of the ancient Zorkers were obscure."
A bell called a small brass bell is in Temple.
A dungeon called Altar is east of Temple. "This is the east end of a large temple.  In front of you is what appears to be an altar."
A large black book is here. "On the altar is a large black book, open to page 569."
Understand "bible" and "good book" and "goodbook" as the book.
The description of the black book is "[book text]".
The size of the black book is 10.
To say book text:
say fixed letter spacing;
say "               Commandment #12592[line break]";
say "Oh ye who go about saying unto each other: 'Hello sailor':[line break]";
say "Dost thou know the magnitude of thy sin before the gods?[line break]";
say "Yea, verily, thou shalt be ground between two stones.[line break]";
say "Shall the angry gods cast thy body into the whirlpool?[line break]";
say "Surely, thy eye shall be put out with a sharp stick![line break]";
say "Even unto the ends of the earth shalt thou wander and[line break]";
say "unto the land of the dead shalt thou be sent at last.[line break]";
say "Surely thou shalt repent of thy cunning.";
say variable letter spacing.
South of Round Room is a dungeon called Engravings Cave.  The description of Engravings cave is "You have entered a cave with passages leading north and southeast.
 There are old engravings on the walls here."
The old engravings is a thing in Engravings Cave. The old engravings is scenery.
The description of the old engravings is "The engravings were incised in the living rock of the cave wall by an unknown hand.  They depict, in symbolic form, the beliefs of the ancient peoples of Zork.  Skillfully interwoven with the bas reliefs are excerpts illustrating the major tenets expounded by the sacred texts of the religion of that time.  Unfortunately, a later age seems to have considered them blasphemous and just as skillfully excised them."
Southeast of Engravings Cave is down from a dungeon called Riddle Room.
The description of Riddle Room is "[riddle text]".

To say riddle text:
say "This is a room which is bare on all sides.  There is an exit down. To the east is a great door made of stone.  Above the door, the following words are written: 'No man shall enter this room without solving this riddle--[paragraph break]";
say "       What is tall as a house,[line break]";
say "       Round as a cup,[line break]";
say "       And all the king's horses can't draw it up?'.[paragraph break]";
say "(Reply via [']ANSWER 'answer'['].)".
The great door is a door. The great door is closed and not openable. The great door is scenery. East of Riddle Room is the great door.
West of a dungeon called Pearl Room is the great door.
The description of Pearl Room is "This is a former broom closet.  The exits are to the east and west."
A pearl necklace is here. 
The later appearance of the pearl necklace is "There is a pearl necklace here with hundreds of large pearls."
The pearl necklace is wearable. The description of the pearl necklace is "This is a pearl necklace with hundreds of large pearls."
After taking the necklace for the first time:
award 9 points; continue the action.
The case-points of the necklace is 5.
The size of the necklace is 5.
West of a dungeon called Circular Room is Pearl Room.
Instead of opening the unopenable great door: say "The door cannot be opened."
The description of Circular Room is "This is a damp circular room, whose walls are made of brick and mortar.  The roof of this room is not visible, but there appear to be some etchings on the walls.  There is a passageway to the west."
An enterable container called the wooden bucket is here. 
The initial appearance of the wooden bucket is "There is a wooden bucket here, three feet in diameter and three feet high."
The later appearance of the wooden bucket is "There is a wooden bucket here, three feet in diameter and three feet high."
The wooden bucket is fixed in place.
Instead of taking the quantity of water while in the bucket:
  if the bottle is closed, say "The bottle is closed." instead;
  now the quantity of water is in the bucket;
  say "There is now a puddle in the bottom of the wooden bucket.";
  say "The bucket rises and comes to a stop.";
  move the bucket to Top of Well;
  try looking.
Instead of entering the wooden bucket when the quantity of water is in the bucket and the player is in Circular Room:
   say "The bucket rises and comes to a stop.";
move the bucket to Top of Well;
move the player to the bucket, without printing a room description.
After exiting while in Top of Well for the first time:
 award 10 points;
continue the action.
Instead of entering the wooden bucket when the quantity of water is in the bottle and the player is in Top of Well:
   say "The bucket descends and comes to a stop.";
   move the bucket to Circular Room;
   move the player to the bucket, without printing a room description.

Top of Well is a dungeon. Top of Well is up from Circular Room.
Instead of going up from Circular Room:
  say "The walls cannot be climbed."
The description of Top of Well is "You are at the top of the well.  Well done.  There are etchings on the side of the well.  There is a small crack across the floor at the entrance to a room on the east, but it can be crossed easily."
Instead of taking the bucket: say "Playing with the bucket in this manner doesn't seem to be accomplishing anything."
The etchings is a backdrop. 
The etchings is in Circular Room and Top of Well.
The description of the etchings is "[bucket text]".
To say bucket text:
  say fixed letter spacing;
  if the player is in Circular Room begin;
    say "               o  b  o[line break][line break]";
    say "               A  G  I[line break]";
    say "                E   L[line break][line break]";
    say "               m  p  a[line break]";
  else;
    say "                o  b  o[line break]";
    say "            r             z[line break]";
    say "         f   M  A  G  I  C    z[line break]";
    say "         c    W  E   L  L     y[line break]";
    say "            o             n[line break]";
    say "                m  p  a[line break]";
  end if;
  say variable letter spacing.
Instead of going down from Top of Well: say "It's a long way down."
Instead of jumping while in Top of Well: fatally leap.
Check kicking the bucket: say "If you insist."; end the game in death instead.

East of Top of Well is a dungeon called Tea Room.
The description of Tea Room is "This is a small square room, in the center of which is a large oblong table, no doubt set for afternoon tea.  It is clear from the objects on the table that the users were indeed mad.  In the eastern corner of this room is a small hole no more than four inches high."
A large oblong table is here. The table is scenery.
A piece of eat-me cake is here. 
The initial appearance of the piece of eat-me cake is "There is a piece of cake here with the words 'Eat-Me' on it."
The later appearance of the piece of eat-me cake is "There is a piece of cake here with the words 'Eat-Me' on it."
Understand "eatme cake" and "eat me cake" as the eat-me cake.
The size of the eat-me cake is 10.
The size of the blue cake is 4.
The size of the orange cake is 4.
The size of the red cake is 4.
A red cake is here.
The printed name of the red cake is "piece of cake with red icing". Understand "piece of cake" and "piece of cake with red icing" and "piece of red cake" as the red cake.
An orange cake is here.
The printed name of the orange cake is "piece of cake with orange icing". Understand "piece of cake" and "piece of cake with orange icing" and "piece of orange cake" as the orange cake.The inventory listing of the orange cake is "piece of cake with orange icing".
A blue cake is here.
The printed name of the blue cake is "piece of cake with blue (ecch) icing". Understand "piece of cake" and "piece of cake with blue icing" and "piece of blue cake" as the blue cake.The inventory listing of the blue cake is "piece of cake with blue icing".
The red cake, the blue cake, and the eat-me cake are edible.
The description of the red cake is "The only writing visible is a capital E.  The rest is too small to be clearly visible."
The description of the orange cake is "The only writing visible is a capital E.  The rest is too small to be clearly visible."
The description of the blue cake is "The only writing visible is a capital E.  The rest is too small to be clearly visible."
After reading a command: 
  if the player's command includes "cakes", replace the matched text with "both cake". 
After eating the orange cake when the player is in Tea Room or Pool Room or Posts Room:
say "You have been blasted to smithereens (whatever they are)."; end the game in death.
Instead of eating the blue cake when the player is in Tea Room or the player is in Pool Room:
  say "The room around you seems to be getting smaller.[line break]The room seems to have become too small to hold you.  It seems that the walls are not as compressible as your body, which is more or less demolished.";
end the game in death instead.
A dungeon called Low Room is northwest of Tea Room. "This is a room with a low ceiling which is circular in shape. There are exits to the east and southeast."
A person called a robot is here.
A green piece of paper is here.
Understand "robby" and "r2-d2" and "c-3po" and "r2d2" and "c3po" as the robot.
The description of the green paper is "[instruction text]".
To say instruction text:
center "!!!! FROBOZZ MAGIC ROBOT COMPANY !!!!";
say paragraph break;
say "Hello, master![paragraph break]";
say "    I am a late-model robot, trained at MIT Tech to perform various simple housekeeping functions.[paragraph break]";
say "Instructions for use:[paragraph break]";
say fixed letter spacing;
say "    To activate me, use the following formula--[line break]";
say "        TELL ROBOT 'something to do' (cr)[line break]";
say "    The quotation marks are mandatory.[paragraph break]";
say variable letter spacing;
say "Warranty:[paragraph break]";
say "    No warranty is expressed or implied.[paragraph break]";
say " At your service!".
The description of the eat-me cake is "The icing spells out Eat Me."
After eating the red cake when the player is in Tea Room or Pool Room or Posts Room:
  say "That was delicious, but your dying memory is of feeling horribly dehydrated and thirsty.";
  end the game in death.
A persuasion rule for asking the robot to try doing something: 
    persuasion succeeds. 


Instead of asking the robot to try eating or drinking something: 
    say "'I am sorry but that action is difficult for a being with no mouth.'".
Procedural rule: ignore the block giving rule.
After giving something to the robot: say "The robot gladly takes [the noun] and nods his head-like appendage in thanks."
After reading a command:
  if the player's command includes "tell robot", replace the matched text with "robot,";
 if the player's command includes "tell robby", replace the matched text with "robot,";
 if the player's command includes "tell r2-d2", replace the matched text with "robot,";
 if the player's command includes "tell r2d2", replace the matched text with "robot,";
 if the player's command includes "tell c-3po", replace the matched text with "robot,";
 if the player's command includes "tell c3po", replace the matched text with "robot,".
Instead of giving the quantity of water to the robot:
  say "The water slips through his fingers.";
  remove the water from play.
Instead of throwing something at the robot:
  say "The robot is injured (being of shoddy construction) and falls to the floor in a pile of garbage, which disintegrates before your eyes.";
  remove the robot from play.
Instead of attacking the robot:
  say "The robot is injured (being of shoddy construction) and falls to the floor in a pile of garbage, which disintegrates before your eyes.";
  remove the robot from play.
Instead of attacking the robot with something:
try attacking the noun instead.
Instead of dropping the orange cake when the player's command includes "throw" and the player is in Pool Room or Tea Room or Posts Room:
  say "You have been blasted to smithereens (whatever they are).";
  end the game in death.
Instead of throwing the orange cake at something when the player is in Pool Room or Tea Room or Posts Room:
  say "You have been blasted to smithereens (whatever they are).";
  end the game in death.
Instead of answering the robot that something: say "'I am only a stupid robot and cannot perform that command.'".
Instead of asking the robot to try doing something other than going, taking, dropping, inserting it into, pushing, turning, giving, or lifting:
  say "'I am only a stupid robot and cannot perform that command.'".
Instead of asking the robot to try doing something when dead flag is not 1:
  say "'Whirr, buzz, click!'"; continue the action.
East of Low Room is a dungeon called Machine Room.
The description of Machine Room is "This is a large room full of assorted heavy machinery.  The room smells of burned resistors.  The room is noisy from the whirring sounds of the machines.  Along one wall of the room are three buttons which are, respectively, round, triangular, and square.  Naturally, above the buttons are instructions
written in EBDIC.  A large sign above all the buttons says in English:[paragraph break][fixed letter spacing]
DANGER: HIGH VOLTAGE[paragraph break][variable letter spacing]There are exits to the west and the south."
The round button is a thing in Machine Room. The round button is scenery.
The square button is a thing in Machine Room. The square button is scenery.
The triangular button is a thing in Machine Room. The triangular button is scenery.
After reading a command: 
  if the player's command includes "buttons", replace the matched text with "both button".
Pushing the round button is getting fried. Pushing the square button is getting fried. Pushing the triangular button is getting fried.
Instead of getting fried:
say "There is a giant spark, and you are fried to a crisp.";
end the game in death.
Instead of the robot pushing:
 if the noun is the triangular button and box flag is 0 begin;
  say "A dull thump is heard in the distance.";
  award 10 points;
  change rotation room to rotation room times -1;
  change box flag to 1;
  move the dented steel box to Round Room;
  rule succeeds;
else if the noun is the triangular button;
  say "Click.";
  change rotation room to rotation room times -1;
  rule succeeds;  
else if the noun is the square button and rotation speed is -1;
  say "Nothing seems to happen.";
  rule succeeds;
else if the noun is the square button;
  say "The whirring increases in intensity slightly.";
  change rotation speed to -1;
  rule succeeds;
else if the noun is the round button and rotation speed is 1;
   say "Nothing seems to happen.";
   rule succeeds;
else if the noun is the round button;
  say "The whirring decreases in intensity slightly.";
  change rotation speed to 1;
  rule succeeds;
else;
  continue the action;
end if.
After going:
if the location is Low Room and rotation speed is -1 and rotation room is -1 begin;
  say "According to Prof. TAA of MIT Tech, the rapidly changing magnetic fields in the room are so intense as to cause you to be electrocuted.  I really don't know, but in any event, something just killed you.";
  end the game in death;
else if the location is Low Room and rotation room is -1;
  say "Your compass needle spins wildly, and you cannot get your bearings.";
end if;
continue the action.
Instead of going from Low Room when rotation room is -1: 
    say "Unfortunately, it is impossible to tell directions in here.";
    move the player to a random adjacent room.
Instead of going nowhere from Low Room when rotation room is -1, try going east instead.
After the robot going:
  if the robot is in Low Room and rotation speed is -1 and rotation room is -1 begin; say "According to Prof. TAA of MIT Tech, the rapidly changing magnetic fields in the room are so intense as to fry all the delicate innards of the robot.  I really don't know, but in any event, smoke is coming out of its ears, and it has stopped moving."; remove the robot from play; else; continue the action; end if.
Box flag is a number variable. Box flag is usually 0.
The capacity of the dented steel box is 20.
The size of the dented steel box is 40.
The dented steel box is a closed openable container. In the dented steel is a fancy violin.
Understand "stradivarius" and "strad" as the fancy violin.
The later appearance of the fancy violin is "There is a Stradivarius here."
After taking the violin for the first time: award 10 points; continue the action.
The case-points of the violin is 10.
The size of the violin is 10.
After eating the eat-me cake while in Tea Room:
  say "Suddenly, the room appears to have become very large.";
  repeat with item running through things in Tea Room begin;
  if the item is not the robot and the item is not the table and the item is not a backdrop, move the item to Posts Room;
end repeat.
After eating the blue cake while in Posts Room:
  say "Suddenly, the room appears to have become very small.";
  repeat with item running through things in Posts Room begin;
  if the item is not a backdrop, move the item to Tea Room;
end repeat.
Pool Room is a dark room. Posts Room is a dark room.
The description of Posts Room is "This is an enormous room, in the center of which are four wooden posts delineating a rectangular area, above which is what appears to be a wooden roof.  In fact, all objects in this room appear to be abnormally large.  To the east is a passageway.  There is a large chasm on the west and the northwest."
Instead of going east from Tea Room: say "Only a mouse could get in there."
Instead of going northwest while in Posts Room: say "There is a chasm too wide to jump across."
Instead of going west while in Posts Room: say "There is a chasm too wide to jump across."
Instead of jumping while in Posts Room: say "You should have looked before you leaped."
East of Posts Room is Pool Room. The description of Pool Room is "This is a large room, one half of which is depressed.  [if the leak is in Pool Room]There is a large leak in the ceiling through which brown colored goop is falling.  The leak has submerged the depressed area in a pool of sewage.  [end if]The only exit from this room is to the west."
The leak is a thing in Pool Room. The leak is scenery.
The tin of rare spices is a thing. After taking the tin of spices for the first time: award 5 points; continue the action.
The case-points of the tin of rare spices is 5.
The size of the tin of spices is 8.
Instead of throwing the red cake at the leak:
  say "The pool of water evaporates, revealing a tin of rare spices.";
  remove the leak from play;
  move the tin of rare spices to Pool Room.
Instead of dropping the red cake when the player's command includes "throw":
  try throwing the red cake at the leak instead.
Instead of inserting the red cake into the leak:
  try throwing the red cake at the leak instead.
Understand "pool" and "pool of sewage" and "pool of water" as the leak.
A flask is in Pool Room. "A flask is filled with some clear liquid is here."
Destroying the flask with something is getting poisoned. Destroying the flask is getting poisoned. Opening the flask is getting poisoned. Throwing the flask at something is getting poisoned.
Instead of getting poisoned:
  say "Just before you pass out, you notice that the vapors from the
flask's contents are fatal.";
  end the game in death.
Instead of dropping the flask when the player's command includes "throw": 
  try destroying the flask with your bare hands instead.
The size of the flask is 10.
South of Machine Room is a dark room called Dingy Closet. The description of Dingy Closet is "This is a dingy closet adjacent to the machine room.  On one wall is a small sticker which reads:[sticker text]".
To say sticker text:
center "Protected by";
center "FROBOZZ";
center "Magic Alarm Company";
center "(Hello, footpad!)".
A white crystal sphere is in Dingy Closet. 
The later appearance of the white crystal sphere is "There is a beautiful white crystal sphere here."
Understand "PALANTHIR" and "STONE" and "SEEING" and "GLASS" and "BALL" as the white crystal sphere.
The size of the white crystal sphere is 10.
After taking the white crystal sphere for the first time: award 6 points; continue the action.
The case-points of the white crystal sphere is 6.
Instead of asking the robot to try taking the sphere when the sphere is in Dingy Closet and cage solved is 0:
say "As the robot reaches for the sphere, a steel cage falls from the
ceiling.  The robot attempts to fend it off, but is trapped below it.
Alas, the robot short-circuits in his vain attempt to escape, and
crushes the sphere beneath him as he falls to the floor.";
remove the robot from play;
remove the sphere from play.
Cage solved is a number variable. Cage solved is usually 0.
Instead of taking the sphere when the player is in Dingy Closet:
if cage solved is not 0, continue the action;
  say "As you reach for the sphere, a steel cage falls from the ceiling to entrap you.  To make matters worse, poisonous gas starts coming into the room.";
  if the player can not see the robot begin;
    say "Time passes...and you die from some obscure poisoning.";
    end the game in death;
  else;
    move the player to Cage;
    move the robot to Cage;
  end if.
Cage is a dark room. The description of Cage is "You are trapped inside a steel cage."
Instead of asking the robot to try going down from Top of Well:
  say "Whirr, buzz, click![paragraph break]The robot is unable to do that."
The steel cage is a thing in Cage. The steel cage is scenery.
Instead of asking the robot to try lifting or taking the steel cage:
  say "Whirr, buzz, click![paragraph break]The cage shakes and is hurled across the room.";
  now everything which is in the location which is not scenery is in Dingy Closet;
  change cage solved to 1;
  move the mangled steel cage to Dingy Closet.
Every turn:
if the player has been in Cage for the tenth turn begin;
 say "Time passes...and you die from some obscure poisoning.";
 end the game in death;
end if.
The mangled steel cage is a thing. The size of the mangled steel cage is 60.
West of Deep Ravine is west of a dungeon called Rocky Crawl.
The description of Rocky Crawl is "This is a crawlway with a three-foot high ceiling.  Your footing is very unsure here due to the assortment of rocks underfoot.  Passages can be seen in the east, west, and northwest corners of the passage."
East of a dungeon called Dome Room is east of Low Crawl. "You are at the periphery of a large dome, which forms the ceiling of another room below.  Protecting you from a precipitous drop is a wooden railing which circles the dome."
Instead of jumping while in Dome Room:
fatally leap.
A dungeon called Torch Room is down from Dome Room. "This is a large room with a prominent doorway leading to a down staircase. To the west is a narrow twisting tunnel, covered with a thin layer of dust.  Above you is a large dome painted with scenes depicting elfin hacking rites. Up around the edge of the dome (20 feet up) is a wooden railing. In the center of the room there is a white marble pedestal."
The railing is a thing in Dome Room. After tying the rope to the railing: say "The rope drops over the side and comes within ten feet of the floor."; try silently dropping the coil of rope.
Instead of climbing the rope when the coil of rope is attached to the railing:
try going down instead.
The railing is scenery. 
Instead of going down from Dome Room when the rope is not attached to the railing:
say "You cannot go down without breaking many bones."
Up from Torch Room is nowhere.
Instead of going up from Torch Room: say "You cannot reach the rope."
An ivory torch is here.  "Sitting on the pedestal is a flaming torch, made of ivory."
The size of the ivory torch is 20.
The case-points of the ivory torch is 14.
After taking the ivory torch for the first time:
  award 6 points; continue the action.
The ivory torch is lit.
Down from Torch Room is North-South Crawlway. Up from North-South Crawlway is nowhere.
Up from Torch Room is nowhere.
Rule for writing a paragraph about a rope (called the coil) when the coil is attached to something:
 if the coil is attached to the railing begin;
  say "Hanging down from the railing is a rope which ends about ten feet from the floor below.";
else;
 say "There is [a coil] here[if the coil is attached to a visible nonrope thing], tied to [the list of nonrope visible things which are attached to the coil][end if].";
end if.
Northwest of Low Crawl is east of a dungeon called Egyptian Room.
The description of Egyptian Room is "This is a room which looks like an Egyptian tomb.  There is an ascending staircase in the room as well as doors east and south."
A closed openable container called a gold coffin is here.
The later appearance of the gold coffin is "The solid-gold coffin used for the burial of Ramses II is here."
The size of the coffin is 55. The capacity of the coffin is 35.
After taking the coffin for the first time: award 3 points.
The case-points of the coffin is 7.
Instead of going east from Egyptian Room when the player is carrying the coffin:
say "The passage is too narrow to accomodate coffins."
Instead of going northwest from Rocky Crawl when the player is carrying the coffin:
say "The passage is too narrow to accomodate coffins."
Instead of going south from Resevoir South when the player is carrying the coffin:
say "The coffin will not fit through this passage."
East of a dungeon called Volcano View is south of Egyptian Room. "You are on a ledge in the middle of a large volcano.  Below you the volcano bottom can be seen and above is the rim of the volcano. A couple of ledges can be seen on the other side of the volcano;
it appears that this ledge is intermediate in elevation between those on the other side.  The exit from this room is to the east."
Instead of going down from Volcano View:
say "I wouldn't try that."
Instead of jumping while in Volcano View:
fatally leap.
The ascending staircase is a door. The ascending staircase is up from Egyptian Room. Through the ascending staircase is Glacier Room.
The ascending staircase is open and not openable. Instead of climbing the ascending staircase:
try entering the noun instead.
The ascending staircase is scenery.
Glacier Room is a dungeon. The description of Glacier Room is "This is a large room with giant icicles hanging from the walls and ceiling.  There are passages to the north and east."
East of Glacier Room is Egyptian Room.
The mass of ice is a thing in Glacier Room. The mass of ice is fixed in place. Understand "glacier" as the mass of ice.
The initial appearance of the mass of ice is "A mass of ice fills the western half of the room.[if the mass of ice is off-stage]  There is a large passageway leading westward.[end if]".
West of Egyptian Room is nowhere.
West of Glacier Room is south of a dungeon called Ruby Room.
The description of Ruby Room is "This is a small chamber behind the remains of the great glacier.  To the south and west are small passageways."
A moby ruby is in Ruby Room.
After taking the moby ruby for the first time:
award 15 points; continue the action.
The case-points of the moby ruby is 8.
The initial appearance of the moby ruby is "On the floor lies a moby ruby."
The later appearance of the moby ruby is  "There is a moby ruby lying here."
Instead of going west from Glacier Room when the player can see the glacier:
say "A mass of ice fills the western half of the room."
Instead of throwing the torch at the mass of ice:
say "The torch hits the glacier and explodes into a great ball of flame, devouring the glacier.  The water from the melting glacier rushes downstream, carrying the torch with it.  In place of the glacier, there is a passageway leading west.";
remove the mass of ice from play;
change the printed name of the ivory torch to "burned-out ivory torch";
now the torch is not lit.
Before dropping the torch when the player's command includes "throw":
try throwing the torch at the mass of ice instead.
Understand "burned-out" and "burned out" as the ivory torch when the ivory torch is not lit.
North of Glacier Room is north of a room called Stream View.
The description of Stream View is "You are standing on a path beside a gently flowing stream.  The path travels to the north and the east."
A nondrainable watersource called the puddle2 is in Stream View. 
A coil of thin shiny wire is in Stream View.
Understand "fuse" as the coil of wire. 
The printed name of the coil of thin shiny wire is "wire coil".
The later appearance of the coil of wire is "There is a coil of thin shiny wire here."
East of Stream View is Resevoir South.
Up from Resevoir South is northwest of a dungeon called Deep Canyon. 
South of Deep Canyon is northwest of Round Room. "You are on the south edge of a deep canyon.  Passages lead off to the east, south, and northwest.  You can hear the sound of flowing water below."
Instead of going northwest from Deep Canyon when the player is carrying the coffin:
  say "The passage is too steep for carrying the coffin."
Instead of going up from Deep Canyon when the player is carrying the coffin:
  say "The stairs are too steep for carrying the coffin."
Southeast of Round Room is a dungeon called Winding Passage. The description of Winding Passage is "This is a winding passage.  It seems that there is only an exit on the east end, although the whirring from the round room can be heard faintly to the north."
Northwest of Winding Passage is nowhere.
Instead of going north from Winding Passage: say "You hear the whir from the round room but can find no entrance."
East of Winding Passage is Mirror Room No 1. The printed name of Mirror Room No 1 is "Mirror Room". The description of Mirror Room No 1 is "This is a large square room with tall ceilings.  On the south wall is an enormous mirror which fills the entire wall.  There are exits on the other three sides of the room."
An enormous mirror is in Mirror Room No 1.  It is scenery.
The description of the enormous mirror is "[if the enormous mirror is whole]There is an ugly person staring back at you.[otherwise]The mirror is broken into many pieces.[end if]".
Instead of touching or rubbing the enormous mirror:
  say "There is a rumble from deep within the earth and the room shakes.";
 move the player to Mirror Room No 2.

  
Death count is a number that varies.
When play ends when the game ended in death:
increase death count by 1;
award -10 points;
if death count is 3 begin;
  say "You clearly are a suicidal maniac.  We don't allow psychotics in the
dungeon, since they may harm other adventurers.  Your remains will be
installed in the Land of the Living Dead, where your fellow adventurers
may gloat over them.";
else if Altar is unvisited;
  say "Shall I patch you up? ";
  if the player consents begin;
    say "Now, let me see...[line break]Well, we weren't quite able to restore your state.  You can't have everything.";
    if the player is carrying the battery-powered brass lantern begin;
      move the battery-powered brass lantern to Living Room;
      now the battery-powered brass lantern is switched off;
    end if;
    repeat with item running through things had by the player begin; 
      move the item to a random visited room; 
    end repeat; 
    move the player to Forest 1;
    resume the game;
  else;
    say "What?  You don't trust me?  Why, only last week I patched a running
ITS and it survived for over 30 seconds.  Oh, well.";
  end if;
else;
  say "As you take your last breath, you feel relieved of your burdens.  The feeling passes as you find yourself before the gates of Hell, where the spirits jeer at you and deny you entry.  Your senses are disturbed.  The objects in the dungeon appear indistinct, bleached of color, even
unreal.";
  if the player is carrying the battery-powered brass lantern begin;
      move the battery-powered brass lantern to Living Room;
      now the battery-powered brass lantern is switched off;
  end if;
  repeat with item running through things had by the player begin; 
    move the item to a random visited room; 
  end repeat; 
  change dead flag to 1;
  now the player is lit;
  move the player to Entrance to Hades;
  resume the game;
end if.
North of Mirror Room No 1 is southwest of Narrow Crawlway. 
Cave1 is a dungeon. "This is a tiny cave with entrances west and north, and a dark, forbidding staircase leading down."
The printed name of Cave1 is "Tiny Cave".
North of Cave1 is Narrow Crawlway. East of Mirror Room is Cave1.
Entrance to Hades is a dungeon. The description of Entrance to Hades is
"You are outside a large gateway, on which is inscribed: [paragraph break]
[8 spaces]'Abandon every hope, all ye who enter here.'[paragraph break]
The gate is open; through it you can see a desolation, with a pile of mangled corpses in one corner.  Thousands of voices, lamenting some hideous fate, can be heard."
Down from Cave1 is Entrance to Hades. Land of the Living Dead is a dungeon. East of Entrance to Hades is Land of the Living Dead.
Dead flag is a number that varies. Dead flag is usually 0.

East of Ravine is a dungeon called Chasm.  The description of Chasm is "A chasm runs southwest to northeast.  You are on the south edge; the path exits to the south and to the east."
Instead of going down from Chasm:
  say "Are you out of your mind?"
Instead of jumping while in Chasm: fatally leap.

Northeast of Round Room is south of a dungeon called North-South Passage.  The description of North-South Passage is "This is a high north-south passage, which forks to the northeast."
North of North-South Passage is east of Chasm. Northeast of North-South Passage is west of a dungeon called Loud Room. The description of Loud Room is "This is a large room with a ceiling which cannot be detected from the ground. There is a narrow passage from east to west and a stone stairway leading upward.  The room is extremely noisy.  In fact, it is difficult to hear yourself think."

Echo flag is a number variable.  Echo flag is usually 0.
After reading a command while in Loud Room:
if the player's command does not include "[direction]" and the player's command does not match "ECHO" and echo flag is 0 begin;
say "[player's command]";
reject the player's command;
else if the player's command matches "ECHO" and echo flag is 0;
  change echo flag to 1;
  say "The acoustics of the room change subtly.";
  reject the player's command;
end if.
A large platinum bar is in Loud Room.  The printed name of the large platinum bar is "platinum bar".  The later appearance of the large platinum bar is "There is a large platinum bar here."  The size of the platinum bar is 20.  The case-points of the platinum bar is 10. 
After taking the platinum bar for the first time:
  award 12 points; continue the action.
Up from Loud Room is south of a dungeon called Damp Cave. The description of Damp Cave is "This is a cave.  Passages exit to the south and to the east, but the cave narrows to a crack to the west.  The earth is particularly damp here."
Instead of going west from Damp Cave, say "It is too narrow for most insects."
East of Loud Room is south of a dungeon called Ancient Chasm.  The description of Ancient Chasm is "A chasm, evidently produced by an ancient river, runs through the
cave here.  Passages lead off in all directions."
North of Ancient Chasm is southeast of a dead end.  West of Ancient Chasm is a dead end.

Mirror Room No 2 is a dungeon. The printed name of Mirror Room No 2 is "Mirror Room". The description of Mirror Room No 2 is "This is a large square room with tall ceilings.  On the south wall is a gigantic mirror which fills the entire wall.  There are exits on the other three sides of the room."
An gigantic mirror is in Mirror Room No 2.  It is scenery.
The description of the gigantic mirror is "[if the gigantic mirror is whole]There is an ugly person staring back at you.[otherwise]The mirror is broken into many pieces.[end if]".
Instead of touching or rubbing the gigantic mirror:
  say "There is a rumble from deep within the earth and the room shakes.";
 move the player to Mirror Room No 1.
West of Mirror Room No 2 is a dungeon called Cold Passage. The description of Cold Passage is "This is a cold and damp corridor where a long east-west passageway intersects with a northward path."
North of Cold Passage is southwest of a dungeon called Steep Crawlway. The description of Steep Crawlway is "This is a steep and narrow crawlway.  There are two exits nearby to
the south and southwest."
South of Steep Crawlway is Mirror Room No 2.
East of Mirror Room No 2 is north of a dungeon called Cave2. The printed name of Cave2 is "Tiny Cave". The description of Cave2 is "This is a tiny cave with entrances west and north, and a dark, forbidding staircase leading down."
Down from Cave2 is a dungeon called Atlantis Room.  The description of Atlantis Room is "This is an ancient room, long under water.  There are exits here to the southeast and upward."
A crystal trident is in Atlantis Room.  The initial appearance of the crystal trident is "On the shore lies Poseidon's own crystal trident." The later appearance of the crystal trident is "Poseidon's own crystal trident is here." The size of the crystal trident is 20.  The case-points of the crystal trident is 11. After taking the crystal trident for the first time: award 4 points; continue the action.

West of Cold Passage is a dungeon called Slide Room.  The description of Slide Room is "This is a small chamber, which appears to have been part of a coal mine. On the south wall of the chamber the letters 'Granite Wall' are etched in the rock. To the east is a long passage and
there is a steep metal slide twisting downward. To the north is a small opening."

The enormous mirror can be whole or trashed.  The gigantic mirror can be whole or trashed.
The enormous mirror is whole.  The gigantic mirror is whole.
Check destroying the enormous mirror:
  if the enormous mirror is trashed begin;
    say "It's already broken." instead;
  else if the gigantic mirror is trashed;
    say "Haven't you done enough damage already?" instead;
  else;
    now the enormous mirror is trashed;
     say "You have broken the mirror.  I hope you have a seven years supply of
good luck handy." instead;
  end if.
Check destroying the gigantic mirror:
  if the gigantic mirror is trashed begin;
    say "It's already broken." instead;
  else if the enormous mirror is trashed;
    say "Haven't you done enough damage already?" instead;
  else;
    now the gigantic mirror is trashed;
     say "You have broken the mirror.  I hope you have a seven years supply of
good luck handy." instead;
  end if.
Check taking the enormous mirror:
  if the enormous mirror is trashed, say "Nobody but a greedy surgeon would allow you to attempt that trick." instead.
Check taking the gigantic mirror:
  if the enormous mirror is trashed, say "Nobody but a greedy surgeon would allow you to attempt that trick." instead.
Down from Slide Room is Cellar.

North of Slide Room is a dungeon called Mine Entrance.  The description of Mine Entrance is "You are standing at the entrance of what might have been a coal
mine. To the northeast and the northwest are entrances to the mine,
and there is another exit on the south end of the room."
Northwest of Mine Entrance is south of a dungeon called Squeaky Room.  The description of Squeaky Room is "You are a small room.  Strange squeaky sounds may be heard coming from
the passage at the west end.  You may also escape to the south."
West of Squeaky Room is a dungeon called Bat Room.  The description of Bat Room is "You are in a small room which has only one door, to the east.  In the corner of the room on the ceiling is a large vampire bat who is obviously deranged and holding his nose."
Instead of going west from Bat Room when dead flag is not 1 and when the player is not holding the garlic: 
  say "A deranged giant vampire bat (a reject from WUMPUS) swoops down
from his belfry and lifts you away....";
  move the player to a random coal mine.
A coal mine is a kind of dungeon.  A coal mine usually has printed name "Coal Mine".  A coal mine usually has description "This is a non-descript part of a coal mine."
A deranged giant vampire bat is in Bat Room.  The deranged giant vampire bat is scenery.  Instead of taking the deranged giant vampire bat:
  say "A deranged giant vampire bat (a reject from WUMPUS) swoops down
from his belfry and lifts you away....";
  move the player to a random coal mine.
Northeast of Mine Entrance is west of a dungeon called Shaft Room.  The description of Shaft Room is "This is a large room, in the middle of which is a small shaft
descending through the floor into darkness below.  To the west and
the north are exits from this room.  Constructed over the top of the
shaft is a metal framework to which a heavy iron chain is attached."
A container called the basket is in Shaft Room.  The later appearance of the basket is "At the end of the chain is a basket." The capacity of the basket is 50. Understand "dumbwaiter" and "cage" and "tbasket" as the basket. The basket is fixed in place.
Lower Shaft is a dark room.  The description of Lower Shaft is 
"This is a small square room which is at the bottom of a long
shaft. To the east is a passageway and to the northeast a very narrow
passage. In the shaft can be seen a heavy iron chain."
A thing called the fbasket is in Lower Shaft.  The fbasket is scenery. Understand "basket" and "dumbwaiter" and "cage" as the fbasket.
Instead of going down while in Shaft Room: say "You wouldn't fit and would die if you could."
After deciding the scope of the player when in darkness:
  if the fbasket is in the location, place the fbasket in scope;
  if the basket is in the location, place the basket in scope.
North of Shaft Room is a dungeon called Wooden Tunnel.  The description of Wooden Tunnel is "This is a narrow tunnel with large wooden beams running across
the ceiling and around the walls.  A path from the south splits into
paths running west and northeast."
West of Wooden Tunnel is a dungeon called Smelly Room.  The description of Smelly Room is "This is a small non-descript room.  However, from the direction
of a small descending staircase a foul odor can be detected.  To the
east is a narrow path."
Down from Smelly Room is a dark room called Gas Room.  The description of Gas Room is "This is a small room which smells strongly of coal gas."
A sapphire bracelet is in Gas Room.  The later appearance of the sapphire bracelet is "There is a sapphire-encrusted bracelet here."
The sapphire bracelet is wearable. The size of the bracelet is 10.  The case-points of the bracelet is 3.  After taking the bracelet for the first time: award 5 points; continue the action.
Every turn when the player is in Gas Room and dead flag is not 1:
  if the player is carrying the ivory torch and the ivory torch is lit begin;
  say "Oh dear.  It appears that the smell coming from this room was coal gas.  I would have thought twice about carrying a torch in here.";
  end the game in death;
end if.

Northwest of Wooden Tunnel is east of a coal mine called Mine1.
Southwest of Mine1 is south from a coal mine called Mine2.
Up from Mine2 is west of a coal mine called Mine3.
Northeast of Mine2 is west of a coal mine called Mine4.
North of Mine1 is Mine4.
Northeast of Mine3 is up from a coal mine called Mine5.
East of Mine3 is south of Mine5.
West of Mine2 is west of Mine5.
East of Mine5 is up from Mine4.
Northeast of Mine4 is southeast of a coal mine called Mine6.
Up from Mine6 is Mine5.
North of Mine5 is west of a coal mine called Mine7.
South of Mine7 is northwest of Mine6.
East of Mine7 is Mine1.
Down from Mine7 is a dungeon called Ladder Top.
The description of Ladder Top is "This is a very small room.  In the corner is a rickety wooden
ladder, leading downward.  It might be safe to descend.  There is
also a staircase leading upward."
Down from Ladder Top is a dungeon called Ladder Bottom.
The description of Ladder Bottom is "This is a rather wide room.  On one side is the bottom of a narrow wooden ladder.  To the northeast and the south are passages
leaving the room."
East of Ladder Bottom is south of a dead end called DE2.  A pile of coal is in DE2. Understand "heap" and "small" as the pile of coal.  The later appearance of the pile of coal is "There is a small heap of coal here."
South of Ladder Bottom is north of a dark room called Timber Room.  The description of Timber Room is "This is a long and narrow passage, which is cluttered with broken
timbers.  A wide passage comes from the north and turns at the 
southwest corner of the room into a very narrow passageway."
An unevenly shaped thing called a broken timber is in Timber Room.  Understand "pile" and "wooden" as the broken timber.  The size of the broken timber is 50.
The later appearance of the broken timber is "There is a wooden timber on the ground here."
The narrow passageway is a door.  Inside from Timber Room is the narrow passageway.  Outside from Lower Shaft is the narrow passageway.
Instead of going southwest from Timber Room: try going inside instead.
Instead of going northeast from Lower Shaft: try going outside instead.
Before of going through the narrow passageway when the player is carrying something: say "You cannot fit through this passage with that load." instead.
Instead of going up from Lower Shaft: say "The chain is not climbable."

[Include (- 

  Array keyw string "ECOVXRMS"; 
  Array inw->9;
  Array outw->9; 
  Array uinw->9; 
  Array ukeyw->9; 
[Encrypt inw outw ichara i j uinws ukeyws usum; 
  j=1; ichara='A'-1; uinws=0; ukeyws=0;
  for (i=1; i<=8; i++) { 
    ukeyw->i = keyw->i - ichara; 
    if (inw->j<=ichara) j=1; 
    uinw->i=inw->j-ichara; 
    ukeyws=ukeyws+ukeyw->i; 
    uinws=uinws+uinw->i; 
    j=j+1; 
  } 
  usum=(uinws%8)+8*(ukeyws%8); 
  for (i=1; i<=8; i++) { 
    j=XOR(uinw->i, XOR(ukeyw->i, usum))%32; 
    usum=(usum+1)%32; 
    if (j>26) j=j%26; 
    outw->i=max(1, j)+ichara; 
  } 
]; 
[ XOR a b; return (a | b) & (~(a & b)); ];        ! Bitwise Exclusive OR
[ MAX a b; if (a>b) return a; else return b;]; 
-). ]