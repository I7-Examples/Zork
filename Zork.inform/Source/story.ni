"Zork" by Infocom -- Ported by Dean Menezes

[Copyright (c) 2008 Dean Menezes

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.]

Use MAX_STATIC_DATA of 390000.
Include Game Ending Reloaded by Shin.
Include Points Awarding Reloaded by Shin.
Include Swearing Reloaded by Shin.
Use scoring;


Part 1 - New Actions and Concepts

A room has a number called rval. The rval of a room is usually 0.
The story genre is "Fantasy". 
The story headline is "A Computerized Fantasy Simulation Game".
The release number is 4.
The story creation year is 1979.
Use the serial comma. 
A thing can be non-flaming or flaming.  A thing is usually non-flaming. A thing can be non-inflammable or inflammable. A thing is usually non-inflammable.
[*According to THE ELEMENTS OF STYLE --  FLAMMABLE: An oddity, chiefly useful in saving lives. The common word meaning "combustible" is inflammable. But some people are thrown off by the in- and think inflammable means "not combustible." For this reason, trucks carrying gasoline or explosives are now marked FLAMMABLE. Unless you are operating such a truck and hence are concerned with the safety of children and illiterates, use inflammable.]

Release along with the source text and a website.
Digging into it with is an action applying to one thing and one carried thing.
Understand "dig into/in [something] with/using [something]" as digging into it with.
Understand "dig [something] with/using [something]" as digging into it with.
Understand "dig with/using [something] into/in [something]" as digging into it with (with nouns reversed).
Counting is an action applying to one visible thing.  Understand "count [something]" as counting.
Check counting:
if the noun is the pile of leaves, say "There are 69,105 leaves here." instead;
[* It is absurd that the adventurer would be able to count so many leaves with such precision, especially in the minute or so time that a normal turn supposedly takes.]
[* Decimal 69 is equal to octal 105, and hexadecimal 69 is equal to decimal 105.] 
if the noun is the pair of candles, say "Let's see, how many objects in a pair?  Don't tell me, I'll get it." instead;
if the noun is the bills, say "Don't you trust me?  There are 200 bills." instead;
if the noun is the matchbook begin;
  if match count is 1 begin;
    say "You have one match.";
  else if match count is 0;
    say "You have no matches.";
  else;
    say "You have [match count] matches.";
  end if;
end if.
Carry out counting:
say "You have lost your mind."
Understand "count blessings" as a mistake ("Well, for one, you are playing Zork....").
Understand  "$COUNTREASURE" as a mistake ("Your adventure has netted [number of valuble things in the trophy case] treasure[s].  You are carrying [number of valuble things had by the player] valuble[s].")

Check digging into it with:
if the noun is not the guano and the noun is not the ground, say "Digging into [a noun] is silly." instead;
if the second noun is not the shovel, say "Digging with [the second noun] is slow and tedious." instead;
if the noun is the ground and the player is not in Sandy Beach, say  "The ground is too hard for digging here.".

Playing is an action applying to one carried thing.  
Understand "play [something]" as playing.

Exorcising is an action applying to nothing.  Understand "exorcise" as exorcising.
Check exorcising:
  if exorcism flag is not -1, say "You must perform the ceremony." instead.
Carry out exorcising:
say "There is a clap of thunder, and a voice echoes through the cavern: 'Begone, chomper!'  Apparently, the voice thinks you are an evil spirit and dismisses you from the land of the living.";
end the game in death.

Definition: a thing is valuble if the case-points of it is not 0.

After reading a command:
if the player's command includes "COUNT TREASURE/TREASURES/VALUBLES", replace the matched text with "$COUNTREASURE".
Check playing:
if the noun is the violin, say "An amazing offensive noise issues from the violin." instead;
say "That makes no sense." instead.

Before playing a person who is not the player:
  say "You are so completely engrossed in the role of [the noun] that you kill yourself, just as he would have done.";
  end the game in death.

Playing it with is an action applying to two carried things.  Understand "play [something] with [something]" as playing it with.
Check playing it with:
if the noun is not the violin, say "That makes no sense." instead;
if the second noun is not a weapon, say "An amazing offensive noise issues from the violin." instead;
say "Very good.  The violin is now worthless.";
now the case-points of the violin are 0.

Putting it under is an action applying to one carried thing and one thing.  Understand "put [something] under [something]" and "place [something] under [something]" and "slide [something] under [something]" as putting it under.

Check putting it under:
  if the second noun is not a door, say "You can't do that." instead;
  if the second noun is not the massive wooden door, say "There's not enough room under this door." instead;
  if the noun is the green piece of paper or the noun is the tan label or the noun is the leaflet begin;
    say "The paper is very small and vanishes under the door.";
    move the noun to the other side of the second noun instead;
  end if;
  if the noun is not the mat, say "You can't do that." instead;
  if mat under is true, say "Look around." instead.
Carry out putting it under:
  say "The mat fits easily under the door.";
  move the mat to the location;
  
Geronimoing is an action applying to nothing.  Understand "geronimo" as geronimoing.  
Check geronimoing:
if the player is not inside the barrel, say "Wasn't he an Indian?".
Carry out geronimoing:
say "I didn't think you would REALLY try to go over the falls in a
barrel. It seems that some 450 feet below, you were met by a number
of  unfriendly rocks and boulders, causing your immediate demise.  Is
this what 'over a barrel' means?";
end the game in death.
Check digging into the guano with the shovel for the first time:
say "You are digging into a pile of bat guano." instead.
Check digging into the guano with the shovel for the second time:
say "You seem to be getting knee deep in guano." instead.
Check digging into the guano with the shovel for the third time:
say "You are covered with bat turds, cretin." instead.
Check digging into the guano with the shovel more than 3 times:
say "This is getting nowhere." instead.

Check digging into the ground with the shovel when the player is in Sandy Beach for the first time:
say "You seem to be digging a hole here." instead.
Check digging into the ground with the shovel when the player is in Sandy Beach for the second time:
say "The hole is getting deeper, but that's about it." instead.
Check digging into the ground with the shovel when the player is in Sandy Beach for the third time:
say "You are surrounded by a wall of sand on all sides." instead.
Check digging into the ground with the shovel when the player is in Sandy Beach the fourth time:
say "You can see a small statue here in the sand.";
move the statue to Sandy Beach instead.
Check digging into the ground with the shovel when the player is in Sandy Beach more than 4 times:
say "The hole collapses, smothering you.";
end the game in death instead.

The ground is a backdrop. The ground is everywhere. Understand "sand" and "earth" and "here" and "hole" as the ground.

The description of yourself is "That's difficult unless your eyes are prehensile.".
Launching is an action applying to nothing.  Understand "launch" as launching.
Check launching:
  if the player is not in the magic boat and the player is not in the basket, say "You need to be in a vehicle to do that." instead.
Landing is an action applying to nothing.  Understand "land" as landing.
Check landing:
  if the player is not in the magic boat and the player is not in the basket, say "You need to be in a vehicle to do that.".
Carry out landing:
  if the player is in the magic boat begin;
  if the magic boat is in In Stream begin;
    move the magic boat to Stream View;
    try looking instead;
  else if the magic boat is in Reservoir;
    say "You must specify a direction." instead;
  else if the magic boat is in River1;
    move the magic boat to Dam Base;
    try looking instead;
  else if the magic boat is in River2;
     say "The White Cliffs prevent your landing here." instead;
  else if the magic boat is in River3 or the magic boat is in River4;
    say "You must specify which direction here." instead;
  else if the magic boat is in River5;
    move the magic boat to Dam Base;
    try looking instead;
  end if;
else if the player is in the basket;
  if the basket is in Volcano Near Small Ledge begin;
    move the basket to Narrow Ledge;
    try looking instead;
  else if the basket is in Volcano Near Viewing Ledge;
    say "The ledge is too narrow to land on." instead;
  else if the basket is in Volcano Near WideLedge;
    if the rusty old box is open, say "The ledge has collapsed and cannot be landed on." instead;
    move the basket to Wide Ledge;
    try looking instead;
  end if;
end if;
say "You cannot land from here." instead.
Carry out launching:
  if the player is in the magic boat begin;
  if the magic boat is in Stream View begin;
    move the magic boat to In Stream;
    try looking instead;
  else if the magic boat is in Dam Base;
    move the magic boat to River1;
    try looking instead;
  else if the magic boat is in Reservoir South or the magic boat is in Reservoir North and the pdl1 is on-stage;
    move the magic boat to Reservoir;
    try looking instead;
  else if the magic boat is in Rocky Shore or the magic boat is in WCLF1;
    move the magic boat to River3; 
    try looking instead;
  else if the magic boat is in WCLF2 or the magic boat is in Sandy Beach;
    move the magic boat to River4; 
    try looking instead;
  else if the magic boat is in Shore;
    move the magic boat to River5;
    try looking instead;
  end if;
  else if the player is in the basket;
     if the braided wire is attached to a nonrope thing (called the tied object), now the braided wire is not attached to the tied object; 
    if the basket is in Narrow Ledge begin;
      move the basket to Volcano Near Small Ledge;
      try looking instead;
    else if the basket is in Wide Ledge;
      move the basket to Volcano Near WideLedge;
      try looking instead;
    end if;
  end if;
  say "You can't launch from here." instead.
Deflating is an action applying to one thing.  Understand "deflate [something]" as deflating.  
Check deflating:
  if the noun is not the boat, say "How to you expect to do that?" instead;
  if the player is in the boat, say "You can't deflate the boat while you're in it." instead;
  if the player is carrying the boat, say "The boat must be on the ground to be deflated." instead.
Carry out deflating the boat:
say "The boat deflates.";
move the pile of plastic to the holder of the boat;
remove the boat from play.
Understand "brush teeth" as a mistake ("Dental hygiene is highly recommended, but I'm not sure what you want to brush them with.").
Inflating it with is an action applying to one thing and one carried thing.  Understand "inflate [something] with/using [something]" and "pump up [something] with/using [something]" as inflating it with.
Your lungs are a part of the player. Understand "mouth" and "breath" as your lungs.
Check inflating it with:
  if the noun is not the dboat and the noun is not the pile of plastic and the noun is not the boat, say "How can you inflate that?";
  if the noun is the dboat, say "This boat will not inflate since some moron put a hole in it." instead;
  if the noun is the boat, say "Inflating it further would probably burst it." instead;
  if the second noun is your lungs, say "You don't have enough lung power to inflate it." instead;
  if the second noun is not the air-pump, say "You don't have enough lung power to inflate it." instead;
  if the player is carrying the noun, say "You cannot inflate it while carrying it." instead.
Inflating is an action applying to one thing.  Understand "pump up [something]" and "inflate [something]" as inflating.
Check inflating:
  if the player can see the air-pump, try inflating the noun with the air-pump instead;
  else say "I don't really see how."
Brushing is an action applying to one carried thing.  Understand "brush teeth with [something]" as brushing.
Check brushing:
  if the noun is not the viscous material, say "Nice try, but with [a noun]?" instead.
Carry out brushing:
say "Well, you seem to have been brushing your teeth with some sort of
glue. As a result, your mouth gets glued together (with your nose)
and you die of respiratory failure.";
end the game in death.
Lubricating it with is an action applying to one thing and one carried thing.  Understand "lubricate [something] with something" as lubricating it with. Understand "oil [something] with something" as lubricating it with. Understand "grease [something] with [something]" as lubricating it with.
Plugging it with is an action applying to one thing and one carried thing.  Understand "plug [something] with [something]" and "glue [something] with [something]" and "patch [something] with [something]" as plugging it with.
Check plugging it with:
  if the second noun is not the viscous material, say "That makes no sense." instead;
  if the noun is not the leak2 and the noun is not the dboat, say "That makes no sense." instead.
Check lubricating it with:
  if the second noun is not the viscous material, say "You probably put spinach in your gas tank, too." instead;
  if the noun is not the bolt, say "That's not very useful." instead.
Turning it with is an action applying to one thing and one carried thing.  Understand "turn [something] with [something]" as turning it with.
Understand "flip [something] with [something]" as turning it with.
Check turning it with:
  if the noun is not the bolt and the noun is not the switch, try turning the noun instead.

Check throwing something at the player:
  say "A terrific throw! [The noun] hits you squarely in the head. Normally, this
wouldn't do much damage, but by incredible mischance, you fall over backwards
trying to duck, and break your neck, justice being swift and merciful in the
Great Underground Empire.";
  end the game in death instead.
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
    now the former location is the location. 
Use the serial comma.
Include Basic Help Menu by Emily Short.
Include Punctuation Removal by Emily Short.
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
else if the second noun is the bottle;
  if the noun is the red cake or the noun is the blue cake or the noun is the orange cake begin;
   say "The letters appear larger but are still too small to read.";
  end if;
else;
   try examining the noun instead;
  end if.
Understand "board [something]" as entering.
Understand "disembark" as exiting.
Understand "climb [direction]" as going.
Understand "light [electric lamp]" as switching on.
Understand "extinguish [something]" as switching off.
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
if dead flag is true, say "All such attacks are vain in your position." instead;
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
move the thief to Round Room;
choose row 1 in Table of Basic Help Options;
now description entry is "Welcome to Zork![paragraph break]   You are near a large dungeon, which is reputed to contain vast quantities of treasure.  Naturally, you wish to acquire some of it.  In order to do so, you must of course remove it from the dungeon. To receive full credit for it, you must deposit it safely in the trophy case in the living room of the house.[paragraph break]   In addition to valuables, the dungeon contains various objects which may or may not be useful in your attempt to get rich.  You may need sources of light, since dungeons are often dark, and weapons, since dungeons often have unfriendly things wandering about.  Reading material is scattered around the dungeon as well;  some of it
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
if the player is not in Altar and dead flag is true, say "Your prayers are not heard." instead;
if the player is not in Altar, say "If you pray enough, your prayers may be answered." instead.

Carry out praying:
if dead flag is true, say "From the distance the sound of a lone trumpet is heard.  The room becomes very bright, and you feel disembodied.  In a moment, the brightness fades, and you find yourself rising, as if from a long sleep, deep in the woods.  In the distance you can faintly hear a song bird and the sounds of the forest.";
now the player is unlit;
now exit found is true;
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
	say the can't go that way rule response (A).

To print the you can't see message:
	say "You can't see it.".

Rule for printing the description of a dark room: say "It is pitch black.  You are likely to be eaten by a grue." instead. 
Rule for printing a refusal to act in the dark: say "It is too dark in here to see." instead.
Before going through a secret door which is unrevealed:
	print the you can't go message instead.

Before doing something to a secret door which is unrevealed:
	print the you can't see message instead.

Before doing something when a secret door is the second noun and the second noun is unrevealed:
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
  if the dark terminus count is 2, set off the grues instead;
  if the coil of rope is attached to something (called the item) and the player is carrying the coil of rope, now the coil of rope is not attached to the item;
  continue the action.
  
To set off the grues:
say "Oh no! You walked directly into the slavering fangs of a lurking grue!";
end the game in death.

[Procedural rule when inflating something that is part of the player:
ignore the carrying requirements rule.]

The part of player aware carrying requirements rule is listed instead of the carrying requirements rule in the action-processing rules.

This is the part of player aware carrying requirements rule:
	if inflating something that is part of the player
	or attacking something that is part of the player
	or brushing something which is part of the player
	or destroying something with something which is part of the player:
		continue the action;
	otherwise:
		follow the carrying requirements rule;

A weapon is a kind of thing.
Understand the command "swing" as something new.
Swinging it is an action applying to one carried thing.  Understand "swing [something]" as swinging it.
Carry out swinging it:
if dead flag is true, say "All such attacks are vain in your position." instead;
if the player can see a person (called the villain) who is not the player, try attacking the villain with the noun instead;
say "Please specify at what do you wish to swing the [noun]."

[Procedural rule while attacking something that is part of the player: ignore the carrying requirements rule. 
Procedural rule while brushing something which is part of the player: ignore the carrying requirements rule. 
Procedural rule while destroying something with something which is part of the player: ignore the carrying requirements rule.]

Attacking it with is an action applying to one visible thing and one carried thing.
Understand "attack [something] with [something]" as attacking it with.
Understand "attack [something] using [something]" as attacking it with.
Carry out attacking it with:
if dead flag is true, say "All such attacks are vain in your position." instead;
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
if dead flag is true, say "All such attacks are vain in your position." instead;
if the noun is a person, try attacking the noun instead; 
say "Trying to destroy [a noun] is not notably useful."

Destroying it with is an action applying to one visible thing and one carried thing. Understand "destroy [something] with [something]" as destroying it with.
Understand "mangle [something] with [something]" as destroying it with. Understand "mung [something] with [something]" as destroying it with . Understand "break [something] with [something]" as destroying it with. Understand "smash [something] with [something]" as destroying it with. Understand "swing [something] at [something]" as destroying it with (with nouns reversed).
Understand "mangle [something] using [something]" as destroying it with. Understand "mung [something] using [something]" as destroying it with . Understand "break [something] using [something]" as destroying it with. Understand "smash [something] using [something]" as destroying it with. Understand "thump [something] with something" as destroying it with. Understand "thump [something] using [something]" as destroying it with. Understand "destroy [something] using [something]" as destroying it with.
Carry out destroying it with:
if dead flag is true, say "All such attacks are vain in your position." instead;
if the noun is a person, try attacking the noun with the second noun instead; 
say "Trying to destroy [a noun] is not notably useful."
Check searching a door: 
    say "[The noun] is [if open]open, but I can't see what's beyond it.[otherwise]closed.[end if]" instead.


Understand "frobozz" as a mistake ("The Frobozz Company, Ltd., created, owns, and operates this dungeon.").

Understand "schedule" as a mistake ("The dungeon is ALWAYS open (always room for one more).").

Understand "time" as a mistake ("You have been playing Zork for longer than you think.").
First after reading a command rule:
if the player's command matches "treasure", replace the player's command with "$treasure$".
Treasure-travelling is an action applying to nothing. Understand "$treasure$" as treasure-travelling. Check treasure-travelling: if the player is not in Temple, say "Nothing happens." instead.
Carry out treasure-travelling: move the player to Treasure Room.
Temple-travelling is an action applying to nothing. Understand "temple" as temple-travelling. Check temple-travelling: if the player is not in Treasure Room, say "Nothing happens." instead.
Carry out temple-travelling: move the player to Temple.
Hi-speaking is an action applying to one visible thing. Understand "hello [something]" and "hi [something]" as hi-speaking.
Check hi-speaking:
if the noun is the sailor, say "Nothing happens here." instead;
if the noun is the aviator, say "Here, nothing happens." instead;
if the noun is not a person, say "I think that only schizophrenics say 'Hello' to [a noun]." instead.
Carry out hi-speaking:
say "[The noun] bows his head to you in greeting."
Check asking someone to try greeting: try hi-speaking the noun instead.
The sailor is a backdrop. The sailor is everywhere. 
The aviator is a backdrop. The aviator is everywhere. Understand "flyer" as the aviator.
Brochure flag is a number that varies. Brochure flag is usually 0.
Sending for is an action applying to one visible thing. Understand "send for [something]" as sending for. Understand "send [something]" as sending for.
Check sending for:
if the noun is not the obj1234, say "That doesn't make sends." instead.
Carry out sending for the obj1234:
if brochure flag is 0 begin;
  say "OK, but you know the postal service...";
  now brochure flag is 1;
else if brochure flag is 1;
  say "It's probably on its way now.";
else if brochure flag is 2;
  say "What, you mean you need another one?";
end if.

The obj1234 is a backdrop. The obj1234 is everywhere. Understand "brochure" and "free brochure" as the obj1234. The free brochure is a thing. 
The free brochure is inflammable.
Instead of doing something other than sending for to the obj1234: print the you can't see message.
The description of the brochure is "[brochure text]".
Does the player mean sending for the obj1234: it is very likely.
Does the player mean doing something other than sending for to the free brochure: it is very likely.
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

[Procedural rule when taking the Don Woods stamp: 
        ignore the can't take component parts rule.]

The conditional can't take component parts rule is listed instead of the can't take component parts rule in the check taking rulebook.

This is the conditional can't take component parts rule:
	if taking the Don Woods stamp
	or taking the coil of wire:
		continue the action;
	otherwise:
		follow the can't take component parts rule;

The description of the Don Woods stamp is "[stamp text]".
The Don Woods stamp is inflammable.
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
Check hi-speaking the sailor for the tenth time:
say "I think that phrase is getting a bit worn out." instead.
Check hi-speaking the sailor for the 20th time:
say "You seem to be repeating yourself." instead.
Understand "pour [something] in/into/on/onto [something]" as inserting it into.
Understand "fill [something] with [something]" as inserting it into (with nouns reversed).
A watersource is a kind of thing. A watersource is always scenery.
A watersource can be drainable or nondrainable. A watersource is usually drainable.
A quantity of water is a thing.
The size of the quantity of water is 4.
When play begins: move the quantity of water to the bottle.
Check taking a watersource:
if the player is carrying the bottle, try inserting the noun into the bottle instead;
else say "The water slips through your fingers." instead.
Check inserting a watersource into something:
if the second noun is closed begin;
  say "[The second noun] is closed." instead;
else if the second noun is not the bottle;
  say "The water leaks out of [the second noun] and evaporates immediately." instead;
else if something is in the bottle;
  say "The bottle is already full." instead;
else;
  say "The bottle is now full of water.";
  move the quantity of water to the bottle instead;
end if.
Check inserting the quantity of water into something:
if the second noun is closed begin;
  say "[The second noun] is closed." instead;
else if the second noun is not the bottle;
  say "The water leaks out of [the second noun] and evaporates immediately.";
  remove the quantity of water from play instead;
end if.
Check inserting the quantity of water into the bottle:
try taking the quantity of water instead.
Check inserting the quantity of water into an enterable container:
  if the bottle is closed, say "The bottle is closed." instead;
  say "There is now a puddle in the bottom of [the second noun].";
  now the quantity of water is in the second noun instead.
Check taking the quantity of water:
if the player is not carrying the bottle and the quantity of water is in the bottle begin;
  try taking the bottle instead;
else if the quantity of water is in the bottle;
  say "You already have it." instead;
else if the player is not carrying the bottle;
  say "The water slips through your fingers." instead;
else if the bottle is closed;
  say "The bottle is closed." instead;
else if something is in the bottle;
  say "The bottle is already full." instead;
else if the player is in the bucket;
  say "The bottle is now full of water.";
  move the quantity of water to the bottle;
  move the bucket to Circular Room instead;
else;
   say "The bottle is now full of water.";
  move the quantity of water to the bottle instead;
end if.
Check throwing the quantity of water at something:
  say "The water splashes on [the second noun] and evaporates immediately.";
  remove the quantity of water from play instead.
A persuasion rule for asking someone to try doing something when dead flag is true:
say "No one hears you." instead.

Check dropping when the player's command includes "throw":
if the noun is the quantity of water begin;
  say "The water splashes on the walls and evaporates immediately.";
  remove the noun from play instead;
else;
  continue the action;
end if.
Check dropping the quantity of water when the player's command does not include "throw":
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
move the bucket to Top of Well;
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
Check winding: if the noun is not the golden clockwork canary and the noun is not the broken canary, say "You cannot wind up [a noun]." instead.
Understand the command "answer" as something new.
Understand the command "say" as something new.
speaking is an action applying to one topic. Understand "answer [text]" as speaking.
Understand "say [text]" as speaking.
Check speaking:
if the player is not in Riddle Room or the topic understood does not include "well" or the great door is open, say "No one seems to be listening." instead.
Carry out speaking:
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
641	"Advanced Cheater"
666	"Master Cheater"
691	"Super Cheater"
716	"Dungeon Master"

Kicking is an action applying to one visible thing. Understand "kick [something]" as kicking.
Carry out kicking: if dead flag is true, say "All such attacks are vain in your position." instead;
say "Kicking [a noun] is not notably useful."

Lamp-power is a number that varies. Lamp-power is usually 325.

Check switching on the battery-powered brass lantern when lamp-power is 0: say "The battery has died." instead.

Load-max is a number that varies. Load-max is usually 100.
A thing has a number called size.  The size of a thing is usually 5.
A container has a number called capacity. The capacity of a container is usually 5.
Weight-sum is a number that varies. Weight-sum is usually 0.
Check the player taking something:
now weight-sum is 0;
repeat with item running through things had by the player begin;
  now weight-sum is weight-sum plus the size of item;
end repeat;
if weight-sum plus the size of the noun is greater than load-max, say "Your load is too heavy.  You will have to leave something behind." instead.
Check inserting something into something else:
now weight-sum is 0;
repeat with item running through things in the second noun begin;
  now weight-sum is weight-sum plus the size of item;
end repeat;
if weight-sum plus the size of the noun is greater than the capacity of the second noun, say "It won't fit." instead.
Lifting is an action applying to one visible thing. Understand "lift [something]" and "raise [something]" as lifting.
Check lifting:
if the noun is the rug begin;
say "The rug is too heavy to lift, but in trying to raise it you notice an irregularity beneath it.";
else if the noun is the tbasket;
  if the player is in Lower Shaft begin;
    say "The basket is raised to the top of the shaft.";
    move the tbasket to Shaft Room;
    move the fbasket to Lower Shaft;
  else;
    say "Playing in this way with [a noun] has no effect.";
  end if;
else if the noun is the fbasket;
  if the player is in Shaft Room begin;
    say "The basket is raised to the top of the shaft.";
    move the tbasket to Shaft Room;
    move the fbasket to Lower Shaft;
  else;
    say "The basket is at the other end of the chain.";
  end if;
else;
  say "Playing in this way with [a noun] has no effect.";
end if.
Lowering is an action applying to one visible thing. Understand "lower [something]" as lowering.
Check lowering:
if the noun is the tbasket begin;
  if the player is in Shaft Room begin;
    say "The basket is lowered to the bottom of the shaft.";
    move the fbasket to Shaft Room;
    move the tbasket to Lower Shaft;
  else;
    say "Playing in this way with [a noun] has no effect.";
  end if;
else if the noun is the fbasket;
 if the player is in Lower Shaft begin;
    say "The basket is lowered to the bottom of the shaft.";
    move the fbasket to Shaft Room;
    move the tbasket to Lower Shaft;
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
if the noun is the coil of rope and the second noun is the braided wire, say "There is nothing it can be tied to." instead;
if the second noun is a rope, try tying the second noun to the noun instead;
if the noun is not a rope, say "You can't tie stuff with that." instead;
if the noun is attached to a nonrope thing (called the item), say "[The noun] is already attached to [the item]." instead;
if the player is carrying the second noun, say "It is too clumsy when you are carrying it." instead;
if the second noun is round, say "There is nothing it can be tied to." instead.

Carry out tying:
  now the noun is attached to the second noun;
  if the second noun is in Slide Room and the player is carrying the noun begin;
   move the noun to Slide Room;
   say "The rope dangles down the slide." instead;
  end if.
Report tying:
  say "The rope is now attached to [the second noun].".
Check taking a rope (called the coil) when the coil is attached to a nonrope thing (called the item):
  say "You'll have to untie [the item] first." instead.
Check taking a nonrope thing (called the item) which is attached to a rope:
say "The coil of rope comes loose from [the item].";
now the coil is not attached to the item.
Untying it from is an action applying to two things. 
Understand "untie [something] from [something]" as untying it from. Understand "untie [something]" as untying it from. 

Rule for supplying a missing second noun while untying something from: 
    if the number of secondary things attached to the noun is 0, say "[The noun] is already entirely free." instead; 
    if the noun is a rope 
    begin; 
        if the number of touchable nonrope things which are attached to the noun > 1 
        begin; 
            say "You'll have to say which thing you want to untie [the noun] from."; 
            rule fails; 
        otherwise; 
            if the number of touchable nonrope attached to the noun is 0, say "You can't reach [the random nonrope thing attached to the noun]." instead; 
            let the tied object be a random touchable nonrope thing which is attached to the noun; 
            say "(from [the tied object])[line break]"; 
            now the second noun is the tied object; 
        end if; 
    otherwise; 
        if the noun is attached to a rope (called the tied object) 
        begin; 
            say "(from [the tied object])[line break]"; 
            now the second noun is the tied object; 
        end if; 
    end if. 
Check untying it from: 
    if the noun is attached to the second noun or the second noun is attached to the noun, do nothing; 
    otherwise say "[The noun] and [the second noun] are already not tied together." instead;
if the noun is not a rope, try untying the second noun from the noun instead.
Carry out untying it from: 
    now the noun is not attached to the second noun. 
Report untying it from: 
    say "The rope is now untied.".
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
    if the thingy is the trophy case begin;
     say "[line break]Your collection of treasures consists of:[line break][stuff in the thingy]";
    else if the thingy is the nest and the egg is in the thingy and the egg is untouched;
      say "[initial appearance of the egg]";
    else;
     say "[line break][The thingy] contains:[line break][stuff in the thingy]";
  end if;
end if.
To say stuff in (O - an object):
list the contents of O,
    with newlines, 
    indented, 
    giving inventory information, 
    including contents, 
    not listing concealed items, 
    and with extra indentation.
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
"You do not click your heels together three times while speaking 'There's no place like home.' "	--
"Wave the stick while standing at the end of the rainbow"	--
"This is similar to the fissure puzzle in ADVENTURE"	--

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
if dead flag is true, say "How can you think of your score in your condition?" instead.
Before opening:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before closing:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before eating:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before drinking:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before rubbing:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before touching:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before burning something with something:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before burning something:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before untying:
if dead flag is true, say "Even such a simple action is beyond your capabilities" instead.
Before speaking:
if dead flag is true, say "No one hears you." instead.
Before switching on something:
if dead flag is true, say "You need no light to guide you." instead.
Before taking something:
if dead flag is true, say "Your hand passes through the object." instead.
Before taking inventory:
if dead flag is true, say "You are empty handed." instead.
Instead of doing something other than looking, going, attacking, kicking, or destroying:
if dead flag is false, continue the action;
say "You can't do even that.".

Death count is a number that varies.
When play ends when the game ended in death:
increase death count by 1;
award -10 points;
if endgame flag is true begin;
  say "Normally, I would attempt to rectify your condition, but I'm ashamed
to say my abilities are not equal to dealing with your present state
of disrepair.  Please let me express my profoundest regrets.";
else if death count is 3;
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
  now dead flag is true;
  now the player is lit;
  move the player to Entrance to Hades;
  resume the game;
end if.
The player has a number called wounds.  Wounds is usually 0.
The player has a number called cure wait.  Cure wait is usually 0.
Diagnosing is an action applying to nothing.  Understand "diagnose" as diagnosing.
Check diagnosing:
  if dead flag is true, say "You are dead as a doornail." instead.
[* Mind! I don't mean to say that I know, of my own knowledge, what there is particularly dead about a door-nail. I might have been inclined, myself, to regard a coffin-nail as the deadest piece of ironmongery in the trade. But the wisdom of our ancestors is in the simile; and my unhallowed hands shall not disturb it, or the Country-s done for. You will therefore permit me to repeat, emphatically, that Marley was as dead as a door-nail. --Charles Dickens]
Carry out diagnosing:
  if the wounds of the player is 0 begin;
    say "You are in perfect health.  You are strong enough to take several wounds.";
  else if the wounds of the player is 1;
    say "You have a light wound, which will be cured in [cure wait of the player] turn[s].  You can survive one serious wound.";
  else if the wounds of the player is 2;
    say "You have a serious wound, which will be cured in [cure wait of the player] turn[s].  You can be killed by a serious wound.";
  else if the wounds of the player is 3;
    say "You have a several wounds, which will be cured in [cure wait of the player] turn[s].  You can be killed by one more light wound.";  
  else if the wounds of the player is 4;
    say "You have a serious wounds, which will be cured in [cure wait of the player] turn[s].  You are at death's door.";  
  end if;
  if death count is 1, say "You have been killed once.";
  if death count is 2, say "You have been killed twice.".

Burning it with is an action applying to one thing and one carried thing.  Understand "burn [something] with/using [something]" as burning it with. Understand "light [something] with/using [something]" as burning it with.

Check burning (this is the new burning rule):
  if the noun is not the matchbook and the player is carrying something flaming begin;
    let i be the number of flaming things had by the player;
    if i is 1, try burning the noun with a random flaming thing held by the player instead;
    else say "It's not clear what you want to burn [the noun] with." instead;
  else if the noun is not the matchbook;
    say "It's not clear what you want to burn [the noun] with." instead;
  else if the matchbook is flaming;
    say "The match is already lit." instead;
  else if match count is less than 1;
    say "I'm afraid you have run out of matches." instead;
  end if.  
Match tick is a number that varies.  Match tick is usually -1.
Carry out burning:
 say "One of the matches starts to burn.";
 now match tick is 2;
 now the matchbook is flaming.

Check switching off something which is flaming:
  if the noun is the matchbook begin;
    say "The match is out." instead;
    now match tick is -1;
    now the matchbook is non-flaming;
  else if the noun is the pair of candles;
    say "The flame is extinguished." instead;
  else if the noun is the ivory torch;
    say "You burn your hand as you attempt to extinguish the flame." instead;
  end if.


The new burning rule is listed instead of the block burning rule in the check burning rulebook.

Check burning it with:
  if the second noun is not flaming, say "How do you expect to burn anything with that?" instead;
  if the noun is the black book begin;
    say "A booming voice says 'Wrong, cretin!' and you notice that you have turned into a pile of dust.";
    end the game in death instead;
  end if;
  if the noun is the barrel, say "The barrel is damp and cannot be burned." instead;
  if the noun is flaming, say "[The noun] is already burning." instead;
  if the noun is not the candles and the noun is not inflammable, say "I don't think you can burn [a noun]." instead;
  if the noun is the brick begin;
  say "Now you've done it.  It seems that the brick has other properties
than weight, namely the ability to blow you to smithereens.";
  remove the brick from play;
  end the game in death instead;
  end if.

Candle tick is a number that varies.  Candle tick is usually 40.
Carry out burning it with:
if the noun is the pair of candles begin;
if the candles are flaming, say "You realize, just in time, that the candles are already lighted." instead;
if candle tick is 0, say "There's not much left of the candles; definately not enough left to light." instead;
if the second noun is the torch begin;
  say "The heat from the torch is so intense that the candles are vaporized.";
  remove the candles from play instead;
end if;
say "The candles are now lighted.";
if the player is in Entrance to Hades begin;
if exorcism flag is 1 begin;
say "The flames flicker wildly and appear to dance.  The earth beneath
your feet trembles, and your legs nearly buckle beneath you.
The spirits cower at your unearthly power.";
now exorcism flag is 2;
else if exorcism flag is -1;
continue the action;
else;
say "The tension of this ceremony is broken, and the wraiths, amused but
shaken at your clumsy attempt, resume their hideous jeering.";
now exorcism flag is 0;
end if;
end if;
now the candles are flaming;
else if the noun is in the receptacle;
  now the noun is flaming;
  say "[The noun] burns inside the receptacle.";
  now burn interrupt is 20 * the size of the noun;
else if the noun is the pile of leaves;
  now the grating is revealed;
  if the player is carrying the noun begin;
  say "The sight of someone carrying a pile of burning leaves so offends the neighbors that  they come over and put you out.";
   remove the pile of leaves from play;
   end the game in death;
   else;
     say "The leaves burn and the neighbors start to complain.";
     remove the pile of leaves from play;
   end if;
else if the noun is the coil of wire;
  if the coil of wire is not part of the brick begin;
  say "The wire rapidly burns to nothingness.";
  remove the coil of wire from play;
  else;
    say "The wire starts to burn.";
    now wire clock is 1;
  end if;
else;
  if the noun is the bills, say "Nothing like having money to burn!";
  if the player is carrying the noun begin;
    say "[The noun] catches fire and is consumed.  Unfortunately, you were holding it at the time.";
    end the game in death;
  else;
    say "[The noun] catches fire and is consumed.";
  end if;
end if.

Wire clock is a number that varies.  Wire clock is usually -1.
Ledge clock is a number that varies.  Ledge clock is usually -1.

Burn interrupt is a number that varies.  Burn interrupt is usually -1.
After dropping the candles:
if the candles are flaming, now the candles are non-flaming;
continue the action.
Every turn when the candles are flaming and the candles are touched:
  decrease candle tick by 1;
  if candle tick is 0 begin;
    now the candles are non-flaming;
    say "I hope you have more light than from a pair of candles.";
 else if candle tick is 20 or candle tick is 10 or candle tick is 5;
    say "The candles grow shorter.";
 end if.
The bad place is a room that varies.
Squish clock is a number variable.  Squish clock is usually -1.

Knocking is an action applying to one visible thing.  Understand "knock [something]" and "knock on [something]" and "rap on [something]" and "rap [something]" as knocking.

Check knocking:
if the noun is not a door, say "Why knock on [a noun]?" instead;
if the noun is not the large wooden door, say "I don't think anyone is home." instead.
Carry out knocking:
say "The knock reverberates along the hall.  For a time it seems there
will be no answer.  Then you hear someone unlatching the small wooden
panel.  Through the bars of the great door, the wrinkled face of an
old man appears.  He gazes down at you and intones as follows:[paragraph break]";
say "[5 spaces] 'I am the Master of the dungeon, whose task it is to insure
that none but the most scholarly and masterful adventurers are 
admitted into the secret realms of the dungeon.  To ascertain whether 
you meet the stringent requirements laid down by the Great
Implementers, I will ask three questions which should be easy for
one of your reputed excellence to answer.  You have undoubtedly
discovered the answers during your travels through the dungeon.
Should you answer each of these questions correctly within five
attempts, then I am obliged to acknowledge your skill and daring and
admit you to these regions.'[paragraph break]";
say "All answers should be in the form [']ANSWER 'answer'['].";
now question number is 1;
move the dungeon master to Hallway4.

Spinning it to is an action applying to one thing and one number.  Understand "spin [something] to [a number]" as spinning it to. Understand "turn [something] to [a number]" as spinning it to.
Check spinning it to:
if the noun is not the dial, say "You can't do that to [the noun]." instead;
if the number understood is less than 1, say "The dial only goes from 1 to 8." instead;
if the number understood is greater than 8, say "The dial only goes from 1 to 8." instead.
Carry out spinning it to:
say "The dial now points to [the number understood].";
now dial number is the number understood.

Part 2 - Above Ground Stuff

A room called West of House is an outdoors room. "You are in an open field on the west side of a white house with a boarded front door."

The small mailbox is a container in West of House. The mailbox is fixed in place, closed, and openable. 
Understand "box" and "mail box" and "mail-box" as the mailbox.

The size of the leaflet is 2.
The capacity of the mailbox is 10.
A leaflet is in the mailbox. The description of the leaflet is "[leaflet text]".
To say leaflet text:
center "Welcome to Zork!";
say paragraph break;
say "   Zork is a game of adventure, danger, and low cunning.  In it you will explore some of the most amazing territory ever seen by mortal man.  Hardened adventurers have run screaming from the terrors contained within.[paragraph break]";
say "   In Zork, the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
say "   No system should be without one![paragraph break]";
[* Originally, this said "No PDP-10 should be without one" but the user is probably not playing ZORK on a PDP-10]
say "   Zork was created at the MIT Laboratory for Computer Science by
Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling.  It was inspired by the Adventure game of Crowther and Woods, and the long tradition of fantasy and science fiction games.[paragraph break]";
say "   On-line information may be obtained with the command HELP (synonyms are ABOUT, INFO, HINT, etc.)."
The leaflet is inflammable.

An electric lamp is a kind of device. Carry out switching on an electric lamp: now the noun is lit. Carry out switching off an electric lamp: now the noun is unlit.

A portable supporter called a rubber welcome mat is here. "A rubber mat saying 'Welcome to Zork' lies by the door." The description of the mat is "The mat says 'Welcome to Zork'."
The size of the rubber welcome mat is 
12.

Mat under is a truth state that varies. Mat under is usually false.
After taking, pushing, or pulling the rubber welcome mat:
  if something (called the thingy) is on the mat begin;
    say "As the mat is moved, [a thingy] falls from it and onto the floor.";
    move the thingy to the location;
    now mat under is false;
  else;
     now mat under is false;
     continue the action;
  end if.
Check removing something from the mat when mat under is true:
  print the you can't see message instead.

An outdoors room called North of House is north of West of House.  "You are facing the north side of a white house.  There is no door here, and all the windows are barred." South of North of House is nowhere.  West of North of House is West of House. 

An outdoors room called South of House is south of West of House.  "You are facing the south side of a white house.  There is no door here, and all the windows are barred."  North of South of House is nowhere. West of South of House is West of House.

An outdoors room called Behind House is east of North of House and east of South of House. "You are behind the white house.  In one corner of the house is a window that is [if the window is closed]slightly ajar. [otherwise]open." 
North of Behind House is North of House.  South of Behind House is South of House. Behind House is outdoors.

The white house is a backdrop.  The white house is in West of House and North of House and South of House and Behind House. The description of the white house is "The house is a beautiful colonial house which is painted white.  It is clear that the owners must have been extremely wealthy."

The front door is scenery in West of House.
Check entering the front door: say "The door is locked, and there is evidently no key." instead.
Check going east from West of House: say "The door is locked, and there is evidently no key." instead.
Check opening the front door: say "The door cannot be opened." instead.
Check unlocking the front door with something: say "It doesn't seem to work." instead.

The window is a door.  The window is west of Behind House and east of Kitchen. The window is closed and openable. The window is scenery.
Check climbing the window: try entering the noun instead.
Check going inside while the location is Behind House: try entering the window instead. Check exiting while the location is Kitchen:  try entering the window instead.
Report opening the window: say "With great effort, you open the window far enough to allow entry." instead.
Report closing the window: say "The window closes (more easily than it opened)." instead.
After going through the window for the first time: award 10 points; continue the action.
The description of Kitchen is "This is the kitchen of the white house.  A table seems to have been used recently for the preparation of food.  A passage leads to the west, and a dark staircase can be seen leading upward.  A dark chimney leads down and to the east is a small window which is [if the window is open]open. [otherwise]closed."
The sack is in Kitchen. "On the table is an enlongated brown sack, smelling of hot peppers." The sack is a closed openable container.
The sack is inflammable.
The capacity of the sack is 15. The size of the sack is 3.
Inside the sack is a lunch and a clove of garlic.  The lunch and the garlic are edible.
Report eating something: say "Thank you very much.  That reallly hit the spot." instead.
A closed openable transparent container called a bottle is in Kitchen. "Sitting on the table is a small bottle." 
Check destroying the bottle:
  say "A brilliant maneuver destroys the bottle.";
  remove the bottle from play instead.
The capacity of the bottle is 4.
Check dropping the bottle when the player's command includes "throw":
  try throwing the noun at the player instead.
Check throwing the bottle at something:
  say "The bottle hits the far wall and shatters.";
  remove the bottle from play instead.
Understand "bottle of [something related by containment]" as the bottle.
The Living Room is west of the Kitchen.  "This is the living room.  There is a door to the east. [if the wooden door is closed] To the west, there is a wooden door with strange gothic lettering, which appears to be nailed shut. [otherwise] To the west, there is a wooden door with strange gothic lettering and a cyclops-sized hole in it."
The description of the wooden door is "The engravings translate to 'This space intentionally left blank.' [if the door is open]The door has a cyclops-sized hole in it." 
An oriental rug is here. "In center of the room is [if the trap door is not revealed]a large oriental rug.[otherwise][status of the trap door] trap door." Understand "carpet" as the rug.
A closed openable transparent container called a trophy case is here.
Check  taking the case: say "The trophy case is securely fastened to the wall (perhaps to foil any attempt by robbers to remove it)." instead.
A weapon called an elvish sword is here.  "On hooks above the mantelpiece hangs an elvish sword of great antiquity."
Understand "glamdring" and "orcrist" as the elvish sword.
Understand "lamp" as the battery-powered brass lantern.
The capacity of the trophy case is 32767.
The size of the sword is 30.
An electric lamp called a battery-powered brass lantern is here.  "A battery powered brass lantern is on the trophy case." 
The size of the battery-powered brass lantern is 15.
A broken lamp is a thing. Understand "lantern" and "brass" as the broken lamp.
Check throwing the lamp at something:
  say "The lamp smashes into the ground and is ruined.";
  remove the battery-powered brass lantern from play;
  now the broken lamp is in the location instead.
Check dropping the battery-powered brass lantern when the player's command includes "throw":
  say "The lamp smashes into the ground and is ruined.";
  remove the battery-powered brass lantern from play;
  now the broken lamp is in the location instead.
Instead of switching on or switching off the broken lamp: say "The lamp is broken.  Some idiot must have smashed it.".
A newspaper is here. "There is an issue of US NEWS & DUNGEON REPORT here."
The description of the newspaper is
" [masthead]This is the Inform 7 version of Dungeon (Zork).  For more information on Inform 7, see <http://inform-fiction.org>.  Please report all bugs to Dean Menezes <samanddeanus@yahoo.com>.

Lots and lots and lots and LOTS of bugs have been fixed.

Aspiring adventurers should avail themselves of every opportunity to broaden their intellectual horizons and increase their perspicacity.

Fatal events have somewhat more convoluted results than previously."
The newspaper is inflammable.
To say masthead:
center "US NEWS AND DUNGEON REPORT";
center "2007[12 spaces]Late Dungeon Edition";
say paragraph break.

Understand "news", "report", and "paper" as the newspaper.

Forest is a region.  Forest 1, Forest 2, Forest 3, Forest 4, Forest 5, and Up a Tree are in Forest.

North of North of House is Forest 4 with printed name "Forest" and description "This is a dimly lit forest, with large trees all around.  One particularly large tree with some low branches stands here."
Every turn while the location is in Forest: 
if a random chance of 1 in 5 succeeds, say "You hear in the distance the chirping of a song bird.".
Up a Tree is an outdoors room.

A door called the tree is a door. The tree is scenery. The tree is open and not openable.  The tree is up from Forest 4 and down from Up a Tree.



The description of Up a Tree is "You are about ten feet above the ground nestled among some large branches. The nearest branch above you is beyond your reach."
Check climbing the tree: try entering the noun instead.
A container called a birds nest is here. "On the branch is a small birds nest.  ".  A closed unopenable container called a jewel-encrusted egg is in the nest. The initial appearance of the jewel-encrusted egg is "In the bird's nest is a large egg encrusted with precious jewels, apparently scavenged somewhere by a childless songbird.  The egg is covered with fine gold inlay and ornamented in lapis lazuli and mother-of-pearl.  Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed. The egg appears extremely fragile." The description of the egg is "The egg is covered with fine gold inlay and ornamented in lapis lazuli and mother-of-pearl.  Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed. The egg appears extremely fragile."
Understand "whole" as the jewel-encrusted egg.
The birds nest is inflammable.
The capacity of the nest is 20.
The capacity of the jewel-encrusted egg is 6.
Check dropping something while the location is Up a Tree:
if the noun is not the jewel-encrusted egg begin;
  say "[The noun] falls to the ground.";
  move the noun to Forest 4 instead;
else if the golden clockwork canary is not in the jewel-encrusted egg;
  say "The jewel-encrusted egg falls to the ground and is ruined.";
  move the broken jewel-encrusted egg to Forest 4;
  remove the broken canary from play;
  remove the jewel-encrusted egg from play instead;
else;
  say "The jewel-encrusted egg falls to the ground and is ruined.";
  move the broken jewel-encrusted egg to Forest 4;
  remove the jewel-encrusted egg from play instead;
end if.
The broken jewel-encrusted egg is an open openable container. The broken clockwork canary is inside the broken egg.
The golden clockwork canary is inside the jewel-encrusted egg.
Check dropping the jewel-encrusted egg when the player's command includes "throw": try destroying the broken egg instead.
Check throwing the jewel-encrusted egg at something:
try destroying the jewel-encrusted egg instead.
Check destroying the jewel-encrusted egg when the jewel-encrusted egg is not openable:
   say "Your rather indelicate handling of the egg has caused it some damage.[line break]The egg is now open.";
   move the broken egg to the holder of the jewel-encrusted egg;
   remove the jewel-encrusted egg from play;
     say "There is a golden clockwork canary nestled in the egg.  It seems to have recently had a bad experience.  The mountings for its jewel-like eyes are empty, and its silver beak is crumpled.  Through a cracked crystal window below its left wing you can see the remains of intricate machinery.  It is not clear what result winding it would have, as the mainspring appears sprung." instead.
Carry out winding the broken canary:
  say "There is an unpleasant grinding noise from inside the canary."

The description of the broken canary is "There is a golden clockwork canary nestled in the egg.  It seems to have recently had a bad experience.  The mountings for its jewel-like eyes are empty, and its silver beak is crumpled.  Through a cracked crystal window below its left wing you can see the remains of intricate machinery.  It is not clear what result winding it would have, as the mainspring appears sprung."
The description of the golden clockwork canary is "This is a golden clockwork canary.  It has ruby eyes and a silver beak.  Through a crystal window below its left wing you can see intricate machinery inside.  It appears to have wound down."
Check destroying the jewel-encrusted egg with something:
try destroying the jewel-encrusted egg instead.
After taking the jewel-encrusted egg for the first time: award 5 points; continue the action.
A beautiful brass bauble is a thing.
Bauble flag is a truth state that varies. Bauble flag is false.
The case-points of the jewel-encrusted egg is 7.
Carry out winding the golden clockwork canary:
if the player is in Forest and bauble flag is false begin;
  say "The canary chirps, slightly off key, an aria from a forgotten opera.
From out of the greenery flies a lovely song bird.  It perches on a
limb just over your head and opens its beak to sing.  As it does so,
a beautiful brass bauble drops from its mouth, bounces off the top
of your head, and lands glimmering in the grass.  As the canary winds
down, the song bird flies away.";
  now bauble flag is true;
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
West of Forest 4 is North of House. Clearing is south of Forest 4. North of Forest 4 is Forest 3. South of Forest 3 is Forest 5. Forest 5 has printed name "Forest" . Forest 5 has description "This is a large forest, with trees obstructing all views except to the east, where a small clearing may be seen through the trees." North of Forest 5 is Forest 2. The description of Forest 2 is "This is a forest with trees in all directions around you." The printed name of Forest 2 is "Forest". South of Forest 5 is Forest 5. West of Forest 5 is Forest 3.  North of Forest 2 is Forest 2. West of Forest 2 is Forest 3. Southeast of Clearing is Forest 2. Northwest of Forest 2 is nowhere. South of Forest 1 is west of Forest 3.
West of West of House is Forest 1. East of Forest 1 is Forest 4. North of Forest 1 is Forest 1. West of Forest 1 is Forest 1. The printed name of Forest 1 is "Forest". The description of Forest 1 is "This is a forest with trees in all directions around you."

Clearing has description "This is a clearing, with a forest surrounding you on the west and south." A pile of leaves is here.
The pile of leaves is inflammable.
The later appearance of the pile of leaves is "There is a pile of leaves on the ground."
The size of the leaves is 25.
The grating is a secret door.  The grating is down from Clearing and up from Grating Room.  The grating is closed, openable, locked, and lockable.  
After taking or pushing or pulling the leaves for the first time:
say "Moving the pile of leaves reveals a grating.";
now the grating is revealed.
The attic stairs is a door. The attic stairs are open and not openable.The attic stairs is scenery.
A dark room called the Attic is up from the attic stairs. "This is the Attic.  The only exit is stairs that lead down."

A rope called a large coil of rope is here.  "A large coil of rope is in the corner." A square brick feeling like clay is here. 
The brick is inflammable.
The later appearance of the square brick is "There is a square brick here which feels like clay." 
The size of the rope is 10.
The size of the brick is 15.
A weapon called a nasty-looking knife is here. "On a table is a nasty-looking knife."
Understand "nasty knife" as the nasty-looking knife.
Down from the attic stairs is the Kitchen. Check climbing the attic stairs: try entering the noun instead.
The wooden door is a door.  The wooden door is scenery.  The wooden door is west of Living Room and east of Strange Passage.  The wooden door is closed and not openable.

Down from the Living Room is a secret door called the trap door.
To say status of the trap door:
say "[if the trap door is open]an open[otherwise]a closed".

The trap door is up from the Cellar. Understand "trapdoor" and "trap-door" as the trap door.
After opening the trap door:
say "The door reluctantly opens to reveal a rickety staircase descending into darkness."
After closing the trap door:
say "The door swings shut and closes."
Exit found is a truth state variable.  Exit found is false.
The rval of Cellar is 25.

After going through the trap door:
if exit found is false, shut the player in;
continue the action.
To shut the player in:
say "The trap door crashes shut, and you hear someone barring it.";
now the trap door is closed. 
Check opening the trap door when the player is in the Cellar and exit found is false:
 say "The trap door is locked from above." instead.
Check looking under the rug: say "There's a trap door under the rug." instead.
Check going through the closed trap door: say "The trap door is closed." instead.
Check taking the rug: say "The rug is too heavy to lift." instead.
After pushing or pulling the rug for the first time: say "With a great effort, the rug is moved to one side of the room. With the rug moved, the dusty cover of a closed trap door appears."; now the trap door is revealed.
After pushing or pulling the rug: say "Having moved the carpet previously, you find it impossible to move it again."

Southeast of Forest 2 is west of a room called Canyon View.  South from Canyon View is east of Forest 5.  The description of Canyon View is "You are at the top of the Great Canyon on its south wall.  From here there is a marvelous view of the Canyon and parts of the Frigid River
upstream.  Across the canyon, the walls of the White Cliffs still
appear to loom far above.  Following the Canyon upstream (north and
northwest), Aragain Falls may be seen, complete with rainbow. 
Fortunately, my vision is better than average and I can discern the
top of the Flood Control Dam #3 far to the distant north.  To the
west and south can be seen an immense forest, stretching for miles
around.  It is possible to climb down into the canyon from here."

Down from Canyon View is a room called Rocky Ledge.  The description of Rocky Ledge is "You are on a ledge about halfway up the wall of the river canyon.
You can see from here that the main flow from Aragain Falls twists
along a passage which it is impossible to enter.  Below you is the
canyon bottom.  Above you is more cliff, which still appears
climbable."

Down from Rocky Ledge is a room called Canyon Bottom.  The description of Canyon Bottom is "You are beneath the walls of the river canyon which may be climbable
here.  There is a small stream here, which is the lesser part of the
runoff of Aragain Falls. To the north is a narrow path."

North of Canyon Bottom is southeast of a room called End of Rainbow.  The description of End of Rainbow is "You are on a small, rocky beach on the continuation of the Frigid River past the Falls.  The beach is narrow due to the presence of the White Cliffs.  The river canyon opens here and sunlight shines in from above. A rainbow crosses over the falls to the west and a narrow path continues to the southeast."

Part 3 - Cellar Area and Bank of Zork

A dungeon is a kind of room. A dungeon is usually dark.
The Cellar is a dungeon. The Cellar is west of a dungeon called Troll Room.  "You are in a dark and damp cellar with a narrow passageway leading east, and a crawlway to the south.  On the west is the bottom of a steep metal ramp which is unclimbable."
Check going west while the location is Cellar: say "You attempt to climb the ramp, but it is too slippery, and you slide back down." instead.
The description of Troll Room is "This is a small room with passages off in all directions. Bloodstains and deep scratches (perhaps made by an axe) mar the
walls."
A man called the Troll is in Troll Room.  The initial appearance of the Troll is "[if the troll is consious]A nasty-looking troll, brandishing a bloody axe, blocks all passages out of the room.[otherwise]There is an unconsious troll here.[end if]".
Check going when the player can see the consious Troll:
if the noun is not west, say "The troll fends you off with a menacing gesture." instead;
else continue the action.
Check throwing something at the troll:
say "The troll, who is remarkably coordinated, catches [the noun] " instead;
if the noun is a weapon begin;
  say "and being for the moment sated, throws it back.  Fortunately, the troll has poor control, and the knife falls on the floor.  He does not look pleased.";
  move the noun to the location instead;
else;
  say "and not having the most discriminating tastes, gleefully eats it.";
  remove the noun from play instead;
end if.
The troll can be consious or unconsious.
Check attacking the unconsious troll with something:
say "The unconscious troll cannot defend himself:  He dies.";
say "Almost as soon as the troll breathes his last breath, a cloud
of sinister black fog envelops him, and when the fog lifts, the
carcass has disappeared.";
remove the troll from play instead.
West of a dungeon called West of Chasm is south of Cellar. "You are on the west edge of a chasm, the bottom of which cannot be seen. The east side is sheer rock, providing no exits. A narrow passage goes west.  The path you are on continues to the north and south."
Check going down from West of Chasm: say "The chasm probably leads directly to the infernal regions." instead.
Check jumping while the location is West of Chasm: fatally leap instead.
A dungeon called Gallery is south of West of Chasm. "This is an art gallery. Most of the paintings which were here have been stolen by vandals with exceptional taste. The vandals left through the north, south, or west exits."
A painting is here. "Fortunately, there is still one chance for you to be a vandal, for on the far wall is a work of unparalleled beauty."
The printed name of the painting is "masterpiece by a neglected genius".
Understand "masterpiece" as the painting. The painting is inflammable.
After taking the painting for the first time: award 4 points; continue the action. 
The painting has case-points 7.
The size of the painting is 15.
A worthless piece of canvas is a thing.
Check destroying the painting:
    say "Congratulations!  Unlike the other vandals, who merely stole the
artist's masterpieces, you have destroyed one."; now the player has the worthless piece of canvas; remove the painting from play instead.
Check destroying the painting with something:
    say "Congratulations!  Unlike the other vandals, who merely stole the
artist's masterpieces, you have destroyed one."; now the player has the worthless piece of canvas; remove the painting from play instead.
To strike a blow at the player:
  let x be a random number between 1 and 6;
    if x is 1 or x is 2 begin;
      say "[one of]The troll swings his axe, but it misses.[or]The troll's axe barely misses your ear.[or]The axe sweeps past as you jump aside.[or]The axe crashes against the rock, throwing sparks![at random]";
   else if x is 3;
      say "The troll's axe removes your head.";
      end the game in death;
   else if x is 4 or x is 5;
      say "[one of]The troll hits you with a glancing blow, and you are momentarily
stunned.[or]An axe stroke makes a deep wound in your leg.[or]The troll's axe swings down, gashing your shoulder.[at random]";
      increase the wounds of the player by 1;
   else if x is 6;
     say "[one of]You stagger back under a hail of axe strokes.[or]The troll's mighty blow drops you to your knees.[or]The troll swings; the blade turns on your armor but crashes
broadside into your head.[at random]";
     increase the wounds of the player by 2;
   end if.
Carry out attacking the troll with something:
  if a random chance of 1 in 2 succeeds begin;
  if the second noun is the sword begin;
    say "[one of]Your sword crashes down, knocking the troll into dreamland.[or]The troll is battered into unconsciousness.[or] A furious exchange, and the troll is knocked out![at random]";
  else;
    say "[one of]The haft of your knife knocks out the troll.[or]The troll drops to the floor, unconscious.[or]The troll is knocked out![at random]";
  end if;
  now the troll is unconsious;
  else if a random chance of 1 in 2 succeeds;
   if the second noun is the sword begin;
     say "[one of]The troll receives a deep gash in his side.[or]A savage blow on the thigh!  The troll is stunned but can still fight![or]Slash!  Your blow lands!  That one hit an artery, it could be serious![at random]";
  else;
  say "[one of]The troll receives a deep gash in his side.[or]A savage cut on the leg stuns the troll, but he can still fight![or]Slash!  Your stroke connects!  The troll could be in serious trouble![at random]";
  increase the wounds of the troll by 2;
  end if;
  else;
    say "A good stroke, but it's too slow, the troll dodges.";
  end if;
  
The troll has a number called wounds.
Every turn when the troll is on-stage:
  if the wounds of the troll is greater than 4 begin;
    say "The troll takes a final blow and slumps to the floor, dead.";
    say "Almost as soon as the troll breathes his last breath, a cloud
of sinister black fog envelops him, and when the fog lifts, the
carcass has disappeared.";
  remove the troll from play;
  end if.
Every turn when the player can see the consious troll:
  strike a blow at the player.
Every turn when the troll is unconsious and the troll is on-stage and the player cannot see the troll:
  now the troll is consious.
South of Gallery is northwest of a dungeon called Studio. The description of Studio is "This is what appears to have been an artist's studio. The walls and floors are splattered with paints of 69 different colors. Strangely enough, nothing of value is hanging here. At the north and northwest of the room are open doors (also covered with paint). An extremely dark and narrow chimney leads up from a fireplace. Although you might be able to get up the chimney, it seems unlikely that you could get back down."

The chimney is a door.  The chimney is open and not openable.  Check climbing the chimney: try entering the noun instead. The chimney is scenery.  The chimney is up from Studio and down from Kitchen.
Check going through the chimney when the player is carrying more than 2 things:
    say "The chimney is too narrow for you and your baggage." instead.
Check going through the chimney while the location is Kitchen:
    say "Only Santa Claus climbs down chimneys." instead.
Check going through the chimney when the player is not carrying anything:
    say "Going up empty-handed is a bad idea." instead.

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
Gnome flag is a truth state that varies. Gnome flag is usually true.
The curtain of light is a thing in the Safety Depository.  The curtain is scenery. Understand "north" and "wall" as the curtain.
Small Room is a dark room.  The description of Small Room is "This is a small bare room with no distinguishing features. There are no exits from this room."
Vault is a dark room. The description of Vault is "This is the Vault of the Bank of Zork, in which there are no doors."
A stack of zorkmid bills is here. "On the floor sit 200 neatly stacked zorkmid bills." Understand "notes" or "banknotes" or "bank notes" as the bills. The description of the bills is "[banknotes]".
The stack of bills is inflammable.
After taking the portrait for the first time: award 11 points; continue the action.
After taking the bills for the first time: award 10 points; continue the action.
The case-points of the portrait is 5.
The case-points of the bills is 15.
The size of the bills is 10.
The size of the portrait is 25.
The portrait is inflammable.
Check going east when the player is in Safety Depository and the player has the portrait: say "The alarm sounds briefly, and an invisible force prevents your from leaving." instead.
Check going west when the player is in Safety Depository and the player has the portrait: say "The alarm sounds briefly, and an invisible force prevents your from leaving." instead.
Check going east when the player is in Safety Depository and the player has the bills: say "The alarm sounds briefly, and an invisible force prevents your from leaving." instead.
Check going west when the player is in Safety Depository and the player has the bills: say "The alarm sounds briefly, and an invisible force prevents your from leaving." instead.
Instead of touching, taking, pushing, pulling, or rubbing the curtain: say "As you attempt this feat, your hand goes through the curtain."
Check entering the curtain: 
say "You feel somewhat disoriented as you pass through.";
if the former location is West Teller's Room, move the player to Viewing Room instead;
if the former location is East Teller's Room, move the player to Viewing Room instead;
if the former location is Small Room, move the player to Vault instead;
if the former location is Vault or the former location is Chairman's Office, move the player to Small Room instead.
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

Check attacking the Gnome of Zurich: say "The gnome says, 'Well, I never!' and disappears with a snap of his fingers, leaving you alone." instead.
Check attacking the Gnome of Zurich with something: say "The gnome says, 'Well, I never!' and disappears with a snap of his fingers, leaving you alone." instead.
Check throwing something at the curtain: 
say "The curtain dims slightly as the [noun] passes through it.";
if the former location is West Teller's Room, move the noun to Viewing Room instead;
if the former location is East Teller's Room, move the noun to Viewing Room instead;
if the former location is Small Room, move the noun to Vault instead;
if the former location is Vault, move the noun to Small Room instead;
if the former location is Chairman's Office, move the noun to Small Room instead.
The south wall is a thing in Small Room.  The south wall is scenery.
Check entering the south wall: say "You feel somewhat disoriented as you pass through."; now the former location is the location; move the player to Safety Depository instead.
Understand "southern wall" as the south wall.
The north wall is a thing in Vault.  The north wall is scenery.
Check entering the north wall: say "You feel somewhat disoriented as you pass through."; now the former location is the location; move the player to Safety Depository instead.
To say pizza:
say "Your way is blocked by debris from an explosion.";
move the player to the former location;
Check throwing something at the north wall: 
say "The [noun] goes through." instead.
Check throwing something at the south wall: 
say "The [noun] goes through." instead.
Understand "NORTHERN WALL" as the north wall.
Does the player mean doing something to the curtain: it is very likely.
Does the player mean doing something to the north wall: it is very likely.
Does the player mean doing something to the south wall: it is very likely.
Instead of touching, taking, pushing, pulling, or rubbing the north wall: say "As you attempt this feat, your hand goes through the wall."
Instead of touching, taking, pushing, pulling, or rubbing the south wall: say "As you attempt this feat, your hand goes through the wall."
A dungeon called North-South Crawlway is north of Studio. "This is a north-south crawlway; a passage also goes to the east. There is a hole above, but it provides no opportunities for climbing." North of North-South Crawlway is north of West of Chasm. East of North-South Crawlway is east of Troll Room.
Check going up while the location is North-South Crawlway: say "Not even a human fly could get up it." instead.

Part 4 - The Maze

A maze is a kind of dungeon.  A maze usually has printed name "Maze". The description of a maze is usually "This is part of a maze of twisty little passages, all alike."
A dead end is a kind of dungeon. A dead end usually has printed name "Dead End".
South of Troll Room is west of a maze called Maze 1. North of Maze 1 is Maze 1. East of Maze 1 is north of a maze called Maze 2. South of Maze 1 is south of a maze called Maze 3. North of Maze 3 is Maze 2. East of Maze 3 is a maze called Maze 4. East of Maze 2 is south of a dead end called DE1. North of Maze 4 is west of Maze 2.
North of a maze called Maze 5 is up from Maze 4.  A skeleton is here. "A skeleton, probably the remains of a luckless adventurer, is here." An old leather bag of coins is here. "An old leather bag, bulging with coins is here." A burned-out lantern is here. "The deceased adventurer's useless lantern is here." Understand "useless" and "lamp" as the burned-out lantern.  The printed name of the bag of coins is "bag of coins".
A set of keys is here.
The printed name of the set of keys is "set of skeleton keys". Understand "skeleton keys" as the keys.

The size of the keys is 10.
A weapon called a rusty knife is here. "Beside the skeleton is a rusty knife."
The size of the rusty knife is 20.
After taking the rusty knife when the player is carrying the sword: say "As you pick up the rusty knife, your sword gives a single pulse of blinding blue light."
Check attacking something with the rusty knife: say "As the knife approaches its victim, your mind is submerged by an overmastering will.  Slowly, your hand turns, until the rusty blade is an inch from your neck.  The knife seems to sing as it savagely cuts your throat."; end the game in death instead.
Check throwing the rusty knife at something: say "As the knife approaches its victim, your mind is submerged by an overmastering will.  Slowly, your hand turns, until the rusty blade is an inch from your neck.  The knife seems to sing as it savagely cuts your throat."; end the game in death instead.

Instead of doing something to the skeleton: say "A ghost appears in the room and is appalled by your desecration of the remains of a fellow adventurer.  He casts a curse on all of your valuables and orders them banished to the Land of the Living Dead.  The ghost leaves, muttering obscenities."; scatter the treasure.
To scatter the treasure:
repeat with item running through things had by the player
begin;
if the case-points of the item is greater than 0, move the item to Land of the Living Dead;
end repeat.
Instead of switching on or switching off the burned-out lantern: say "The lantern is burned out."
The size of the burned-out lantern is 20.
After taking the coins for the first time: award 11 points; continue the action.
The case-points of the coins is 5.
The size of the coins is 15.
Southwest of Maze 5 is down from a maze called Maze 6. East of Maze 5 is a dead end.  West of Maze 6 is Maze 6. Up from Maze 6 is north of a maze called Maze 7. Northwest of Maze 7 is Maze 7. Southeast of Maze 7 is a east of a maze called Maze 8. West of Maze 8 is north of a maze called Maze 9. East of Maze 9 is south of Maze 7. Down from Maze 9 is east of a maze called Maze 10.  North from Maze 10 is a dead end. West of Maze 10 is Maze 5. Southwest from Maze 10 is a southwest of maze called Maze 11.  Northeast of Maze 11 is west of Maze 9. Down from Maze 11 is Maze 8. East of Maze 7 is Maze 11. West of Maze 11 is nowhere. Northwest of Maze 11 is Grating Room. The description of Grating Room is "This is a small room near the maze.  There are twisty passages in the immediate vicinity. Above you is a [if the grating is open]open[end if]grating[if the grating is locked] locked with a skull-and-crossbones lock[end if][if the grating is open] with sunlight poring in[end if]." Understand "grate" as the grating. The set of keys unlocks the grating. After going through the grating: now exit found is true; continue the action. West from Maze 7 is up from Maze 10. East of Maze 6 is a maze called Maze 12. Northeast of Maze 12 is DE1. Southwest of DE1 is nowhere. East of Maze 12 is northeast of a maze called Maze 13.  Southeast of Maze 12 is north of a dead end. West of Maze 13 is Maze 13. Up from Maze 12 is a northeast of a maze called Maze 14. Northwest of Maze 14 is Maze 14. South of Maze 14 is Maze 14. West of Maze 14 is west of a maze called Maze 15. South of Maze 12 is south of Maze 15. Northeast of Maze 15 is east of a dungeon called Cyclops Room. North of Cyclops Room is Strange Passage.
The description of Cyclops Room is "This is a room with an exit on the west side, and a staircase leading up."

A man called the Cyclops is here. "[cyclops text]."
Cyclops flag is a number that varies.  Understand "Polyphemus" as the cyclops.
Every turn:
if the player has been in Cyclops Room for at most 1 turn and the Cyclops is not gone, now the Cyclops is basic;
if the player can see the basic Cyclops for the fifth turn, now the Cyclops is hungry;
if the Cyclops is basic or the cyclops is gone, now cyclops flag is 0;
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

Check attacking the basic Cyclops: say "The cyclops ignores all injuries to his body with a shrug."; now the cyclops is hungry instead.
Check attacking the basic Cyclops with something: try attacking the Cyclops instead. Check attacking the Cyclops when the Cyclops is hungry or the Cyclops is thirsty: say "Your actions don't appear to be doing much harm to the cyclops, but
they do not exactly lower your insurance premiums, either." instead.
Check attacking the Cyclops with something when the Cyclops is hungry or the Cyclops is thirsty: try attacking the Cyclops instead.
Up from Cyclops Room is an open unopenable door called the staircase.
Understand "stairs" as the staircase.
The rval of Treasure Room is 25.
Treasure Room is a dungeon. The description of Treasure Room is "This is a large room, whose north wall is solid granite.  A number of discarded bags, which crumble at your touch, are scattered about on the floor.  There is an exit down and what appears to be a newly created passage to the east."
Up from the staircase is Treasure Room.
The thief is a man. Understand "shady/suspicious" and "ROBBER/CROOK/CRIMINAL/BANDIT" and  "MODO/MAHU" and "GENT/GENTLEMAN/MAN/INDIVIDUAL" as the thief.  The later appearance of the thief is "There is a suspicious-looking individual, holding a bag, leaning against one wall.  He is armed with a vicious-looking stiletto."
[* KING LEAR, III, iv: The prince of darkness is a gentleman; Modo he's called and Mahu.]
After giving something to the thief:
  say "The thief is taken aback by your unexpected generosity but accepts [the noun] and stops to admire its beauty."; now the engrossed of the thief is true.
The thief has a truth state called engrossed. 
Check attacking the unconsious thief with something:
say "The unconsious thief cannot defend himself; he dies.";
say  "Almost as soon as the hief breathes his last breath, a cloud
of sinister black fog envelops him, and when the fog lifts, the
carcass has disappeared.";
  remove the thief from play;
if the number of valuble things had by the thief is greater than 0 begin;
  say "His booty remains:  [a list of valuble things carried by the thief]";
  now every thing carried by the thief is in the location instead;
end if;
do nothing instead.
Escaping is an action applying to nothing. 
The thief carries a chalice.  The case-points of the chalice is 10.  After taking the chalice for the first time:  award 10 points; continue the action.  The size of the chalice is 10.
The thief carries a stiletto.
Carry out someone escaping: 
    let space be the holder of the person asked; 
    let place be a random dungeon which is adjacent to the space; 
    move the person asked to place.
Carry out attacking the thief with something:
  if a random chance of 1 in 2 succeeds begin;
  if the second noun is the sword begin;
    say "[one of]Your sword crashes down, knocking the thief into dreamland.[or]The thief is battered into unconsciousness.[or] A furious exchange, and the thief is knocked out![at random]";
  else;
    say "[one of]The haft of your knife knocks out the thief.[or]The thief drops to the floor, unconscious.[or]The thief is knocked out![at random]";
  end if;
  now the thief is unconsious;
  else if a random chance of 1 in 2 succeeds;
   if the second noun is the sword begin;
     say "[one of]The thief receives a deep gash in his side.[or]A savage blow on the thigh!  The thiefl is stunned but can still fight![or]Slash!  Your blow lands!  That one hit an artery, it could be serious![at random]";
  else;
  say "[one of]The thief receives a deep gash in his side.[or]A savage cut on the leg stuns the thief, but he can still fight![or]Slash!  Your stroke connects!  The thief could be in serious trouble![at random]";
  increase the wounds of the thief by 2;
  end if;
  else;
    say "A good stroke, but it's too slow, the thief dodges.";
  end if;
  now the engrossed of the thief is false.
The thief can be consious or unconsious.
The thief has a number called wounds.
Every turn when the thief is on-stage:
  if the wounds of the thief is greater than 4 begin;
    say "The thief takes a final blow and slumps to the floor, dead.";
    say "Almost as soon as the thief breathes his last breath, a cloud
of sinister black fog envelops him, and when the fog lifts, the
carcass has disappeared.";
  remove the thief from play;
  if the number of valuble things had by the thief is greater than 0 begin;
  say "His booty remains:  [a list of valuble things carried by the thief]";
  now every thing carried by the thief is in the location;
  end if;
end if.
Every turn when the player can see the consious thief and the player is in Treasure Room:
  if the engrossed of the thief is false, strike a blow from the thief.
Every turn when the thief is unconsious and the thief is on-stage and the player cannot see the thief:
  now the thief is consious.

To strike a blow from the thief:
  let x be a random number between 1 and 6;
    if x is 1 or x is 2 begin;
      say "[one of]The thief stabs nonchalantly with his stiletto and misses.[or]You dodge as the thief comes in low.[or]You parry a lightning thrust, and the thief salutes you with
a grim nod.[or]The thief tries to sneak past your guard, but you twist away.[at random]";
   else if x is 3;
      say "[one of]The stiletto severs your jugular.  It looks like the end.[or]The thief comes in from the side, feints, and inserts the blade
into your ribs.[or]The thief bows formally, raises his stiletto, and with a wry grin,
ends the battle and your life.[at random]";
      end the game in death;
   else if x is 4 or x is 5;
      say "[one of]A quick thrust pinks your left arm, and blood starts to
trickle down.[or]The thief draws blood, raking his stiletto across your arm.[or]The stiletto flashes faster than you can follow, and blood wells
from your leg.[at random]";
      increase the wounds of the player by 1;
   else if x is 6;
     say "[one of]The butt of his stiletto cracks you on the skull, and you stagger
back.[or]The thief attacks, and you fall back desperately.[or]The thief rams the haft of his blade into your stomach, leaving
you out of breath.[at random]";
     increase the wounds of the player by 2;
   end if.
East of Treasure Room is a dungeon called Small Square Room.  The description of Small Square Room is "This is a small square room, in the middle of which is a recently created hole[if a block is in Puzzle10] which is blocked by smooth sandstone.[otherwise] through which you can barely discern the floor some ten feet below.[end if]  It doesn't seem likely you could climb back up.  There
are exits to the west and south."
Understand "paper" and "piece of paper" as the note of warning.
A note of warning is in Small Square Room.  The later appearance of the note of warning is "There is a piece of paper on the ground here."
The note of warning is inflammable.
The description of the note of warning is "[note text]".
To say note text:
say "The paper is rather worn; although the writing is barely legible (the
author probably had only a used pencil), it is a very elegant
copperplate.[paragraph break]";
say "To Whom It May Concern:[paragraph break]";
say "[5 spaces]I regret to report that the rumours regarding treasure contained
in the chamber to which this passage leads have no basis in fact.
Should you nevertheless be sufficiently foolhardy to enter, it will
be quite impossible for you to exit.[paragraph break]";
say "[32 spaces]Sincerely yours,[line break]";
say "[32 spaces]The Thief".
South of Small Square Room is a dungeon called Side Room.  The description of Side Room is "You are in a room with an exit to the north and a steel door to the east[if the steel door is open]which is open[end if]."
The steel door is a door.  East of Side Room is the steel door.  The steel door is scenery.  The steel door is closed and not openable. 
Before pushing a direction:
if the room noun from the location is not a puzzle, say "The wall does not budge." instead;
if the room noun from the location does not contain a block, say "There is only a passage in that direction." instead;
if the room the noun from the location contains a marble block, say "The wall does not budge." instead;
if the room the noun from the room the noun from the location contains a block, say "The wall does not budge." instead;
if the room the noun from the room the noun from the location is not a puzzle, say "The wall does not budge." instead;
say "The wall slides forward and you follow it to this position:";
move a random block in the room noun from the location to the room noun from the room noun from the location;
try going the noun instead.
Every turn when the player is in a puzzle:
foo.
To foo:
(- lookmode=2; -).
A puzzle is a kind of room.  A puzzle is always dark.  The printed name of a puzzle is always "Room in Puzzle".
A block is a kind of thing.
A marble block is a kind of block.  A sandstone block is a kind of block.
A ladder is a kind of sandstone block.
Puzzle10 is a puzzle.
The description of a puzzle is usually "[puzzle text]".
The description of Puzzle10 is "[if a block is in Puzzle11 and a block is in Puzzle18]You are in a small square room bounded to the north and west with
marble walls and to the east and south with sandstone walls.[otherwise][puzzle text][end if]".
To say puzzle text:
say fixed letter spacing;
say "[6 spaces]|[txt of the room northwest from the location] [txt of the room north from the location] [txt of the room northeast from the location]|[line break]";
say "West[2 spaces]|[txt of the room west from the location] .. [txt of the room east from the location]|[2 spaces]East[line break]";
say "[6 spaces]|[txt of the room southwest from the location] [txt of the room south from the location] [txt of the room southeast from the location]|[line break]";
say variable letter spacing;
if the location is Puzzle10 begin;
  say "In the ceiling above you is a large circular opening.";
else if the location is Puzzle37;
  say "The center of the floor here is noticeably depressed.";
else if the location is Puzzle52;
  say "The west wall here has a large steel door [if the steel door is open]which is open [end if]at its center.  One one side of the door is a small slit.";
end if;
if a ladder is in the room east from the location, say "There is a ladder here, firmly attached to the east wall.";
if a ladder is in the room west from the location, say "There is a ladder here, firmly attached to the west wall.".
To say txt of (x - a room):
if a marble block is in x or x is not a puzzle begin;
  say "MM";
else if a sandstone block is in x;
 say "SS";
else;
  say "[2 spaces]";
end if.
Check going from a puzzle when a block is in the room noun from the location:
  print the you can't go message instead.
Check going up from Puzzle10:
 if the Ladder0 is in Puzzle11 begin;
   say "With the help of the ladder, you exit the puzzle.";
   continue the action;
 otherwise;
   say "The exit is too far above your head." instead;
 end if.
Check going down from Small Square Room when a sandstone block is in Puzzle10: say "Your way is blocked by sandstone." instead.

[1	 1	 1	 1 	 1	 1	1	1
1	 0	-1	 0	 0	-1	0	1
1	-1	 0	 1	 0	-2	0	1
1	 0	 0	 0	 0	 1	0	1
1	-3	 0	 0	-1	-1	0	1
1	 0	 0	-1	 0	 0	0	1
1	 1	 1	 0	 0	 0	1	1
1	 1	 1	 1	 1	 1	1	1].
Down from Small Square Room is Puzzle10.
[solution to royal puzzle:

Down, push east wall, South, Southwest, Push south wall, East 
twice, Push south wall, North twice, East, Push south wall, 
Take card, Push south wall, East, Northeast, Push west wall 
four times, Northeast twice, North, Push east wall, Southwest, 
South, Southeast, Northeast, North, Push west wall, Northwest, 
Push south wall twice, West, Northwest twice, Push south wall, 
Southeast trice, Northeast, Push west wall twice, Southwest, 
Push north wall trice, Northwest, Up.
]

Puzzle1 is a puzzle.  In Puzzle1 is a marble block.  East of Puzzle1 is a puzzle called Puzzle2.  In Puzzle2 is a marble block. East of Puzzle2 is a puzzle called Puzzle3.  
In Puzzle3 is a marble block.  East of Puzzle3 is a puzzle called Puzzle4.  In Puzzle4 is a marble block.  East of Puzzle4 is a puzzle called Puzzle5.  In Puzzle5 is a marble block.  East of Puzzle5 is a puzzle called Puzzle6.  In Puzzle6 is a marble block.  
East of Puzzle6 is a puzzle called Puzzle7.  In Puzzle7 is a marble block.  East of Puzzle7 is a puzzle called Puzzle8.  In Puzzle8 is a marble block.
   
South of Puzzle1 is a puzzle called Puzzle9.  In Puzzle9 is a marble block.  Northeast of Puzzle9 is Puzzle2.  East of Puzzle9 is Puzzle10.  North of Puzzle10 is Puzzle2.  Northwest of Puzzle10 is Puzzle1.  Northeast of Puzzle10 is Puzzle3.  East of Puzzle10 is a puzzle called Puzzle11.  In Puzzle11 is a sandstone block.  North of Puzzle11 is Puzzle3.  Northwest of Puzzle11 is Puzzle2.  Northeast of Puzzle11 is Puzzle4. East of Puzzle11 is a puzzle called Puzzle12.  North of Puzzle12 is Puzzle4.  Northwest of Puzzle12 is Puzzle3.  Northeast of Puzzle12 is Puzzle5. East of Puzzle12 is a puzzle called Puzzle13.  North of Puzzle13 is Puzzle5.  Northwest of Puzzle13 is Puzzle4.  Northeast of Puzzle13 is Puzzle6. East of Puzzle13 is a puzzle called Puzzle14. In Puzzle14 is a sandstone block. North of Puzzle14 is Puzzle6.  Northwest of Puzzle14 is Puzzle5.  Northeast of Puzzle14 is Puzzle7. East of Puzzle14 is a puzzle called Puzzle15.  North of Puzzle15 is Puzzle7.  Northwest of Puzzle15 is Puzzle6.  Northeast of Puzzle15 is Puzzle8.  East of Puzzle15 is a puzzle called Puzzle16.  North of Puzzle16 is Puzzle8.  Northwest of Puzzle16 is Puzzle7.

South of Puzzle9 is a puzzle called Puzzle17. In Puzzle17 is a marble block. Northeast of Puzzle17 is Puzzle10. East of Puzzle17 is a puzzle called Puzzle18. In Puzzle18 is a sandstone block.  North of Puzzle18 is Puzzle10.  Northwest of Puzzle18 is Puzzle9.  Northeast of Puzzle18 is Puzzle11. East of Puzzle18 is a puzzle called Puzzle19.  North of Puzzle19 is Puzzle11.  Northwest of Puzzle19 is Puzzle10.  Northeast of Puzzle19 is Puzzle12. East of Puzzle19 is a puzzle called Puzzle20.  In Puzzle20 is a marble block.  North of Puzzle20 is Puzzle12. Northwest of Puzzle20 is Puzzle11.  Northeast of Puzzle20 is Puzzle13.  East of Puzzle20 is a puzzle called Puzzle21.
North of Puzzle21 is Puzzle13.  Northwest of Puzzle21 is Puzzle12.  Northeast of Puzzle21 is Puzzle14. East of Puzzle21 is a puzzle called Puzzle22.  In Puzzle22 is a ladder called the Ladder0.  North of Puzzle22 is Puzzle14.  Northwest of Puzzle22 is Puzzle13.  Northeast of Puzzle22 is Puzzle15.  East of Puzzle22 is a puzzle called Puzzle23. North of Puzzle23 is Puzzle15.  Northwest of Puzzle23 is Puzzle14.  Northeast of Puzzle23 is Puzzle16.  East of Puzzle23 is a puzzle called Puzzle24. North of Puzzle24 is Puzzle16.  In Puzzle24 is a marble block. Northwest of Puzzle24 is Puzzle15.

South of Puzzle17 is a puzzle called Puzzle25.  In Puzzle25 is a marble block. Northeast of Puzzle25 is Puzzle18.  East of Puzzle25 is a puzzle called Puzzle26. 
North of Puzzle26 is Puzzle18.  Northwest of Puzzle26 is Puzzle17.  Northeast of Puzzle26 is Puzzle19.  East of Puzzle26 is a puzzle called Puzzle27.  North of Puzzle27 is Puzzle19.  Northwest of Puzzle27 is Puzzle18.  Northeast of Puzzle27 is Puzzle20.  East of Puzzle27 is a puzzle called Puzzle28.  North of Puzzle28 is Puzzle20.  Northwest of Puzzle28 is Puzzle19.  Northeast of Puzzle28 is Puzzle21.  East of Puzzle28 is a puzzle called Puzzle29.  North of Puzzle29 is Puzzle21.  Northwest of Puzzle29 is Puzzle20.  Northeast of Puzzle29 is Puzzle22.  East of Puzzle29 is a puzzle called Puzzle30.  North of Puzzle30 is Puzzle22.  Northwest of Puzzle30 is Puzzle21.  Northeast of Puzzle30 is Puzzle23.  In Puzzle30 is a marble block.  East of Puzzle30 is a puzzle called Puzzle31.  North of Puzzle31 is Puzzle23.  Northwest of Puzzle31 is Puzzle22.  Northeast of Puzzle31 is Puzzle24.  East of Puzzle31 is a puzzle called Puzzle32.  North of Puzzle32 is Puzzle24.  Northwest of Puzzle32 is Puzzle23. 

South of Puzzle32 is a puzzle called Puzzle33.
North of Puzzle33 is Puzzle25.
Northeast of Puzzle33 is Puzzle26.
East of Puzzle33 is a puzzle called Puzzle34.
North of Puzzle34 is Puzzle26.
Northwest of Puzzle34 is Puzzle25.
Northeast of Puzzle34 is Puzzle27.
East of Puzzle34 is a puzzle called Puzzle35.
North of Puzzle35 is Puzzle27.
Northwest of Puzzle35 is Puzzle26.
Northeast of Puzzle35 is Puzzle28.
East of Puzzle35 is a puzzle called Puzzle36.
North of Puzzle36 is Puzzle28.
Northwest of Puzzle36 is Puzzle27.
Northeast of Puzzle36 is Puzzle29.
East of Puzzle36 is a puzzle called Puzzle37.
North of Puzzle37 is Puzzle29.
Northwest of Puzzle37 is Puzzle28.
Northeast of Puzzle37 is Puzzle30.
East of Puzzle37 is a puzzle called Puzzle38.
North of Puzzle38 is Puzzle30.
Northwest of Puzzle38 is Puzzle29.
Northeast of Puzzle38 is Puzzle31.
East of Puzzle38 is a puzzle called Puzzle39.
North of Puzzle39 is Puzzle31.
Northwest of Puzzle39 is Puzzle30.
Northeast of Puzzle39 is Puzzle32.
East of Puzzle39 is a puzzle called Puzzle40.
North of Puzzle40 is Puzzle32.
Northwest of Puzzle40 is Puzzle31.

In Puzzle33 is a marble block.  In Puzzle34 is a ladder.  In Puzzle37 is a sandstone block.  In Puzzle38 is a sandstone block.  In Puzzle40 is a marble block.

South of Puzzle40 is a puzzle called Puzzle41.
North of Puzzle41 is Puzzle33.
Northeast of Puzzle41 is Puzzle34.
East of Puzzle41 is a puzzle called Puzzle42.
North of Puzzle42 is Puzzle34.
Northwest of Puzzle42 is Puzzle33.
Northeast of Puzzle42 is Puzzle35.
East of Puzzle42 is a puzzle called Puzzle43.
North of Puzzle43 is Puzzle35.
Northwest of Puzzle43 is Puzzle34.
Northeast of Puzzle43 is Puzzle36.
East of Puzzle43 is a puzzle called Puzzle44.
North of Puzzle44 is Puzzle36.
Northwest of Puzzle44 is Puzzle35.
Northeast of Puzzle44 is Puzzle37.
East of Puzzle44 is a puzzle called Puzzle45.
North of Puzzle45 is Puzzle37.
Northwest of Puzzle45 is Puzzle36.
Northeast of Puzzle45 is Puzzle38.
East of Puzzle45 is a puzzle called Puzzle46.
North of Puzzle46 is Puzzle38.
Northwest of Puzzle46 is Puzzle37.
Northeast of Puzzle46 is Puzzle39.
East of Puzzle46 is a puzzle called Puzzle47.
North of Puzzle47 is Puzzle39.
Northwest of Puzzle47 is Puzzle38.
Northeast of Puzzle47 is Puzzle40.
East of Puzzle47 is a puzzle called Puzzle48.
North of Puzzle48 is Puzzle40.
Northwest of Puzzle48 is Puzzle39.

In Puzzle41 is a marble block.  In Puzzle44 is a sandstone block.  In Puzzle48 is a marble block.


South of Puzzle48 is a puzzle called Puzzle49.
North of Puzzle49 is Puzzle41.
Northeast of Puzzle49 is Puzzle42.
East of Puzzle49 is a puzzle called Puzzle50.
North of Puzzle50 is Puzzle42.
Northwest of Puzzle50 is Puzzle41.
Northeast of Puzzle50 is Puzzle43.
East of Puzzle50 is a puzzle called Puzzle51.
North of Puzzle51 is Puzzle43.
Northwest of Puzzle51 is Puzzle42.
Northeast of Puzzle51 is Puzzle44.
East of the steel door is a puzzle called Puzzle52.
North of Puzzle52 is Puzzle44.
Northwest of Puzzle52 is Puzzle43.
Northeast of Puzzle52 is Puzzle45.
East of Puzzle52 is a puzzle called Puzzle53.
North of Puzzle53 is Puzzle45.
Northwest of Puzzle53 is Puzzle44.
Northeast of Puzzle53 is Puzzle46.
East of Puzzle53 is a puzzle called Puzzle54.
North of Puzzle54 is Puzzle46.
Northwest of Puzzle54 is Puzzle45.
Northeast of Puzzle54 is Puzzle47.
East of Puzzle54 is a puzzle called Puzzle55.
North of Puzzle55 is Puzzle47.
Northwest of Puzzle55 is Puzzle46.
Northeast of Puzzle55 is Puzzle48.
East of Puzzle55 is a puzzle called Puzzle56.
North of Puzzle56 is Puzzle48.
Northwest of Puzzle56 is Puzzle47.

A small slit is in Puzzle52. The small slit is scenery. The small slit is a container.  The capacity of the small slit is 4.  The carrying capacity of the small slit is 1.
Carry out inserting something into the small slit:
  if the noun is the gold card begin;
    say "The card slides easily into the slot and vanishes and the metal door slides open revealing a passageway to the west.  A moment later, a previously unseen sign flashes:[line break] [4 spaces]'Unauthorized/Illegal Use of Pass Card -- Card Confiscated'";
    remove the gold card from play;
    now the steel door is open;
    now the steel door is openable;
  else;
    say "The item vanishes into the slot.  A moment later, a previously unseen sign flashes 'Garbage In, Garbage Out' and spews [the noun] (now atomized) through the slot.";
    remove the noun from play;
  end if.
In Puzzle49 is a marble block.  In Puzzle50 is a marble block.  In Puzzle51 is a marble block.  In Puzzle55 is a marble block.  In Puzzle56 is a marble block.

South of Puzzle56 is a puzzle called Puzzle57.
North of Puzzle57 is Puzzle49.
Northeast of Puzzle57 is Puzzle50.
East of Puzzle57 is a puzzle called Puzzle58.
North of Puzzle58 is Puzzle50.
Northwest of Puzzle58 is Puzzle49.
Northeast of Puzzle58 is Puzzle51.
East of Puzzle58 is a puzzle called Puzzle59.
North of Puzzle59 is Puzzle51.
Northwest of Puzzle59 is Puzzle50.
Northeast of Puzzle59 is Puzzle52.
East of Puzzle59 is a puzzle called Puzzle60.
North of Puzzle60 is Puzzle52.
Northwest of Puzzle60 is Puzzle51.
Northeast of Puzzle60 is Puzzle53.
East of Puzzle60 is a puzzle called Puzzle61.
North of Puzzle61 is Puzzle53.
Northwest of Puzzle61 is Puzzle52.
Northeast of Puzzle61 is Puzzle54.
East of Puzzle61 is a puzzle called Puzzle62.
North of Puzzle62 is Puzzle54.
Northwest of Puzzle62 is Puzzle53.
Northeast of Puzzle62 is Puzzle55.
East of Puzzle62 is a puzzle called Puzzle63.
North of Puzzle63 is Puzzle55.
Northwest of Puzzle63 is Puzzle54.
Northeast of Puzzle63 is Puzzle56.
East of Puzzle63 is a puzzle called Puzzle64.
North of Puzzle64 is Puzzle56.
Northwest of Puzzle64 is Puzzle55.

In Puzzle57 is a marble block. In Puzzle58 is a marble block. In Puzzle59 is a marble block. In Puzzle60 is a marble block. In Puzzle61 is a marble block.  In Puzzle62 is a marble block.  In Puzzle63 is a marble block.  In Puzzle64 is a marble block.
In Puzzle37 is a gold card.  The initial appearance of the gold card is "Nestled inside the niche is an engraved gold card." The later appearance of the gold card is "There is a solid gold engraved card here."
The description of the gold card is "[card text]".
To say card text:
  say fixed letter spacing;
say " ____________________________________________________________[line break]";
say "|                                                            |[line break]";
say "|              FROBOZZ MAGIC SECURITY SYSTEMS                |[line break]";
say "|    Door Pass                  Royal Zork Puzzle Museum     |[line break]";
say "|                                                            |[line break]";
say "|                     #632-988-496-XTHF                      |[line break]";
say "|                                                            |[line break]";
say "|                                                            |[line break]";
say "|     USE OF THIS PASS BY UNAUTHORIZED PERSONS OR AFTER      |[line break]";
say "|   EXPIRATION DATE WILL RESULT IN IMMEDIATE CONFISCATION    |[line break]";
say "|                                                            |[line break]";
say "|                                                            |[line break]";
say "|                              (approved)                    |[line break]";
say "|                              Will Weng                     |[line break]";
say "|                               789 G.U.E.                   |[line break]";
say "|                                                            |[line break]";
say "|                                        Expires 792 G.U.E.  |[line break]";
say "|____________________________________________________________|[line break]";
  say variable letter spacing.
The size of the gold card is 4.
The case-points of the gold card is 10.
After taking the gold card for the first time:
award 15 points;
continue the action.
The Cyclops can be basic, hungry, thirsty, asleep, or gone. 
To say cyclops text:
if the cyclops is basic, say "A cyclops, who looks prepared to eat horses (much less mere adventurers), blocks the staircase.  From his state of health
and the bloodstains on the walls, you gather that he is not very friendly, though he likes people";
if the cyclops is hungry, say "The cyclops is standing in the corner, eyeing you closely.  I don't think he likes you very much.  He looks extremely hungry, even for a cyclops";
If the cyclops is thirsty, say "The cyclops, having eaten the hot peppers, appears to be gasping. His inflamed tongue protrudes from his man-sized mouth";
If the cyclops is asleep, say "The cyclops is sleeping blissfully at the foot of the stairs";
If the cyclops is gone, say "The north wall, previously solid, now has a cyclops-shaped hole in it".
The description of the cyclops is "[cyclops text]."
Carry out odysseusing when the player can see the Cyclops and the Cyclops is not asleep and the Cyclops is not gone: award 10 points; now exit found is true; now the cyclops is gone; now the wooden door is open; say "The cyclops, hearing the name of his father's deadly nemesis, flees the room by knocking down the wall on the north side of the room."; stop the action.
Instead of doing something to the cyclops when the cyclops is gone: print the you can't see message instead.
Instead of doing something when the cyclops is the second noun and the cyclops is gone: say "I don't see any cylcops here." instead.
Check going north from Cyclops Room when the cyclops is in Cyclops Room and the cyclops is not gone: print the you can't go message instead.
Check taking the cyclops when the cyclops is not gone: say "The cyclops does not take to kindly to being grabbed." instead.
Check going through the staircase when the cyclops is in Cyclops Room and the cyclops is not asleep and the cyclops is not gone: say "The cyclops doesn't look like he'll let you pass." instead.
The staircase is scenery. Check climbing the staircase: try entering the noun instead.
Check giving something to the cyclops when the cyclops is not gone and the cyclops is not asleep: say "The cyclops may be hungry, but there is a limit." instead.
Check giving the bottle to the cyclops when the cyclops is not thirsty and the quantity of water is in the bottle or giving the water to the cyclops when the cyclops is not thirsty: say "The cyclops is apparently not thirsty and refuses your generosity." instead.
Check giving the bottle to the cyclops when the cyclops is thirsty and the cyclops is not gone and the quantity of water is in the bottle or giving the water to the cyclops when the cyclops is thirsty and the cyclops is not gone: say "The cyclops looks tired and quickly falls fast asleep (what did you put in that drink, anyway?)."; now the cyclops is asleep; remove the bottle from play instead.
Check giving the garlic to the cyclops when the cyclops is not gone: say "The cyclops is not so stupid as to eat that!" instead.
Check giving the lunch to the cyclops when the cyclops is not gone: say "The cyclops says, 'Mmm mmm!  I love hot peppers!  But oh, could I use a drink.  Perhaps I could drink the blood of that thing.' From the gleam in his eye, it could be surmised that you are 'that thing'."; now the cyclops is thirsty; remove the bottle from play instead.
The description of Strange Passage is "This is a long passage.  To the south is one entrance.  On the east there is an old wooden door with a large hole in it (about
cyclops sized)."

Part 5 - The Round Room, Temple, and Alice Area

West of a dungeon called East-West Passage is north of Troll Room. "This is a narrow east-west passageway.  There is a narrow stairway leading down at the north end of the room."
The rval of  East-West Passage is 5.
North of East-West Passage is a dungeon called Deep Ravine. Down from  East-West Passage is Deep Ravine. 
The description of Deep Ravine is "This is a deep ravine at a crossing with an east-west crawlway.  Some stone steps are at the south of the ravine, and a steep staircase descends."

Down from Deep Ravine is south from a dungeon called Reservoir South. The description of Reservoir South is "[if the pdl1 is on-stage]This is a long room on the south shore of a large reservoir.[otherwise]You are in a long room, to the north of which was formerly a reservoir.[end if]  There is a western exit, a passageway south, and a steep pathway climbing up along the edge of a cliff."
A drainable watersource called the pdl1 is in Reservoir South.
Check going down from Deep Ravine when the player is carrying the coffin:
say "The stairs are to steep for you with your burden." instead.
East of East-West Passage is a dungeon called the Round Room.  The description of the Round Room is "This is a circular room with passages off in eight directions."
Southwest of Round Room is Maze 1. Northeast of Maze 1 is nowhere.
After going:
if the location is Round Room and rotation room is 1, say "Your compass needle spins wildly, and you cannot get your bearings."; continue the action.
Check going nowhere from Round Room when rotation room is 1: try going east instead.
Check going from the Round Room when rotation room is 1:
    say "Unfortunately, it is impossible to tell directions in here."; 
    move the player to a random adjacent room instead.
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
A pair of candles is here.  "On the two ends of the altar are burning candles."
The candles are flaming.
The later appearance of the pair of candles is "There are two candles here."
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
A pearl necklace is here. Understand "pearls" as the pearl necklace.
The later appearance of the pearl necklace is "There is a pearl necklace here with hundreds of large pearls."
The pearl necklace is wearable. The description of the pearl necklace is "This is a pearl necklace with hundreds of large pearls."
After taking the necklace for the first time:
award 9 points; continue the action.
The case-points of the necklace is 5.
The size of the necklace is 5.
West of a dungeon called Circular Room is Pearl Room.
Check opening the unopenable great door: say "The door cannot be opened." instead.
The description of Circular Room is "This is a damp circular room, whose walls are made of brick and mortar.  The roof of this room is not visible, but there appear to be some etchings on the walls.  There is a passageway to the west."
An enterable container called the wooden bucket is here. 
The initial appearance of the wooden bucket is "There is a wooden bucket here, three feet in diameter and three feet high."
The later appearance of the wooden bucket is "There is a wooden bucket here, three feet in diameter and three feet high."
The wooden bucket is fixed in place.
Check taking the quantity of water while in the bucket:
  if the bottle is closed, say "The bottle is closed." instead;
  now the quantity of water is in the bottle;
  say "The bottle is now full of water.";
  say "The bucket descends and comes to a stop.";
  move the bucket to Circular Room;
  try looking instead.
Check entering the wooden bucket when the quantity of water is in the bucket and the player is in Circular Room:
   say "The bucket rises and comes to a stop.";
move the bucket to Top of Well;
move the player to the bucket, without printing a room description instead.
The rval of Top of Well is 10.
Check entering the wooden bucket when the quantity of water is in the bottle and the player is in Top of Well:
   say "The bucket descends and comes to a stop.";
   move the bucket to Circular Room;
   move the player to the bucket, without printing a room description instead.

Top of Well is a dungeon. Top of Well is up from Circular Room.
Check going up from Circular Room:
  say "The walls cannot be climbed." instead.
The description of Top of Well is "You are at the top of the well.  Well done.  There are etchings on the side of the well.  There is a small crack across the floor at the entrance to a room on the east, but it can be crossed easily."
Check taking the bucket: say "Playing with the bucket in this manner doesn't seem to be accomplishing anything." instead.
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
Check going down from Top of Well: say "It's a long way down." instead.
Check jumping while the location is Top of Well: fatally leap instead.
Check kicking the bucket: say "If you insist."; end the game in death instead.
[Ha ha get it]
East of Top of Well is a dungeon called Tea Room.
The description of Tea Room is "This is a small square room, in the center of which is a large oblong table, no doubt set for afternoon tea.  It is clear from the objects on the table that the users were indeed mad.  In the eastern corner of this room is a small hole no more than four inches high."
A large oblong table is here. The table is scenery.
A piece of eat-me cake is in Tea Room.
The initial appearance of the piece of eat-me cake is "There is a piece of cake here with the words 'Eat-Me' on it."
The later appearance of the piece of eat-me cake is "There is a piece of cake here with the words 'Eat-Me' on it."
Understand "eatme cake" and "eat me cake" as the eat-me cake.
The size of the eat-me cake is 10.
The size of the blue cake is 4.
The size of the orange cake is 4.
The size of the red cake is 4.
A red cake is in Tea Room.
The printed name of the red cake is "piece of cake with red icing". Understand "piece of cake" and "piece of cake with red icing" and "piece of red cake" as the red cake.
An orange cake is in Tea Room.
The printed name of the orange cake is "piece of cake with orange icing". Understand "piece of cake" and "piece of cake with orange icing" and "piece of orange cake" as the orange cake.
A blue cake is in Tea Room.
The printed name of the blue cake is "piece of cake with blue (ecch) icing". Understand "piece of cake" and "piece of cake with blue icing" and "piece of blue cake" as the blue cake.
The red cake, the blue cake, and the eat-me cake are edible.
The description of the red cake is "The only writing visible is a capital E.  The rest is too small to be clearly visible."
The description of the orange cake is "The only writing visible is a capital E.  The rest is too small to be clearly visible."
The description of the blue cake is "The only writing visible is a capital E.  The rest is too small to be clearly visible."
After reading a command: 
  if the player's command includes "cakes", replace the matched text with "both cake". 
After eating the orange cake when the player is in Tea Room or the player is in Pool Room or the player is in Posts Room: say "You have been blasted to smithereens (whatever they are)."; end the game in death.
Check eating the blue cake when the player is in Tea Room or the player is in Pool Room:
  say "The room around you seems to be getting smaller.[line break]The room seems to have become too small to hold you.  It seems that the walls are not as compressible as your body, which is more or less demolished.";
end the game in death instead.
A dungeon called Low Room is northwest of Tea Room. "This is a room with a low ceiling which is circular in shape. There are exits to the east and southeast."
A person called a robot is here.
A green piece of paper is here.
Understand "robby" and "r2-d2" and "c-3po" and "r2d2" and "c3po" as the robot.
The description of the green paper is "[instruction text]".
The green paper is inflammable.
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
After eating the red cake:
if the player is in Tea Room or the player is in Pool Room or the player is in Posts Room begin;
  say "That was delicious, but your dying memory is of feeling horribly dehydrated and thirsty.";
  end the game in death;
else;
  continue the action;
end if;
A persuasion rule for asking the robot to try doing something: 
    persuasion succeeds. 
Instead of asking the robot to try eating or drinking something: 
    say "'I am sorry but that action is difficult for a being with no mouth.'".
The block giving rule is not listed in any rulebook.
After giving something to the robot: say "The robot gladly takes [the noun] and nods his head-like appendage in thanks."
After reading a command:
  if the player's command includes "tell robot", replace the matched text with "robot,";
 if the player's command includes "tell robby", replace the matched text with "robot,";
 if the player's command includes "tell r2-d2", replace the matched text with "robot,";
 if the player's command includes "tell r2d2", replace the matched text with "robot,";
 if the player's command includes "tell c-3po", replace the matched text with "robot,";
 if the player's command includes "tell c3po", replace the matched text with "robot,".
Check giving the quantity of water to the robot:
  say "The water slips through his fingers.";
  remove the water from play instead.
Check throwing something at the robot:
  say "The robot is injured (being of shoddy construction) and falls to the floor in a pile of garbage, which disintegrates before your eyes.";
  remove the robot from play instead.
Check attacking the robot:
  say "The robot is injured (being of shoddy construction) and falls to the floor in a pile of garbage, which disintegrates before your eyes.";
  remove the robot from play instead.
Check attacking the robot with something:
try attacking the noun instead.
Check dropping the orange cake:
if  the player's command includes "throw" and the player is in Tea Room or the player is in Pool Room or the player is in Posts Room begin;
  say "You have been blasted to smithereens (whatever they are).";
  end the game in death instead;
else;
  continue the action;
end if.
Check throwing the orange cake at something:
if the player is in Tea Room or the player is in Pool Room or the player is in Posts Room begin;
  say "You have been blasted to smithereens (whatever they are).";
  end the game in death instead;
else;
  continue the action;
end if.
Check answering the robot that something: say "'I am only a stupid robot and cannot perform that command.'" instead.
Instead of asking the robot to try doing something other than going, taking, dropping, inserting it into, pushing, turning, giving, or lifting:
  say "'I am only a stupid robot and cannot perform that command.'".
Instead of asking the robot to try doing something when dead flag is false:
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
 if the noun is the triangular button and box flag is false begin;
  say "A dull thump is heard in the distance.";
  award 10 points;
  now rotation room is rotation room times -1;
  now box flag is true;
  move the dented steel box to Round Room;
  rule succeeds;
else if the noun is the triangular button;
  say "Click.";
  now rotation room is rotation room times -1;
  rule succeeds;  
else if the noun is the square button and rotation speed is -1;
  say "Nothing seems to happen.";
  rule succeeds;
else if the noun is the square button;
  say "The whirring increases in intensity slightly.";
  now rotation speed is -1;
  rule succeeds;
else if the noun is the round button and rotation speed is 1;
   say "Nothing seems to happen.";
   rule succeeds;
else if the noun is the round button;
  say "The whirring decreases in intensity slightly.";
  now rotation speed is 1;
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
Check going from Low Room when rotation room is -1: 
    say "Unfortunately, it is impossible to tell directions in here.";
    move the player to a random adjacent room instead.
Check going nowhere from Low Room when rotation room is -1: try going east instead.
After the robot going:
  if the robot is in Low Room and rotation speed is -1 and rotation room is -1 begin; say "According to Prof. TAA of MIT Tech, the rapidly changing magnetic fields in the room are so intense as to fry all the delicate innards of the robot.  I really don't know, but in any event, smoke is coming out of its ears, and it has stopped moving."; remove the robot from play; else; continue the action; end if.
Box flag is a truth state variable. Box flag is usually false.
The capacity of the dented steel box is 20.
The size of the dented steel box is 40.
The dented steel box is a closed openable container. In the dented steel is a fancy violin.
Understand "stradivarius" and "strad" as the fancy violin.
The later appearance of the fancy violin is "There is a Stradivarius here."
After taking the violin for the first time: award 11 points; continue the action.
The case-points of the violin is 10.
The size of the violin is 10.
After eating the eat-me cake while the location is Tea Room:
  say "Suddenly, the room appears to have become very large.";
  repeat with item running through things in Tea Room begin;
  if the item is not the robot and the item is not the table and the item is not a backdrop, move the item to Posts Room;
end repeat.
After eating the blue cake while the location is Posts Room:
  say "Suddenly, the room appears to have become very small.";
  repeat with item running through things in Posts Room begin;
  if the item is not a backdrop, move the item to Tea Room;
end repeat.
Pool Room is a dark room. Posts Room is a dark room.
The description of Posts Room is "This is an enormous room, in the center of which are four wooden posts delineating a rectangular area, above which is what appears to be a wooden roof.  In fact, all objects in this room appear to be abnormally large.  To the east is a passageway.  There is a large chasm on the west and the northwest."
Check going east from Tea Room: say "Only a mouse could get in there." instead.
Check going northwest while the location is Posts Room: say "There is a chasm too wide to jump across." instead.
Check going west while the location is Posts Room: say "There is a chasm too wide to jump across." instead.
Check jumping while the location is Posts Room: fatally leap instead.
East of Posts Room is Pool Room. The description of Pool Room is "This is a large room, one half of which is depressed.  [if the leak is in Pool Room]There is a large leak in the ceiling through which brown colored goop is falling.  The leak has submerged the depressed area in a pool of sewage.  [end if]The only exit from this room is to the west."
The leak is a thing in Pool Room. The leak is scenery.
The tin of rare spices is a thing. After taking the tin of spices for the first time: award 5 points; continue the action.
The case-points of the tin of rare spices is 5.
The size of the tin of spices is 8.
Check throwing the red cake at the leak:
  say "The pool of water evaporates, revealing a tin of rare spices.";
  remove the leak from play;
  move the tin of rare spices to Pool Room instead.
Check dropping the red cake when the player's command includes "throw":
  try throwing the red cake at the leak instead.
Check inserting the red cake into the leak:
  try throwing the red cake at the leak instead.
Understand "pool" and "pool of sewage" and "pool of water" as the leak.
A flask is in Pool Room. "A flask is filled with some clear liquid is here."
Destroying the flask with something is getting poisoned. Destroying the flask is getting poisoned. Opening the flask is getting poisoned. Throwing the flask at something is getting poisoned.
Instead of getting poisoned:
  say "Just before you pass out, you notice that the vapors from the
flask's contents are fatal.";
  end the game in death.
Check dropping the flask when the player's command includes "throw": 
  try destroying the flask with your bare hands instead.
The size of the flask is 10.
South of Machine Room is a dark room called Dingy Closet. The description of Dingy Closet is "This is a dingy closet adjacent to the machine room.  On one wall is a small sticker which reads:[sticker text]".
To say sticker text:
center "Protected by";
center "FROBOZZ";
center "Magic Alarm Company";
center "(Hello, footpad!)".
A white crystal sphere is in Dingy Closet. 
Check searching the blue crystal sphere:  try examining the noun instead.
The later appearance of the white crystal sphere is "There is a beautiful white crystal sphere here."
The description of the white crystal sphere is "[white sphere text]".
To say white sphere text:
if the blue crystal sphere is in something which is hiding begin;
  say "You see only darkness.";
else;
  say "As you peer into the sphere, a strange vision takes shape of
a distant room, which can be described clearly....[paragraph break]";
  say "[description of the location of the blue crystal sphere][paragraph break]";
  say "The vision fades, revealing only an ordinary crystal sphere.";
end if.
Check searching the blue crystal sphere:  try examining the noun instead.
Understand "PALANTHIR" and "STONE" and "SEEING" and "GLASS" and "BALL" as the white crystal sphere.
The size of the white crystal sphere is 10.
After taking the white crystal sphere for the first time: award 6 points; continue the action.
The case-points of the white crystal sphere is 6.
Check asking the robot to try taking the sphere when the sphere is in Dingy Closet and cage solved is false:
say "As the robot reaches for the sphere, a steel cage falls from the
ceiling.  The robot attempts to fend it off, but is trapped below it.
Alas, the robot short-circuits in his vain attempt to escape, and
crushes the sphere beneath him as he falls to the floor.";
remove the robot from play;
remove the sphere from play instead.
Cage solved is a truth state variable. Cage solved is usually false.
Check taking the sphere when the player is in Dingy Closet:
if cage solved is true, continue the action;
  say "As you reach for the sphere, a steel cage falls from the ceiling to entrap you.  To make matters worse, poisonous gas starts coming into the room.";
  if the player cannot see the robot begin;
    say "Time passes...and you die from some obscure poisoning.";
    end the game in death instead;
  else;
    move the player to Cage;
    move the robot to Cage instead;
  end if.
Cage is a dark room. The description of Cage is "You are trapped inside a steel cage."
Check asking the robot to try going down from Top of Well:
  say "Whirr, buzz, click![paragraph break]The robot is unable to do that." instead.
The steel cage is a thing in Cage. The steel cage is scenery.
Instead of asking the robot to try lifting or taking the steel cage:
  say "Whirr, buzz, click![paragraph break]The cage shakes and is hurled across the room.";
  now everything which is in the location which is not scenery is in Dingy Closet;
  now cage solved is true;
  move the mangled steel cage to Dingy Closet.

The mangled steel cage is a thing. The size of the mangled steel cage is 60.

Part 6 -  Deep Ravine, Rocky Crawl, Egyptian Area

West of Deep Ravine is west of a dungeon called Rocky Crawl.
The description of Rocky Crawl is "This is a crawlway with a three-foot high ceiling.  Your footing is very unsure here due to the assortment of rocks underfoot.  Passages can be seen in the east, west, and northwest corners of the passage."
East of a dungeon called Dome Room is east of Rocky Crawl. "You are at the periphery of a large dome, which forms the ceiling of another room below.  Protecting you from a precipitous drop is a wooden railing which circles the dome."
Check jumping while the location is Dome Room:
fatally leap instead.
A dungeon called Torch Room is down from Dome Room. "This is a large room with a prominent doorway leading to a down staircase. To the west is a narrow twisting tunnel, covered with a thin layer of dust.  Above you is a large dome painted with scenes depicting elfin hacking rites. Up around the edge of the dome (20 feet up) is a wooden railing. In the center of the room there is a white marble pedestal."
The railing is unevenly shaped.
The railing is a thing in Dome Room. After tying the rope to the railing: say "The rope drops over the side and comes within ten feet of the floor."; move the coil of rope to Dome Room.
Check climbing the rope when the coil of rope is attached to the railing:
try going down instead.
The railing is scenery. 
Check going down from Dome Room when the coil of rope is not attached to the railing:
say "You cannot go down without breaking many bones." instead.
Up from Torch Room is nowhere.
Check going up from Torch Room: say "You cannot reach the rope." instead.
An ivory torch is in Torch Room.  The initial appearance of the ivory torch is "Sitting on the pedestal is a flaming torch, made of ivory."
The ivory torch is flaming.
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
West of Torch Room is a dungeon called Tiny Room.  The description of Tiny Room is "This is a tiny room, which has an exit to the east."

The initial appearance of the massive wooden door is  "On the [way through the massive wooden door] side of the room is a massive wooden door, near the top of which, in the center, is a window barred with iron.  A formidable bolt lock is set within the door frame.  A keyhole lies within the lock[if the keyhole is closed]covered by a thin metal lid lies within the lock.[otherwise].[end if]"

A container called a keyhole is a thing. The keyhole is closed and openable. 
When play begins:
now the keyhole is part of the massive wooden door.
To decide what direction is the way through (frame - a door): 
    let far side be the other side of frame; 
    let way be the best route from the location to the far side, using even locked doors; 
    if way is a direction, decide on the way; 
    decide on inside. 
Understand "lid" as the keyhole.
After closing the keyhole:
say "The lid falls to cover the keyhole."
After opening the keyhole:
say "The lid opens."
Check inserting something into the keyhole when something is in the keyhole:
  say "The keyhole is occupied." instead.
Before locking or unlocking the massive wooden door with something:
if something is in the keyhole, say "The keyhole is blocked." instead.
The capacity of the keyhole is 12.
A rusty iron key is a thing. The rusty iron key unlocks the massive door.
Before turning the rusty iron key:
if the iron key is in the massive door, try unlocking the massive door with the iron key instead.
Check going inside while the location is Tiny Room: try going north instead.
Check exiting while the location is Dreary Room:  try going south instead.
After inserting something into the keyhole:
if the noun is the stick or the noun is the screwdriver or the noun is the set of keys and the rusty key is in Moby Lossage begin;
  say "There is a faint noise from behind the door and a small cloud of
dust rises from beneath it.";
  now the rusty iron key is on the mat;
  now the rusty iron key is touched;
else;
continue the action;
end if.

The massive wooden door is a door.  North of Tiny Room is the massive wooden door.  North of the massive wooden door is a dungeon called Dreary Room.  The description of Dreary Room is  "This is a small and rather dreary room, which is eerily illuminated
by a red glow emanating from a crack in one of the walls.  The light 
appears to focus on a dusty wooden table in the center of the room."
The massive wooden door is closed,openable, locked, and lockable.

A blue crystal sphere is a thing in Dreary Room.
The description of the blue crystal sphere is "[blue sphere text]".
The case-points of the blue crystal sphere is 10.
After taking the blue crystal sphere for the first time:
award 5 points; continue the action.
Definition: a thing is hiding if it is closed and it is opaque.
To say blue sphere text:
if the red crystal sphere is in something which is hiding begin;
  say "You see only darkness.";
else;
  say "As you peer into the sphere, a strange vision takes shape of
a distant room, which can be described clearly....[paragraph break]";
  say "[description of the location of the red crystal sphere][paragraph break]";
  say "The vision fades, revealing only an ordinary crystal sphere.";
end if.
Understand "PALANTHIR" and "STONE" and "SEEING" and "GLASS" and "BALL" as the white crystal sphere.
After reading a command:
  if the player's command includes "BALLS/PALANTHIRI/PALANTHIRS/SPHERES", replace the matched text with "BOTH SPHERE".


Northwest of Low Crawl is east of a dungeon called Egyptian Room.
The description of Egyptian Room is "This is a room which looks like an Egyptian tomb.  There is an ascending staircase in the room as well as doors east and south."
A closed openable container called a gold coffin is in Egyptian Room.
The later appearance of the gold coffin is "The solid-gold coffin used for the burial of Ramses II is here."
The size of the coffin is 55. The capacity of the coffin is 35.
After taking the coffin for the first time: award 3 points; continue the action.
The case-points of the coffin is 7.
Check going east from Egyptian Room when the player is carrying the coffin:
say "The passage is too narrow to accomodate coffins." instead.
Check going northwest from Rocky Crawl when the player is carrying the coffin:
say "The passage is too narrow to accomodate coffins." instead.
Check going south from Reservoir South when the player is carrying the coffin:
say "The coffin will not fit through this passage." instead.


Part 7 - Volcano Area

A note card is a thing.  The description of the note card is "[agrippa text]".
The later appearance of the note card is "There is a card with writing on it here."
Understand "notecard" and "note-card" and "plain" as the note card.
To say agrippa text:
say "Warning:[line break]";
say "[4 spaces]This room was constructed over very weak rock strata.  Detonation of explosives in this room is strictly prohibited![line break]";
say "[24 spaces]Frobozz Magic Cave Company[line break]";
say "[24 spaces] per M. Agrippa, foreman[line break]";

A gaudy crown is a thing. The later appearance of the crown is "The excessively gaudy crown of Lord Dimwit Flathead is here."  The crown is wearable.  The size of the crown is 10.  After taking the crown: award 15 points; continue the action.  The case-points of the crown is 10.
East of a dungeon called Volcano View is south of Egyptian Room. "You are on a ledge in the middle of a large volcano.  Below you the volcano bottom can be seen and above is the rim of the volcano. A couple of ledges can be seen on the other side of the volcano;
it appears that this ledge is intermediate in elevation between those on the other side.  The exit from this room is to the east."
Check going down from Volcano View:
say "I wouldn't try that." instead.
Check jumping while the location is Volcano View:
fatally leap instead.
The ascending staircase is a door. The ascending staircase is up from Egyptian Room. Through the ascending staircase is Glacier Room.
The ascending staircase is open and not openable. Check climbing the ascending staircase:
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
West of Ruby Room is west of a dungeon called Lava Room.  The description of Lava Room is "This is a small room, whose walls are formed by an old lava flow.
There are exits here to the west and the south."
South of Lava Room is a dungeon called Volcano Bottom.  The description of Volcano Bottom is "You are at the bottom of a large dormant volcano.  High above you
light may be seen entering from the cone of the volcano.  The only
exit here is to the north."
In Volcano Bottom is an enterable open unopenable container called a basket.  The later appearance of the basket is "There is a very large and extremely heavy wicker basket with a cloth bag here. Inside the basket is a metal receptacle of some kind. 
Attached to the basket on the outside is a piece of wire." Understand "balloon" and "basket" and "wicker" as the basket.  The capacity of the basket is 100. The size of the basket is 100. A metal receptacle is part of the basket.  The metal receptacle is a container.  It is closed and openable.  The carrying capacity of the receptacle is 1. The capacity of the receptacle is 100.

A rope called a piece of braided wire is part of the basket. Understand "rope" as the braided wire.
Volcano Core is a dungeon.  The description of Volcano Core is "You are about one hundred feet above the bottom of the volcano.  The top of the volcano is clearly visible here."

A VolcanoLedge is a kind of dungeon.

Volcano Near Small Ledge is a dungeon. The description of Volcano Near Small Ledge is "You are about two hundred feet above the volcano floor.  Looming
above is the rim of the volcano.  There is a small ledge on the west
side."

Volcano Near Viewing Ledge is a dungeon.  The description of Volcano Near Viewing Ledge  is "You are high above the floor of the volcano.  From here the rim of
the volcano looks very narrow and you are very near it.  To the 
east is what appears to be a viewing ledge, too thin to land on."

Volcano Near WideLedge is a dungeon.  The description of Volcano Near WideLedge is "You are near the rim of the volcano which is only about 15 feet
across.  To the west, there is a place to land on a wide ledge."  The printed name of Volcano Near WideLedge is "Volcano Near Wide Ledge".

Narrow Ledge is a  VolcanoLedge.  The description of Narrow Ledge is "You are on a narrow ledge overlooking the inside of an old dormant volcano.  This ledge appears to be about in the middle between the floor below and the rim above. There is an exit here to the south."
A small hook is in Narrow Ledge.  The small hook is fixed in place.  The small hook is unevenly shaped.


South of Narrow Ledge is a  VolcanoLedge called Library.  The description of Library is "This is a room which must have been a large library, probably for the royal family.  All of the shelves appear to have been gnawed to pieces by unfriendly gnomes.  To the north is an exit."

A priceless zorkmid is in Narrow Ledge.  The initial appearance of the priceless zorkmid is "On the floor is a gold zorkmid coin (a valuable collector's item)."
The later appearance of the priceless zorkmid is "There is an engraved zorkmid coin here."
Understand "gold" and "engraved" and "coin" as the zorkmid.
The size of the zorkmid is 10.
After taking the zorkmid for the first time:
award 10 points; continue the action.
The case-points of the zorkmid is 12.
The description of the priceless zorkmid is "[zorkmid text]".
To say zorkmid text:
say fixed letter spacing;
say line break;
say "               --------------------------[line break]";
say "              /      Gold Zorkmid        \\[line break]";
say "             /  T e n   T h o u s a n d   \\[line break]";
say "            /        Z O R K M I D S       \\[line break]";
say "           /                                \\[line break]";
say "          /        ||||||||||||||||||        \\[line break]";
say "         /        !||||          ||||!        \\[line break]";
say "        |          |||   ^^  ^^   |||          |[line break]";
say "        |          |||   OO  OO   |||          |[line break]";
say "        | In Frobs  |||    <<    |||  We Trust |[line break]";
say "        |            || (______) ||            |[line break]";
say "        |             |          |             |[line break]";
say "        |             |__________|             |[line break]";
say "         \\                                   /[line break]";
say "          \\    -- Lord Dimwit Flathead --    /[line break]";
say "           \\    -- Beloved of Zorkers --    /[line break]";
say "            \\                             /[line break]";
say "             \\      * 722 G.U.E. *       /[line break]";
say "              \\                         /[line break]";
say "               --------------------------[line break]";
say variable letter spacing.

In Library is a closed openable container called a blue book. The later appearance of the blue book is "There is a blue book here." The description of the blue book is "This book is written in a tongue with which I am unfamiliar." The blue book is inflammable.
The capacity of the blue book is 2.  The size of the blue book is 10.

In Library is a closed openable  container called a green book. The later appearance of the green book is "There is a green book here." The description of the green book is "This book is written in a tongue with which I am unfamiliar." The green book is inflammable.
The capacity of the green book is 2.  The size of the green book is 10.

In Library is a closed openable container called a white book. The later appearance of the white book is "There is a white book here." The description of the white book is "This book is written in a tongue with which I am unfamiliar." The white book is inflammable.
The capacity of the white book is 2.  The size of the white book is 10.

In Library is a closed openable container called a purple book. The later appearance of the purple book is "There is a purple book here." The description of the purple book is "This book is written in a tongue with which I am unfamiliar." The purple book is inflammable.
The capacity of the purple book is 2.  The size of the purple book is 10.

In the purple book is a Flathead stamp.  The description of the stamp is "[flathead text]".
The size of the Flathead stamp is 1.
After taking the Flathead stamp:
  award 4 points.
The case-points of the Flathead stamp is 10.
To say flathead text:
say fixed letter spacing;
say "---v----v----v----v----v----v----v----v---[line break]";
say "|                                        |[line break]";
say "|          ||||||||||        LORD        |[line break]";
say ">         !||||      |      DIMWIT       <[line break]";
say "|         ||||    ---|     FLATHEAD      |[line break]";
say "|         |||C     CC \\                 |[line break]";
say ">          ||||       _\\                <[line break]";
say "|           ||| (____|                   |[line break]";
say "|            ||      |                   |[line break]";
say ">             |______|       Our         <[line break]";
say "|               /   \\    Excessive      |[line break]";
say "|              /     \\     Leader       |[line break]";
say ">             |       |                  <[line break]";
say "|             |       |                  |[line break]";
say "|                                        |[line break]";
say ">    G.U.E. POSTAGE        3 Zorkmids    <[line break]";
say "|                                        |[line break]";
say "---^----^----^----^----^----^----^----^---[line break]";
say variable letter spacing.

Wide Ledge is a VolcanoLedge.  The description of Wide Ledge is "You are on a wide ledge high into the volcano.  The rim of the volcano is about 200 feet above and there is a precipitous drop below to the bottom.  There is a small door to the south."

Check jumping while the location is Wide Ledge:  fatally leap instead.
Check jumping while the location is Narrow ledge: fatally leap instead.

A tiny hook is in Wide Ledge.  The tiny hook is fixed in place.  The tiny hook is unevenly shaped.

South of Wide Ledge is a VolcanoLedge called Dusty Room.  The description of Dusty Room is "You are in a dusty old room which is virtually featureless, except
for an exit on the north side."

A closed unopenable container called a rusty old box is in Dusty Room.  The rusty old box is fixed in place. The initial appearance of the rusty old box is "[if closed]Embedded in the far wall, there is a rusty old box.  It appears that the box is somewhat damaged, since an oblong hole has been chipped out of the front of it.[otherwise]On the far wall is a rusty box, whose door has been blown off.[end if]".

An open unopenable container called an oblong hole is part of the rusty old box.
The capacity of the oblong hole is 15. The carrying capacity of the oblong hole is 1.

Does the player mean inserting the brick into the oblong hole:  it is very likely.
After taking the moby ruby for the first time:
award 15 points; continue the action.
The case-points of the moby ruby is 8.
The initial appearance of the moby ruby is "On the floor lies a moby ruby."
The later appearance of the moby ruby is  "There is a moby ruby lying here."
Check going west from Glacier Room when the player can see the mass of ice:
say "A mass of ice fills the western half of the room." instead.
Before throwing the ivory torch at the mass of ice:
say "The torch hits the glacier and explodes into a great ball of flame, devouring the glacier.  The water from the melting glacier rushes downstream, carrying the torch with it.  In place of the glacier, there is a passageway leading west.";
remove the mass of ice from play;
now the printed name of the ivory torch is "burned-out ivory torch";
now the ivory torch is not lit;
move the ivory torch to Stream View;
now the ivory torch is non-flaming instead.
Before dropping the ivory torch when the player's command includes "throw":
try throwing the ivory torch at the mass of ice instead.
Understand "burned-out" and "burned out" as the ivory torch when the ivory torch is not lit.
North of Glacier Room is north of a room called Stream View.
The description of Stream View is "You are standing on a path beside a gently flowing stream.  The path travels to the north and the east."
A nondrainable watersource called the pdl2 is in Stream View. 
A dungeon called In Stream is dark.  The description of In Stream is "You are on the gently flowing stream.  The upstream route is too narrow to  navigate and the downstream route is invisible due to twisting walls.  There is a narrow beach to land on."
Check going up from In Stream: say "The way is too narrow." instead.
Check going north from Glacier Room: move the player to Stream View instead.
A coil of thin shiny wire is in Stream View.
Understand "fuse" as the coil of wire. Understand "string" as the coil of wire.
The printed name of the coil of thin shiny wire is "wire coil".
The wire coil is inflammable.
The size of the wire coil is 1.
Check inserting the coil of wire into the brick:
say "You insert the fuse into the brick.";
now the coil of wire is part of the brick instead.

[Procedural rule when taking the coil of wire:
        ignore the can't take component parts rule.]

Check putting the coil of wire on the brick:
say "You insert the fuse into the brick.";
now the coil of wire is part of the brick instead.
The later appearance of the coil of wire is "There is a coil of thin shiny wire here."
East of Stream View is Reservoir South. Check going west from Reservoir South:
move the player to Stream View instead.
Up from Reservoir South is northwest of a dungeon called Deep Canyon. 
South of Deep Canyon is northwest of Round Room. "You are on the south edge of a deep canyon.  Passages lead off to the east, south, and northwest.  You can hear the sound of flowing water below."
Check going northwest from Deep Canyon when the player is carrying the coffin:
  say "The passage is too steep for carrying the coffin." instead.
Check going up from Deep Canyon when the player is carrying the coffin:
  say "The stairs are too steep for carrying the coffin." instead.
Southeast of Round Room is a dungeon called Winding Passage. The description of Winding Passage is "This is a winding passage.  It seems that there is only an exit on the east end, although the whirring from the round room can be heard faintly to the north."
Northwest of Winding Passage is nowhere.
East of Winding Passage is a dungeon called Mirror Room No 1. The printed name of Mirror Room No 1 is "Mirror Room". The description of Mirror Room No 1 is "This is a large square room with tall ceilings.  On the south wall is an enormous mirror which fills the entire wall.  There are exits on the other three sides of the room."
An enormous mirror is in Mirror Room No 1.  It is scenery.
The description of the enormous mirror is "[if the enormous mirror is whole]There is an ugly person staring back at you.[otherwise]The mirror is broken into many pieces.[end if]".
Instead of touching or rubbing the enormous mirror:
  say "There is a rumble from deep within the earth and the room shakes.";
 move the player to Mirror Room No 2.

Every turn when the player is not in the basket:
if the basket is in a VolcanoLedge for at least two turns and the braided wire has not been attached to a nonrope thing begin;
  say "The balloon floats away.  It seems to be ascending, due to its light load.";
  remove the basket from play;
end if.
Does the player mean tying the braided wire to something: it is very likely.
Does the player mean tying something to the braided wire: it is very likely.
Every turn when the player is in the basket and the player's command does not include "launch":
  if something flaming is in the receptacle begin;
    if the receptacle is open begin;
    if the basket is in Volcano Near WideLedge begin;
      say "Your balloon has hit the rim of the volcano, ripping the cloth and
causing you a 500 foot drop.  Did you get your flight insurance?";
      end the game in death;
    else if the basket is in Volcano Near Viewing Ledge;
      move the basket to Volcano Near  WideLedge;
      try looking;
    else if the basket is in Volcano Near Small Ledge;
      move the basket to Volcano Near Viewing Ledge;
      try looking; 
    else if the basket is in Volcano Core;
      move the basket to Volcano Near Small Ledge;
      try looking;
    else if the basket is in Volcano Bottom;
      move the basket to Volcano Core;
      try looking;
    end if;
    else;
    if the basket is in Volcano Near WideLedge begin;
      move the basket to Volcano Near Viewing Ledge;
      try looking;
    else if the basket is in Volcano Near Viewing Ledge;
      move the basket to Volcano Near Small Ledge;
      try looking;
    else if the basket is in Volcano Near Small Ledge;
      move the basket to Volcano Core;
      try looking; 
    else if the basket is in Volcano Core;
      say "The balloon has landed.";
      move the basket to Volcano Bottom;
      try looking;
    end if;
    end if;
  else;
    if the basket is in Volcano Near WideLedge begin;
      move the basket to Volcano Near Viewing Ledge;
      try looking;
    else if the basket is in Volcano Near Viewing Ledge;
      move the basket to Volcano Near Small Ledge;
      try looking;
    else if the basket is in Volcano Near Small Ledge;
      move the basket to Volcano Core;
      try looking; 
    else if the basket is in Volcano Core;
      say "You have landed, but the balloon did not survive.";
      remove the basket from play;
    end if;
 end if;
 if the basket has been in Wide Ledge for at least 2 turns and the braided wire is not attached to a nonrope thing begin;
   say "The balloon leaves the ledge.";
   move the basket to Volcano Near WideLedge;
else if the basket has been in Narrow Ledge for at least 2 turns and the braided wire is not attached to a nonrope thing;
    say "The balloon leaves the ledge.";
   move the basket to Volcano Near Small Ledge;
end if.

Part 8 - Exorcism Stuff

North of Mirror Room No 1 is southwest of Narrow Crawlway. 
Cave1 is a dungeon. "This is a tiny cave with entrances west and north, and a dark, forbidding staircase leading down."
The printed name of Cave1 is "Tiny Cave".
North of Cave1 is Narrow Crawlway. East of Mirror Room is Cave1.
Entrance to Hades is a dungeon. The description of Entrance to Hades is
"You are outside a large gateway, on which is inscribed: [paragraph break]
[8 spaces]'Abandon every hope, all ye who enter here.'[paragraph break]
The gate is open; through it you can see a desolation, with a pile of mangled corpses in one corner.  Thousands of voices, lamenting some hideous fate, can be heard."
Down from Cave1 is Entrance to Hades. Land of the Living Dead is a dungeon. East of Entrance to Hades is Land of the Living Dead.
The description of Land of the Living Dead is "You have entered the Land of the Living Dead, a large desolate room.  Although it is apparently uninhabited, you can hear the sounds of thousands of lost souls weeping and moaning.  In the east corner are
stacked the remains of dozens of previous adventurers who were less
fortunate than yourself.  To the east is an ornate passage,
apparently recently constructed.  A passage exits to the west."
East of the Land of the Living Dead is a dungeon called Tomb of the Unknown Implementor.  The description of Tomb of the Unknown Implementor is "This is the Tomb of the Unknown Implementer. A hollow voice says:  'That's not a bug, it's a feature!'
In the north wall of the room is the Crypt of the Implementers.  It is made of the finest marble, and apparently large enough for four headless corpses.  The crypt is [if the crypt is open]open[otherwise]closed[end if].  Above the entrance is the cryptic instruction: 'Feel Free'.".
Check going inside while in Tomb of the Unknown Implementor: try entering the crypt door instead.

The crypt door is a door.  The crypt door is closed.  The crypt door is north of the Tomb of the Unknown Implementor.  The Crypt of the Implementors is a dark room. The Crypt of the Implementors is north of the crypt door.  The description of the Crypt of the Implementors is "Though large and aesthetically pleasing the marble crypt is empty; the sarcophagi, bodies, and rich treasure to be expected in a tomb of this magnificence are missing. Inscribed on one wall is the motto of the implementers, 'Feel Free'.  There is a door leading out of the crypt to the south.  The door is [if the crypt is open]open[otherwise]closed[end if].".
Check opening the crypt door when the score is less than 616:
say "Although the implementers are dead, they foresaw that some cretin
would tamper with their remains.  Therefore, they took steps to
punish such actions.";
say "Unfortunately, we've run out of poles.  Therefore, in punishment for
your most grievous sin, we shall deprive you of all your valuables,
and of your life.";
end the game in death instead.
Every turn when the player is in Crypt of the Implementors:
if in darkness for the first turn begin;
say "Suddenly, as you wait in the dark, you begin to feel somewhat
disoriented.  The feeling passes, but something seems different.  
As you regain your composure, the cloaked figure appears before you,
and says, 'You are now ready to face the ultimate challenge of
Zork.  Should you wish to do this somewhat more quickly in the
future, you will be given a magic phrase which will at any time
transport you by magic to this point.  To select the phrase, say
	INCANT '<word>'
and you will be told your own magic phrase to use by saying
	INCANT '<word> <phrase>'
Good luck, and choose wisely!'";
end if.
Exorcism flag is a number that varies.
Check going east from Entrance to Hades when exorcism flag is not -1:
  say "Some invisible force prevents you from passing through the gate." instead.
Check ringing the bell while the location is Entrance to Hades:
if exorcism flag is 0 begin;
say "Ding Dong.[paragraph break]";
say "The bell suddenly becomes red hot and falls to the ground. The
wraiths, as if paralyzed, stop their jeering and slowly turn to face
you.  On their ashen faces, the expression of a long-forgotten terror
takes shape.";
if the candles are flaming begin;
try silently dropping the candles;
say "In your confusion, the candles drop to the ground (and they are out).";
end if;
move the brass bell to the location;
now exorcism flag is 1 instead;
else if exorcism flag is -1;
  continue the action;
else;
say "The tension of this ceremony is broken, and the wraiths, amused but
shaken at your clumsy attempt, resume their hideous jeering.";
now exorcism flag is 0 instead;
end if.


Check examining the black book while the location is Entrance to Hades:
  if exorcism flag is 2 begin;
    say "[description of the black book][paragraph break]";
    say "Each word of the prayer reverberates through the hall in a deafening
confusion.  As the last word fades, a voice, loud and commanding,
speaks: 'Begone, fiends!'.  A heart-stopping scream fills the cavern, 
and the spirits, sensing a greater power, flee through the walls.";
    now exorcism flag is -1 instead;
  else if exorcism flag is 1;
    continue the action;
  else;
    say "[description of the black book][paragraph break]";
    say "The tension of this ceremony is broken, and the wraiths, amused but
shaken at your clumsy attempt, resume their hideous jeering." instead;
  end if.
The description of the crypt door is "Here lie the implementers, whose heads were placed on poles by the Keeper of the Dungeon for amazing untastefulness." The crypt door is scenery.  
A set of poled heads is in the Tomb of the Unknown Implementors.  The set of poled heads is not portable.  The initial appearance of the set of poled heads is "There are four heads here, mounted securely on poles." Understand "HEADS" and "HEAD" and "POLE" and "POLES" and "PDL" and "BKD" and "TAA" and "MARC" and "IMPLEMENTORS" and "LOSER" as the set of poled heads.
Instead of taking or destroying or attacking or kicking or poking the set of poled heads:
say "Although the implementers are dead, they foresaw that some cretin
would tamper with their remains.  Therefore, they took steps to
punish such actions.";
say "Unfortunately, we've run out of poles.  Therefore, in punishment for
your most grievous sin, we shall deprive you of all your valuables,
and of your life.";
end the game in death.
Check destroying the set of poled heads with something:
say "Although the implementers are dead, they foresaw that some cretin
would tamper with their remains.  Therefore, they took steps to
punish such actions.";
say "Unfortunately, we've run out of poles.  Therefore, in punishment for
your most grievous sin, we shall deprive you of all your valuables,
and of your life.";
end the game in death instead.
Check attacking the set of poled heads with something:
try destroying the set of poled heads with the second noun instead.
The rval of Land of the Living Dead is 30.

In the Tomb of the Unknown Implementor is a bunch of Coke bottles.  The initial appearance of the bunch of Coke bottles is "There is a large pile of empty Coke bottles here, evidently produced by the implementers during their long struggle to win totally." 
The later appearance of the bunch of Coke bottles is "Many empty Coke bottles are here.  Alas, they can't hold water."
The size of the bunch of Coke bottles is 15.
In the Tomb of the Unknown Implementor is a stack of listings.   The description of the stack of listings is "[listing text]".
To say listing text:
say "<DEFINE FEEL-FREE (LOSER)[line break]";
say "		   <TELL 'FEEL FREE, CHOMPER!'>>[line break]";
say "			...[line break]";
say "The rest is, alas, unintelligible (as were the implementers)."
The size of the stack of listings is 70.  The initial appearance of the stack of listings is 
"There is a gigantic pile of line-printer output here.  Although the
paper once contained useful information, almost nothing can be
distinguished now."
The later appearance of the stack of listings is "There is an enormous stack of line-printer paper here.  It is barely readable." 
The listings are inflammable.
Check destroying the bunch of Coke bottles:
say "Congratulations!  You've managed to break all those bottles.
Fortunately for your feet, they were made of magic glass and disappear
immediately.";
remove the bunch of Coke bottles from play instead.
Check destroying the bunch of Coke bottles with something:
say "Congratulations!  You've managed to break all those bottles.
Fortunately for your feet, they were made of magic glass and disappear
immediately.";
remove the bunch of Coke bottles from play;
say "Somehow, [the second noun] managed to disappear as well.";
remove the second noun from play instead.
Check throwing the bunch of Coke bottles at something:
say "Congratulations!  You've managed to break all those bottles.
Fortunately for your feet, they were made of magic glass and disappear
immediately.";
remove the bunch of Coke bottles from play;
say "Somehow, [the second noun] managed to disappear as well.";
remove the second noun from play instead.
Check dropping bunch of Coke bottles when the player's command includes "throw":
 say "Congratulations!  You've managed to break all those bottles.
Fortunately for your feet, they were made of magic glass and disappear
immediately.";
remove the bunch of Coke bottles from play instead.

Dead flag is a truth state variable. Dead flag is usually false.

East of Ravine is a dungeon called Chasm.  The description of Chasm is "A chasm runs southwest to northeast.  You are on the south edge; the path exits to the south and to the east."
Check going down from Chasm:
  say "Are you out of your mind?" instead.
Check jumping while the location is Chasm: fatally leap instead.

Northeast of Round Room is south of a dungeon called North-South Passage.  The description of North-South Passage is "This is a high north-south passage, which forks to the northeast."
North of North-South Passage is east of Chasm. Northeast of North-South Passage is west of a dungeon called Loud Room. The description of Loud Room is "This is a large room with a ceiling which cannot be detected from the ground. There is a narrow passage from east to west and a stone stairway leading upward.  The room is extremely noisy.  In fact, it is difficult to hear yourself think."

Echo flag is a truth state variable.  Echo flag is usually false.
After reading a command while the location is Loud Room:
if the player's command does not include "[direction]" and the player's command does not match "ECHO" and echo flag is false begin;
say "[player's command]";
reject the player's command;
else if the player's command matches "ECHO" and echo flag is false;
  now echo flag is true;
  say "The acoustics of the room change subtly.";
  reject the player's command;
end if.
A large platinum bar is in Loud Room.  The printed name of the large platinum bar is "platinum bar".  The later appearance of the large platinum bar is "There is a large platinum bar here."  The size of the platinum bar is 20.  The case-points of the platinum bar is 10. 
After taking the platinum bar for the first time:
  award 12 points; continue the action.
Up from Loud Room is south of a dungeon called Damp Cave. The description of Damp Cave is "This is a cave.  Passages exit to the south and to the east, but the cave narrows to a crack to the west.  The earth is particularly damp here."
Check going west from Damp Cave: say "It is too narrow for most insects." instead.
East of Loud Room is south of a dungeon called Ancient Chasm.  The description of Ancient Chasm is "A chasm, evidently produced by an ancient river, runs through the
cave here.  Passages lead off in all directions."
North of Ancient Chasm is southeast of a dead end.  West of Ancient Chasm is a dead end.
East of Ancient Chasm is northwest of a dungeon called Tiny Cave.  The description of Tiny Cave is "This is a small cave whose exits are on the south and northwest."
A hunk of bat guano is in Tiny Cave.  Understand "excretement" and "shit" and "crap" and "poop" as the bat guano.
The size of the bat guano is 20.  
A shovel is in Tiny Cave.  The later appearance of the shovel is "There is a large shovel here."  Understand "large shovel" as the shovel.  The size of the shovel is 15.

Part 9 - Coal Mine Area

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
Southeast of Atlantis Room is north of a dungeon called Reservoir North. A drainable watersource called the pdl3 is in Reservoir North. The description of Reservoir North is "[if the pdl3 is on-stage]You are in a large cavernous room, north of a large reservoir.[otherwise]You are in a large cavernous room, the south of which was formerly a reservoir.[end if]  There is a tunnel leaving the room to the north."
A nondrainable watersource called the pdl4 is in Reservoir. Down from In Stream is Reservoir.
Check going southeast from Atlantis Room: move the player to Reservoir North instead.
A crystal trident is in Atlantis Room.  The initial appearance of the crystal trident is "On the shore lies Poseidon's own crystal trident." The later appearance of the crystal trident is "Poseidon's own crystal trident is here." The size of the crystal trident is 20.  The case-points of the crystal trident is 11. After taking the crystal trident for the first time: award 4 points; continue the action.
West of Cold Passage is a dungeon called Slide Room.  The description of Slide Room is "This is a small chamber, which appears to have been part of a coal mine. On the south wall of the chamber the letters 'Granite Wall' are etched in the rock. To the east is a long passage and there is a steep metal slide twisting downward. To the north is a small opening."

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
The long slide is a door. The long slide is open and unopenable. The long slide is down from Slide Room.  The long slide is scenery.  Down from the Long Slide is Cellar.

Check going through the long slide:
if the coil of rope is attached to something in Slide Room, move the player to Slide1 instead.

Before climbing the rope:
if the coil of rope is attached to the coffin or the coil of rope is attached to the timber and the coil of rope is in Slide Room, try going down instead.

Sllide1 is a dark room.  The printed name of Slide1 is "Slide".  The description of Slide1 is "This is an uncomfortable spot within the coal chute.  The rope to which you are clinging can be seen rising into the darkness above. There is more rope dangling below you."

Up from Slide1 is Slide Room.
Down from Slide1 is a dark room called Slide2.  The printed name of Slide2 is "Slide".  The description of Slide2 is "This is another spot within the coal chute.  Above you the rope
climbs into darkness and the end of the rope is dangling five feet beneath you."

Down from Slide2 is a dark room called Slide3.  The printed name of Slide3 is "Slide". The description of Slide3 is "You have reached the end of your rope.  Below you is darkness as
the chute makes a sharp turn.  On the east here is a small ledge which you might be able to stand on."

Down from Slide3 is Cellar.
East of Slide3 is a dark room called Slide Ledge.  The description of Slide Ledge is "This is a narrow ledge abutting the coal chute, in which a rope can be seen passing downward.  Behind you, to the south, is a small room."
West of Slide Ledge is nowhere.  
Down from Slide Ledge is Cellar.
South of Slide Ledge is a dark room called Sooty Room.  The description of Sooty Room is "This is a small room with rough walls, and a ceiling which is steeply
sloping from north to south. There is coal dust covering almost
everything, and little bits of coal are scattered around the only exit
(which is a narrow passage to the north). In one corner of the room is
an old coal stove which lights the room with a cheery red glow.  There
is a very narrow crack in the north wall."
Check exiting while the location is Sooty Room:
try going north instead.
A red crystal sphere is in Sooty Room.  The initial appearance of the crystal sphere is "On the floor sits a red crystal sphere." The later appearance of the crystal sphere is "There is red crystal sphere here." 
Understand "PALANTHIR" and "STONE" and "SEEING" and "GLASS" and "BALL" as the white crystal sphere.
The case-points of the red crystal sphere is 10.  After taking the red crystal sphere: award 5 points; continue the action.

The description of the red crystal sphere is "[red sphere text]".
To say red sphere text:
if the white crystal sphere is in something which is hiding begin;
  say "You see only darkness.";
else;
  say "As you peer into the sphere, a strange vision takes shape of
a distant room, which can be described clearly....[paragraph break]";
  say "[description of the location of the white crystal sphere][paragraph break]";
  say "The vision fades, revealing only an ordinary crystal sphere.";
end if.
Check searching the blue crystal sphere:  try examining the noun instead.
North of Slide Room is a dungeon called Mine Entrance.  The description of Mine Entrance is "You are standing at the entrance of what might have been a coal
mine. To the northeast and the northwest are entrances to the mine,
and there is another exit on the south end of the room."
Northwest of Mine Entrance is south of a dungeon called Squeaky Room.  The description of Squeaky Room is "You are a small room.  Strange squeaky sounds may be heard coming from
the passage at the west end.  You may also escape to the south."
West of Squeaky Room is a dungeon called Bat Room.  The description of Bat Room is "You are in a small room which has only one door, to the east.  In the corner of the room on the ceiling is a large vampire bat who is obviously deranged and holding his nose."
Instead of going west from Bat Room when dead flag is false and the player is not holding the garlic: 
  say "A deranged giant vampire bat (a reject from WUMPUS) swoops down
from his belfry and lifts you away....";
  move the player to a random coal mine.
A coal mine is a kind of dungeon.  A coal mine usually has printed name "Coal Mine".  A coal mine usually has description "This is a non-descript part of a coal mine."
A deranged giant vampire bat is in Bat Room.  The deranged giant vampire bat is scenery.  Check taking the deranged giant vampire bat:
  say "A deranged giant vampire bat (a reject from WUMPUS) swoops down
from his belfry and lifts you away....";
  move the player to a random coal mine instead.
A jade figurine is in Bat Room.  The size of the jade figurine is 10.  The case-points of the jade figurine is 5. After taking the jade figurine for the first time: award 5 points.
Northeast of Mine Entrance is west of a dungeon called Shaft Room.  The description of Shaft Room is "This is a large room, in the middle of which is a small shaft
descending through the floor into darkness below.  To the west and
the north are exits from this room.  Constructed over the top of the
shaft is a metal framework to which a heavy iron chain is attached."
A container called the tbasket is in Shaft Room.  The printed name of the tbasket is "basket". The later appearance of the tbasket is "At the end of the chain is a basket." The capacity of the tbasket is 50. Understand "dumbwaiter" and "cage" and "basket" as the tbasket. The tbasket is fixed in place.
Lower Shaft is a dark room.  The description of Lower Shaft is 
"This is a small square room which is at the bottom of a long
shaft. To the east is a passageway and to the northeast a very narrow
passage. In the shaft can be seen a heavy iron chain."
A thing called the fbasket is in Lower Shaft.  The fbasket is scenery. Understand "basket" and "dumbwaiter" and "cage" as the fbasket.
Instead of going down while the location is Shaft Room: say "You wouldn't fit and would die if you could."
After deciding the scope of the player when in darkness:
  if the fbasket is in the location, place the fbasket in scope;
  if the tbasket is in the location, place the tbasket in scope.
North of Shaft Room is a dungeon called Wooden Tunnel.  The description of Wooden Tunnel is "This is a narrow tunnel with large wooden beams running across
the ceiling and around the walls.  A path from the south splits into
paths running west and northeast."
West of Wooden Tunnel is a dungeon called Smelly Room.  The description of Smelly Room is "This is a small non-descript room.  However, from the direction
of a small descending staircase a foul odor can be detected.  To the
east is a narrow path."
Down from Smelly Room is a dark room called Gas Room.  The description of Gas Room is "This is a small room which smells strongly of coal gas."
A sapphire bracelet is in Gas Room.  The later appearance of the sapphire bracelet is "There is a sapphire-encrusted bracelet here."
The sapphire bracelet is wearable. The size of the bracelet is 10.  The case-points of the bracelet is 3.  After taking the bracelet for the first time: award 5 points; continue the action.
Every turn when the player is in Gas Room and dead flag is false:
  if the player is carrying the ivory torch and the ivory torch is lit begin;
  say "Oh dear.  It appears that the smell coming from this room was coal gas.  I would have thought twice about carrying a torch in here.";
  end the game in death;
end if.

Northeast of Wooden Tunnel is east of a coal mine called Mine1.
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
Northeast of Ladder Bottom is south of a dead end called DE2.  A pile of coal is in DE2. Understand "heap" and "small" as the pile of coal.  The later appearance of the pile of coal is "There is a small heap of coal here."
The coal is inflammable.
South of Ladder Bottom is north of a dark room called Timber Room.  The description of Timber Room is "This is a long and narrow passage, which is cluttered with broken
timbers.  A wide passage comes from the north and turns at the 
southwest corner of the room into a very narrow passageway."
An unevenly shaped thing called a broken timber is in Timber Room.  Understand "pile" and "wooden" as the broken timber.  The size of the broken timber is 50.
The later appearance of the broken timber is "There is a wooden timber on the ground here."
The narrow passageway is a door.  The narrow passageway is open and unopenable. Inside from Timber Room is the narrow passageway.  Outside from Lower Shaft is the narrow passageway.
Check going southwest while the location is Timber Room: try going inside instead.
Check going northeast while the location is Lower Shaft: try going outside instead.
Before of going through the narrow passageway when the player is carrying something: say "You cannot fit through this passage with that load." instead.
Check going up from Lower Shaft: say "The chain is not climbable." instead.
East of lower shaft is northwest of a dark room called Machine2 Room.  The printed name of Machine2 Room is "Machine Room".
The description of Machine2 Room is "This is a large room which seems to be air-conditioned.  In one corner there is a machine (?) which is shaped somewhat like a clothes dryer.  On the 'panel' there is a switch which is labelled in a dialect of Swahili.  Fortunately, I know this dialect and the label translates to START.  The switch does not appear to be manipulable by any human hand (unless the fingers are about 1/16 by 1/4 inch).  On
the front of the machine is a large lid, which is [if the machine is open]open[otherwise]closed[end if]."
The PDP-10 is a closed openable container in Machine2 Room.  The PDP-10 is scenery.  A thing called the switch is part of the PDP-10.  The printed name of the PDP-10 is "lid".
Understand "dryer" and "pdp10" and "vax" and "machine" and "lid" as the PDP-10.
Check  turning the switch:
  say "You'll cannot manipulate the switch with your hands." instead.
Carry out turning the switch with something:
  if the second noun is not the screwdriver begin;
    say "It seems that [a second noun] won't do.";
  else if the PDP-10 is open;
    say "The machine doesn't seem to want to do anything.";
  else;
    say "The machine comes to life (figuratively) with a dazzling display of colored lights and bizarre noises.  After a few moments, the excitement abates.";
    if the pile of coal is in the PDP-10 begin;
      remove the junk;
      now the diamond is in the PDP-10;
    else if the diamond is in the PDP-10;
        do nothing;
    else;
      remove the junk;
      now the piece of vitreous slag is in the PDP-10;
  end if;
end if.
To remove the junk:
  repeat with thingy running through things contained by the PDP-10 begin;
  remove the thingy from play;
 end repeat.
A piece of vitreous slag is a thing.
Understand "gunk" as the piece of vitreous slag.
A huge diamond is a thing.
The later appearance of the huge diamond is "There is an enormous diamond (perfectly cut) here."
The case-points of the huge diamond is 6.  Understand "enormous" as the huge diamond.
After taking the huge diamond for the first time:
  award 10 points; continue the action.
Check taking the slag:  say "The slag turns out to be rather insubstantial, and crumbles into dust at your touch.  It must not have been very valuable." instead.
The capacity of the PDP-10 is 50.

Part 10 - The Reservoir

East of Deep Canyon is south of a dungeon called Flood Control Dam #3.  The description of Flood Control Dam #3 is "You are standing on the top of the Flood Control Dam #3, which was quite a tourist attraction in times far distant.  There are paths to the north, south, east, and down.  There is a control panel here.  There is a large metal bolt on the panel. Above the bolt is a small green plastic bubble.  [if gate flag is true]The green bubble is glowing.[end if]".
East of Flood Control Dam #3 is east of Damp Cave.
A thing called a bolt is in Flood Control Dam #3.  A thing called a bubble is in Flood Control Dam #3.  The bolt and the bubble are scenery.  Flood Control Dam #3 is not dark.
North of Flood Control Dam #3 is a dungeon called Dam Lobby.      Dam Lobby is not dark. The description of Dam Lobby is "This room appears to have been the waiting room for groups touring the dam.  There are exits here to the north and east marked 'Private', though the doors are open, and an exit to the south."
A tour guidebook is in Dam Lobby.  The initial appearance of the tour guidebook is "Some guidebooks entitled 'Flood Control Dam #3' are on the reception
desk." The later appearance of the tour guidebook is "There are tour guidebooks here."
The description of the tour guidebooks is "[guidebook text]".
The guidebook is inflammable.
To say guidebook text:
center "Guide Book to";
center "Flood Control Dam #3";
say "Flood Control Dam #3 (FCD#3) was constructed in year 783 of the
Great Underground Empire to harness the destructive power of the
Frigid River.  This work was supported by a grant of 37 million
zorkmids from the Central Bureaucracy and your omnipotent local
tyrant Lord Dimwit Flathead the Excessive. This impressive
structure is composed of 3.7 cubic feet of concrete, is 256 feet
tall at the center, and 193 feet wide at the top.  The reservoir
created behind the dam has a volume of 37 billion cubic feet, an
area of 12 million square feet, and a shore line of 36 thousand
feet.[paragraph break]";
say "The construction of FCD#3 took 112 days from ground breaking to
the dedication. It required a work force of 384 slaves, 34 slave
drivers, 12 engineers, 2 turtle doves, and a partridge in a pear
tree. The work was managed by a command team composed of 2345
bureaucrats, 2347 secretaries (at least two of whom can type),
12,256 paper shufflers, 52,469 rubber stampers, 245,193 red tape
processors, and nearly one million dead trees.[paragraph break]";
say "We will now point out some of the more interesting features
of FCD#3 as we conduct you on a guided tour of the facilities.  You start your tour here in the Dam Lobby.  You will notice on your right that ........."
Match count is a number that varies.  Match count is usually 5.
A matchbook is in Dam Lobby.  Understand "matches" and "match" and "flint" as the matchbook.  The later appearance of the matchbook is "There is a matchbook whose cover says 'Visit Beautiful FCD#3' here."
Check opening the matchbook: try counting the matchbook instead.
The description of the matchbook is "[matchbook text]".
To say matchbook text:
center "[unicode 91]close cover before striking BKD[unicode 93]";
say paragraph break;
center "YOU too can make BIG MONEY in the exciting field of";
center "PAPER SHUFFLING!";
say paragraph break;
say "Mr. TAA of Muddle, Mass. says:  'Before I took this course I used
to be a lowly bit twiddler.  Now with what I learned at MIT Tech
I feel really important and can obfuscate and confuse with the best.'[paragraph break]";
say "Mr. MARC had this to say: 'Ten short days ago all I could look
forward to was a dead-end job as a doctor.  Now I have a promising
future and make really big Zorkmids.'[paragraph break]";
say "MIT Tech can't promise these fantastic results to everyone.  But when
you earn your MDL degree from MIT Tech your future will be brighter.[paragraph break]";
center "Send for our free brochure today".
North of Dam Lobby is west of a dungeon called Maintenance Room.  East of Dam Lobby is south of Maintenance Room.  The description of Maintenance Room is "This is what appears to have been the maintenance room for Flood
Control Dam #3, judging by the assortment of tool chests around the
room.  Apparently, this room has been ransacked recently, for most of
the valuable equipment is gone. On the wall in front of you is a
group of buttons, which are labelled in EBCDIC. However, they are of
different colors:  Blue, Yellow, Brown, and Red. The doors to this
room are in the west and south ends."
Maintenance Room is not dark.
A thing called a screwdriver is in Maintenance Room.  A thing called a wrench is in Maintenance Room.
A red button, a yellow button, a blue button, and a brown button are in Maintenance Room.  The red button, the blue button, the brown button, and the yellow button are scenery.  
Check pushing the red button:
  if Maintenance Room is not lit begin;
    say "The lights within the room come on.";
    now Maintenance Room is lit instead;
  else;
    say "The lights within the room shut off.";
    now Maintenance Room is dark instead;
  end if.
A closed openable container called a tube is in Maintenance Room.  The later appearance of the tube is "There is an object which looks like a tube of toothpaste here."
Understand "tube of toothpaste" as the tube.  The capacity of the tube is 7.  The size of the tube is 10.  The description of the tube is "Frobozz Magic Gunk Company:  All Purpose Gunk".
Some viscous material is in the tube. Understand "gunk" and "glue" as the viscous material.  The later appearance of the viscous material is "There is some gunk here.".
Instead of inserting something into the tube:  say "The tube refuses to accept anything."
After taking the viscous material from the tube:
say "The viscous material oozes into your hand."
After reading a command:
  if the player's command includes "squeeze [tube]", replace the matched text with "get all from [tube]".

Table of Drowning Messages
message
"up to your ankles."
"up to your shin."
"up to your knees."
"up to your hips."
"up to your waist."
"up to your chest."
"up to your neck."
"over your head."
"high in your lungs."


Water level is a number that varies.  Water level is usually 0.
Understand "putty" and "toothpaste" as the viscous material.
Check pushing the blue button:
  if water level is not zero begin;
    say "The blue button appears to be jammed." instead;
  else;
    say "There is a rumbling sound and a stream of water appears to burst from the east wall of the room (apparently, a leak has occurred in a pipe.)";
    now water level is 1;
    move the leak2 to Maintenance Room instead;
 end if.
The leak2 is a thing.  The leak2 is scenery.  The printed name of the leak2 is "leak".
Understand "leak" as the leak2.
Every turn when water level is greater than 0 and water level is less than 19:
  increase water level by 1;
  let n be water level / 2;
  if the player is in Maintenance Room begin;
    say "The water is [message in row n of the Table of Drowning Messages]";
    if water level is 18 begin;
      say "  I'm afraid you have done drowned yourself.";
      end the game in death;
    end if;
  end if.
Carry out plugging the leak2 with the viscous material:
  say "By some miracle of elven technology, you have managed to stop the
leak in the dam.";
  now water level is -1;
  remove the leak2 from play.
Before going north from Dam Lobby when water level is greater than 17:
  say "The room is full of water and cannot be entered.";
  stop the action.
Before going east from Dam Lobby when water level is greater than 17:
 say "The room is full of water and cannot be entered.";
stop the action.

Check pushing the brown button:
  now gate flag is false;
  say "Click." instead.
Check pushing the yellow button:
  now gate flag is true;
  say "Click." instead.
Check turning the bolt with something:
  if the second noun is not the wrench, say "The bolt won't turn using [the second noun]." instead;
  if gate flag is false, say "The bolt won't turn with your best effort." instead.

Gate flag is a truth state variable. Gate flag is usually false.
Carry out turning the bolt with the wrench:
  if the pdl3 is on-stage begin;
    say "The sluice gates open and water pours through the dam.";
    repeat with thingy running through drainable watersources begin;
      remove the thingy from play;
    end repeat;
  else;
    say "The sluice gates close and water starts to collect behind the dam.";
    move the pdl1 to Reservoir South;
    move the pdl3 to Reservoir North;
  end if.
North of Reservoir South is a dungeon called Reservoir.  The description of Reservoir is     
"[if the pdl3 is on-stage]You are on the reservoir.  Beaches can be seen north and south.  Upstream a small stream enters the reservoir through a narrow cleft
in the rocks.  The dam can be seen downstream.[otherwise]You are on what used to be a large reservoir, but which is now a large mud pile.  There are 'shores' to the north and south.[end if]".
North of Reservoir is Reservoir North.
Check going north from Reservoir:
move the player to Reservoir North instead.
Check going to a room that is not offroad:
  if the player is not in a vehicle, print the you can't go message instead;
  else continue the action.
A hand-held air-pump is in Reservoir North.  Understand "pump" and "airpump" as the air-pump.  The later appearance of the air-pump is "There is a small pump here."

A trunk of jewels is in Reservoir.  Understand "chest" as the trunk.  The size of the trunk is 35.  The case-points of the trunk is 8.  After taking the trunk: award 15 points; continue the action. The initial appearance of the trunk of jewels is "Lying half buried in the mud is an old trunk, bulging with jewels." The later appearance of the trunk of jewels is "There is an old trunk here, bulging with assorted jewels."

Part 11 - Old Man River, That Old Man River

Down from Flood Control Dam #3 is a room called Dam Base.  The description of Dam Base is "You are at the base of Flood Control Dam #3, which looms above you
and to the north.  The river Frigid is flowing by here.  Across the river are the White Cliffs which seem to form a giant wall stretching from north to south along the east shore of the river as it winds its way downstream."

A broken sharp stick is in Dam Base.  The initial appearance of the broken sharp stick is "A sharp stick, which appears to have been broken at one end, is here."
The later appearance of the broken sharp stick is "There is a broken sharp stick here."
The size of the broken sharp stick is 3.
The pile of plastic is inflammable.  The magic boat is inflammable.  The dboat is inflammable.
A pile of plastic is in Dam Base.  The later appearance of the pile of plastic is "There is a folded pile of plastic here which has a small valve
attached."  The size of the pile of plastic is 20.  Understand "boat" as the pile of plastic.
A dboat is a thing.  The printed name of the dboat is "plastic boat (with hole)".  Understand "pile" and "boat" and "plastic" as the dboat.
Carry out plugging the dboat with the viscous material:
  say "Well done.  The boat is repaired.";
  move the pile of plastic to the holder of the dboat;
  remove the dboat from play.
A magic boat is a vehicle.  Understand "plastic" and "raft" and "seaworthy" as the magic boat.  The later appearance of the magic boat is "There is an inflated boat here." The size of the magic boat is 20.  The capacity of the magic boat is 100.
Carry out inflating it with:
  say "The boat inflates and appears seaworthy.";
  now the magic boat is in the holder of the pile of plastic;
  remove the pile of plastic from play.
Check entering the boat when the player is carrying the sharp stick:
  say "There is a hissing sound and the boat deflates.";
  move the dboat to the holder of the boat;
  remove the boat from play instead.
Definition: a room is offroad if it does not contain a nondrainable watersource. 
Check going by the magic boat when the player is in somewhere offroad: 
    say "You can't go there in a magic boat." instead.
The tan label is inflammable.
A tan label is in the magic boat.  Understand "fine print" and "fineprint" as the tan label.  The description of the tan label is "[tan label text]".
To say tan label text:
center "!!!! 	FROBOZZ MAGIC BOAT COMPANY  !!!!";
say paragraph break;
say "Hello, Sailor![paragraph break]";
say "Instructions for use:[paragraph break]";
say "[four spaces]To get into boat, type 'BOARD BOAT'[line break]";
say "[four spaces]To leave boat, say 'DISEMBARK'[paragraph break]";
say "[four spaces]To get into a body of water, say 'LAUNCH'[paragraph break]";
say "[four spaces]To get to shore, say 'LAND'[paragraph break]";
say "This boat is guaranteed against all defects in parts and
workmanship for a period of 76 milliseconds from date of purchase or
until first used, whichever comes first.[paragraph break]";
say "WARNING:  This boat is made of plastic.[paragraph break]";
say "Good Luck!".
A river is a kind of room. The printed name of a river is usually "Frigid River".  Check going up from a river:  say "You cannot go upstream due to strong currents." instead.
East of Dam Base is a river called River1.  The description of River1 is "You are on the River Frigid in the vicinity of the Dam.  The river flows quietly here.  There is a landing on the west shore."
A nondrainable watersource called the pdl5 is in River1.
Down from River1 is a river called River2.  The description of River2 is "The River turns a corner here making it impossible to see the
Dam.  The White Cliffs loom on the east bank and large rocks prevent
landing on the west."

A nondrainable watersource called the pdl6 is in River2.
Down from River2 is a river called River3.  The description of River3 is "The river descends here into a valley.  There is a narrow beach on
the east below the cliffs and there is some shore on the west which may be suitable.  In the distance a faint rumbling can be heard."
A nondrainable watersource called the pdl7 is in River3.
Down from River3 is a river called River4.  The description of River4 is "The river is running faster here and the sound ahead appears to bethat of rushing water.  On the west shore is a sandy beach.  A small area of beach can also be seen below the Cliffs."
A nondrainable watersource called the pdl8 is in River4.
Down from River4 is a river called River5.  The description of River5 is "The sound of rushing water is nearly unbearable here.  On the west
shore is a large landing area."
A nondrainable watersource called the pdl9 is in River5.
Down from River5 is a dungeon called Moby Lossage.
The rusty iron key is in Moby Lossage.  The initial appearance of the rusty iron key is " ".
Every turn when the magic boat is in Moby Lossage and the player is in the magic boat:  say "Unfortunately, a rubber raft doesn't provide much protection from the unfriendly sorts of rocks and boulders one meets at the bottom of many waterfalls.  Including this one."; end the game in death; remove the magic boat from play.

A closed openable container called a red buoy is in River4.  The initial appearance of the red buoy is "There is a red buoy here (probably a warning)." 
The capacity of the buoy is 20.  The size of the buoy is 10.
A large emerald is in the buoy.  After taking the emerald: award 5 points; continue the action.
The case-points of the emerald is 10.
Check going east from River2:  say "The White Cliffs prevent your landing here." instead.
South of Tiny Cave is northwest of a room called Rocky Shore.  The description of Rocky Shore is "You are on the west shore of the river.  An entrance to a cave is
to the northwest.  The shore is very rocky here."
East of Rocky Shore is River3.
WCLF1 is a room.  The description of WCLF1 is "You are on a narrow strip of beach which runs along the base of the White Cliffs. The only path here is a narrow one, heading south
along the Cliffs."  WCLF1 is west of River3.  The printed name of WCLF1 is "White Cliffs Beach".
South of WCLF1 is a room called WCLF2. The description of WCLF2 is "You are on a rocky, narrow strip of beach beside the Cliffs.  A narrow path leads north along the shore."
The printed name of WCLF2 is "White Cliffs Beach".  East of WCLF2 is River4.

West of River4 is a room called Sandy Beach.  The description of Sandy Beach is "You are on a large sandy beach at the shore of the river, which is flowing quickly by.  A path runs beside the river to the south here."

South of Sandy Beach is a room called Shore.  The description of Shore is "You are on the shore of the River.  The river here seems somewhat treacherous.  A path travels from north to south here, the south end quickly turning around a sharp corner." East of Shore is River5.

South of Shore is a room called Aragain Falls.  The description of Aragain Falls is "You are at the top of Aragain Falls, an enormous waterfall with a drop of about 450 feet.  The only path here is on the north end.  [if rainbow flag is true]A solid rainbow spans the falls.[otherwise]A beautiful rainbow can be seen over the falls and to the east.[end if]".

Rainbow Room is a room.  The description of Rainbow Room is "You are on top of a rainbow (I bet you never thought you would walk on a rainbow), with a magnificent view of the Falls.  The rainbow travels east-west here.  There is an NBC Commissary here."

Rainbow flag is a truth state that varies.  Rainbow flag is usually false.

Check waving the stick:
  if the player is in Aragain Falls or the player is in End of Rainbow begin;
   if rainbow flag is true begin;
   say "The rainbow seems to have become somewhat run-of-the-mill.";
   change the east exit of Aragain Falls to nowhere;
   change the west exit of Rainbow Room to nowhere;
   change the west exit of End of Rainbow to nowhere;
   change the east exit of Rainbow Room to nowhere;
   now rainbow flag is false instead;
   else;
   say "Suddenly, the rainbow appears to become solid and, I venture,
walkable (I think the giveaway was the stairs and bannister).";
   if the pot of gold is untouched, move the pot of gold to End of Rainbow;
   change the east exit of Aragain Falls to Rainbow Room;
   change the west exit of Rainbow Room to Aragain Falls;
   change the west exit of End of Rainbow to Rainbow Room;
   change the east exit of Rainbow Room to End of Rainbow;
   now rainbow flag is true instead;
   end if;
 else if the player is in Rainbow Room;
    say "The structural integrity of the rainbow seems to have left it,
leaving you about 450 feet in the air, supported by water vapor.";
   end the game in death instead;
 else;
   say "Very good." instead;
 end if.

A pot of gold is a thing.  The initial appearance of the pot of gold is "At the end of the rainbow is a pot of gold." The later appearance of the pot of gold is "There is a pot of gold here." The size of the pot of gold is 15. The case-points of the pot of gold is 10.  After taking the pot of gold:  award 10 points; continue the action.
A statue is a thing.
Understand "beautiful" and "sculpture" and "rock" as the statue.
The size of the statue is 8.
After taking the statue: award 11 points; continue the action.
The case-points of the statue is 13.
Every turn while the location is Rainbow Room:  now exit found is true.

After taking the buoy for the first time:
  say "Something seems funny about the feel of the buoy.".

An open unopenable enterable container called a man-sized wooden barrel is in Aragain Falls.  The printed name of the man-sized wooden barrel is "wooden barrel".  The later appearance of the man-sized wooden barrel is "There is a man-sized barrel here which you might be able to enter."  The barrel is fixed in place.  The capacity of the man-sized wooden barrel is 100.
Check looking when the player is inside the barrel: say "You are inside a barrel.  Congratulations.  Etched into the side of the barrel is the word 'Geronimo!'.  From your position, you cannot see the falls." instead.
After entering the barrel: try looking.

Part 12 - The End Game

To decide what indexed text is the encryption of (x - an indexed text):
let keyw be {5, 3, 15, 22, 24, 18, 13, 19};
let outw be an indexed text;
let uinws be 0;
let usum be 0;
let inw be a list of numbers;
let i be 1;
let j be 1;
now outw is "[8 spaces]";
let len be the number of characters in x;
let a be character number 1 in x; [ to appease scoping rules ]
while i is at most 8 begin;
  if j is greater than len, now j is 1;
  let a be character number j in x;
  if a matches the regular expression "<^A-Z>", now j is 1;
  let a be character number j in x;
  let b be the alphabet position of a;
  add b to inw;
  increase uinws by b;
  increase i by 1;
  increase j by 1;
end while;
now usum is (the remainder after dividing uinws by 8) + 56;
now i is 1;
while i is at most 8 begin;
  let c be entry i of inw;
  let b be entry i of keyw;
  now j is the twiddle of c and b and usum;
  now j is the remainder after dividing j by 32;
  if j is greater than 26, now j is the remainder after dividing j by 26;
  now a is character number j in the alphabet;
  replace character number i in outw with a;
  now usum is the remainder after dividing (usum + 1) by 32;
  increase i by 1;
end while;
decide on outw.

To decide what number is the twiddle of (a - a number) and (b - a number) and (c - a number):
  (- xor(xor({a},{b}),{c}) -).

To decide which number is the alphabet position of (n - an indexed text):
if n is "A", decide on 1;
if n is "B", decide on 2;
if n is "C", decide on 3;
if n is "D", decide on 4;
if n is "E", decide on 5;
if n is "F", decide on 6;
if n is "G", decide on 7;
if n is "H", decide on 8;
if n is "I", decide on 9;
if n is "J", decide on 10;
if n is "K", decide on 11;
if n is "L", decide on 12;
if n is "M", decide on 13;
if n is "N", decide on 14;
if n is "O", decide on 15;
if n is "P", decide on 16;
if n is "Q", decide on 17;
if n is "R", decide on 18;
if n is "S", decide on 19;
if n is "T", decide on 20;
if n is "U", decide on 21;
if n is "V", decide on 22;
if n is "W", decide on 23;
if n is "X", decide on 24;
if n is "Y", decide on 25;
if n is "Z", decide on 26.
The alphabet is an indexed text variable.  The alphabet is [always] "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
Check exiting when the player is in a river:
  say "You realize, just in time, that disembarking here would probably be fatal." instead.
Incanting is an action applying to one topic.  Understand "incant [text]" as incanting.
Check incanting:
if endgame flag is true, say "[one of]Sorry, only one incantation to a customer.[or]Incantations are useless once you have gotten this far[at random]" instead.

Carry out incanting:
let i be the number of words in the topic understood;
  let a be word number one in the topic understood;
  now a is "[a in upper case]";
  let b be word number two in the topic understood;
  now b is "[b in upper case]";
if i is 1 begin;
  if the player is not in Crypt of the Implementors, say "That spell has no obvious effect." instead;
  if not in darkness, say  "That spell has no obvious effect." instead;
  if the player is carrying something lit, say "That spell has no obvious effect." instead;
  let b be character number 1 in a;
  if b matches the regular expression "<^A-Z>", say "Sorry, your secret word must begin with a letter." instead;
  say "A hollow voice replies '[encryption of a]'";
  now the score is 621;
  now endgame flag is true;
  move the battery-powered brass lantern to the player;
  move the sword to the player;
  move the player to Top of Stairs;
else if i is 2;
 let c be character number one in a;
  let d be character number one in b;
 if c matches the regular expression "<^A-Z>", say "That spell has no obvious effect." instead;
  if d matches the regular expression "<^A-Z>", say "That spell has no obvious effect.";
  let ee be the encryption of a;
  let f be the encryption of b;
  if ee is b, skip to the endgame instead;
  if f is a, skip to the endgame instead;
  say "That spell has no obvious effect.";
else;
  say "That spell has no obvious effect.";
end if.
To skip to the endgame:
say "As the last syllable of your spell fades into silence, darkness
envelops you, and the earth shakes briefly.  Then all is quiet.";
now the score is 621;
now endgame flag is true;
now the sword is touched;
now the battery-powered brass lantern is touched;
move the battery-powered brass lantern to the player;
move the sword to the player;
move the player to Top of Stairs.

Endgame flag is a truth state that varies.  Endgame flag is false.

Top of Stairs is a room.  The description of Top of Stairs is "You are standing at the top of a flight of stairs that lead down to a passage below.  Dim light, as from torches, can be seen in the passage.  Behind you the stairs lead into untouched rock."
The rval of Top of Stairs is 10.
Check going south from Top of Stairs:  say "The wall is solid rock." instead.
North of Top of Stairs is Stone Room.  Down from Top of Stairs is Stone Room.
The description of Stone Room is "You are standing near one end of a long, dimly lit hall.  At the south stone stairs ascend.  To the north the corridor is illuminated
by torches set high in the walls, out of reach.  On one wall is a red
button." A thing called a redbutton is in Stone Room.  Understand "red" and "button" and "switch" as the redbutton. The redbutton is scenery.  The printed name of the redbutton is "red button".
The redbutton has a truth state called depressed. The depressed of the redbutton is false.
Beam stopped is a truth state that varies.  Beam stopped is false.
Mrint is a number that varies.  Mrint is -1.
Check pushing the redbutton:
  if the depressed of the redbutton is true begin;
    say "The button is already depressed." instead;
  else;
    say "The button becomes depressed.";
    if beam stopped is false begin;
      say "The button pops back out." instead;
    else;
      now mirror open is true;
      now mrint is 7 instead;
    end if;
 end if.
North of Stone Room is a room called Small Room 2.  The description of Small Room 2 is "You are in a small room, with narrow passages exiting to the north
and south.  A narrow red beam of light crosses the room at the north
end, inches above the floor.[if beam stopped is true]The beam is stopped halfway across the room by a sword lying on the floor.[end if]".
The printed name of Small Room 2 is "Small Room".
A red beam of light is in Small Room 2.  The red beam of light is scenery.
Check destroying the beam of light with something:
try dropping the second noun instead.
After dropping the sword when beam stopped is false and the player can see the beam of light:
  say "The beam is now blocked by a sword lying on the floor.";
  now beam stopped is true.
After taking the sword when beam stopped is true and the player can see the beam of light:
  now beam stopped is false.
Check taking the beam of light:
  say "No doubt you have a bottle of moonbeams as well." instead.
Check saving the game when endgame flag is true: say "Saves are not permitted during the end game." instead. 

North of Small Room 2 is a room called Hallway.  The description of Hallway is "This is part of the long hallway.  The east and west walls are dressed stone.  In the center of the hall is a shallow stone channel. In the center of the room the channel widens into a large hole around which is engraved a compass rose. A passage enters from the south. A large mirror fills the north side of the hallway.[if mirror open is true]  The mirror is mounted on a panel which has been opened outward.[end if]".
The miror is a thing in Hallway.  The miror is scenery.  Understand "mirror" and "panel" as the miror.  Instead of entering the miror: try going inside instead.
Check going inside when the player is in Hallway and mirror open is true and Room Number is 1:
move the player to InsideMirror instead.
Mirror open is a truth state that varies. Mirror open is false.
Room Number is a number that varies.  Room Number is 1.  Mirror direction is a direction that varies. Mirror direction is usually west. Pole up is a truth state that varies.  Pole up is usually false.

InsideMirror is a room with printed name "Inside Mirror".  The description of InsideMirror is 
"[5 spaces]You are inside a rectangular box of wood whose structure is rather
complicated.  Four sides and the roof are filled in, and the floor is
open.[paragraph break]
[5 spaces]As you face the side opposite the entrance, two short sides of
carved and polished wood are to your left and right.  The left panel
is mahogany, the right pine.  The wall you face is red on its left
half and black on its right.  On the entrance side, the wall is white
opposite the red part of the wall it faces, and yellow opposite the
black section.  The painted walls are at least twice the length of
the unpainted ones.  The ceiling is painted blue.[paragraph break]
[5 spaces]In the floor is a stone channel about six inches wide and a foot
deep.  The channel is oriented in a north-south direction.  In the
exact center of the room the channel widens into a circular
depression perhaps two feet wide.  Incised in the stone around this
area is a compass rose.[paragraph break]
[5 spaces]Running from one short wall to the other at about waist height
is a wooden bar, carefully carved and drilled.  This bar is pierced
in two places.  The first hole is in the center of the bar (and thus
the center of the room).  The second is at the left end of the room
(as you face opposite the entrance).  Through each hole runs a wooden
pole.[paragraph break]
[5 spaces]The pole at the left end of the bar is short, extending about a foot
above the bar, and ends in a hand grip.  The pole is [if pole up is true]up[otherwise]down[end if].[paragraph break]
[5 spaces]The long pole at the center of the bar extends from the ceiling
through the bar to the circular area in the stone channel.  This
bottom end of the pole has a T-bar a bit less than two feet long
attached to it, and on the T-bar is carved an arrow.  The arrow and
T-bar are pointing [Mirror direction]."
The yellow panel is scenery.
A short pole is a thing in InsideMirror.  A long pole is a thing in InsideMirror.  A mahogany panel is a thing in InsideMirror.  A pine panel is a thing in InsideMirror.  A red panel is a thing in InsideMirror.  A yellow panel is a thing in InsideMirror.  The short pole, the long pole, the mahogany panel, the pine panel, the red panel, and the white panel are scenery.  Understand "wall" as the red panel. Understand "wall" as the pine panel.
Understand "wall" as the yellow panel.  Understand "wall" as the mahogany panel.
Understand "yellow" as the red panel.  Understand "black" as the white panel.
Check pushing the red panel:
  if the pole up is true begin; 
    say "The structure rotates clockwise.";
if mirror direction is west begin;
  now mirror direction is northwest;
else if mirror direction is northwest;
  now mirror direction is north;
else if mirror direction is north;
  now mirror direction is northeast;
else if mirror direction is northeast;
  now mirror direction is east;
else if mirror direction is east;
  now mirror direction is southeast;
else if mirror direction is southeast;
  now mirror direction is south;
else if mirror direction is south;
  now mirror direction is south;
else if mirror direction is south;
  now mirror direction is west;
end if;
say "The arrow is now pointing [Mirror direction]." instead;
  else;
    say "The short pole stops the structure from rotating." instead;
end if.
Check pushing the white panel:
  if the pole up is true begin; 
    say "The structure rotates counterclockwise.";
if mirror direction is west begin;
  now mirror direction is south;
else if mirror direction is northwest;
  now mirror direction is west;
else if mirror direction is north;
  now mirror direction is northwest;
else if mirror direction is northeast;
  now mirror direction is north;
else if mirror direction is east;
  now mirror direction is northeast;
else if mirror direction is southeast;
  now mirror direction is east;
else if mirror direction is south;
  now mirror direction is southeast;
else if mirror direction is south;
  now mirror direction is south;end if;
say "The arrow is now pointing [Mirror direction]." instead;
  else;
    say "The short pole stops the structure from rotating." instead;
end if.
Check lifting the short pole:
 if pole up is true begin;
   say "The pole cannot be raised further." instead;
 else;
   say "The pole is now slightly above the floor.";
   now pole up is true instead;
 end if.
Check lowering the short pole:
 if pole up is true begin;
   say "The pole is lowered into the channel.";
   now pole up is false instead;
 else;
   say "The pole cannot be lowered further." instead;
 end if.
Check pushing the mahogany panel:
if mirror direction is not north and mirror direction is not south begin;
  say "The structure rocks back and forth slightly but doesn't move." instead;
else if mirror direction is north;
if room number is 2 and pole up is true begin;
say "The structure wobbles north and stops over another compass rose.[paragraph break]";
say "The structure wobbles as it moves, alerting the Guardians.[paragraph break]";
say "Suddenly, the Guardians realize that someone is trying to sneak by them in the structure.  They awake and, in perfect unison, hammer the box and its contents (including you) to pulp.  Satisfied, they then resume their posts.[paragraph break]";
end the game in death instead;
else if pole up is true;
  if room number is 4 begin;
    say "The structure has reached the end of the stone channel and won't budge." instead;
  else if room number is 3;
    say "The structure wobbles north and stops over another compass rose.";
    now room number is 4 instead;
  else if room number is 2;
    say "The structure wobbles north and stops over another compass rose.";
    now room number is 3 instead;
   else if room number is 1;
     say "The structure wobbles north and stops over another compass rose.";
     now room number is 2 instead;
   end if;
else;
  if room number is 4 begin;
    say "The structure has reached the end of the stone channel and won't budge." instead;
  else if room number is 3;
     say "The structure slides north and stops over another compass rose.";
    now room number is 4 instead;
  else if room number is 2;
     say "The structure slides north and stops over another compass rose.";
    now room number is 3 instead;
   else if room number is 1;
     say "The structure slides north and stops over another compass rose.";
     now room number is 2 instead;
end if;
end if;
else if mirror direction is south;
if room number is 4 and pole up is true begin;
say "The structure wobbles south and stops over another compass rose.[paragraph break]";
say "The structure wobbles as it moves, alerting the Guardians.[paragraph break]";
say "Suddenly, the Guardians realize that someone is trying to sneak by them in the structure.  They awake and, in perfect unison, hammer the box and its contents (including you) to pulp.  Satisfied, they then resume their posts.[paragraph break]";
end the game in death instead;
else if pole up is true;
  if room number is 1 begin;
    say "The structure has reached the end of the stone channel and won't budge.";
  else if room number is 2;
    say "The structure wobbles south and stops over another compass rose.";
    now room number is 1 instead;
  else if room number is 3;
    say "The structure wobbles south and stops over another compass rose.";
    now room number is 2 instead;
   end if;
else;
  if room number is 1 begin;
    say "The structure has reached the end of the stone channel and won't budge." instead;
  else if room number is 2;
     say "The structure slides south and stops over another compass rose.";
    now room number is 1 instead;
  else if room number is 3;
     say "The structure slides south and stops over another compass rose.";
    now room number is 2 instead;
   else if room number is 4;
     say "The structure slides south and stops over another compass rose.";
     now room number is 3 instead;
end if;
end if;
end if.
Hallway2 is a room. The printed name of Hallway2 is "Narrow Hallway".  The description of Hallway2 is "This is part of the long hallway.  The east and west walls are
dressed stone.  In the center of the hall is a shallow stone channel.
In the center of the room the channel widens into a large hole around
which is engraved a compass rose.The north side of the room is divided by a wooden wall into small hallways to the northeast and northwest."
Check pushing the pine panel:
if room number is 4 and mirror direction is north begin;
  say "The pine door opens into the field of view of the Guardians.[paragraph break]";
say "The Guardians awake and, in perfect unison, destroy you with
their stone bludgeons.  Satisfied, they resume their posts.";
end the game in death instead;
else if room number is 2 and mirror direction is south;
say "The pine door opens into the field of view of the Guardians.[paragraph break]";
say "The Guardians awake and, in perfect unison, destroy you with
their stone bludgeons.  Satisfied, they resume their posts.";
end the game in death instead;
else if room number is 3;
say "The pine door opens into the field of view of the Guardians.[paragraph break]";
say "The Guardians awake and, in perfect unison, destroy you with
their stone bludgeons.  Satisfied, they resume their posts.";
end the game in death instead;
else if mirror direction is not north and mirror direction is not south;
say "The structure rocks back and forth slightly but doesn't move.";
else;
say "The pine wall swings open.";
now mirror open is true instead;
end if.
Check exiting while the location is InsideMirror:
if mirror open is false begin;
  say "There is no way out." instead;
else if room number is 1;
  move the player to Hallway instead;
else if room number is 2;
  move the player to Hallway2 instead;
else;
  move the player to Hallway4 instead;
end if.
Northwest of Hallway2 is a room called Narrow Room.  The description of Narrow Room is "This is a narrow room whose east wall is a large mirror.  Somewhat to the north, identical stone statues face each other from pedestals on opposite sides of the corridor.  The statues represent Guardians of Zork, a military order of ancient lineage.  They are portrayed as heavily armored warriors standing at ease, hands clasped around formidable bludgeons."
Northeast of Hallway2 is a room called NarrowRoom.  The printed name of Narrow Room is "Narrow Room".  The description of NarrowRoom is "This is a narrow room whose west wall is a large mirror. Somewhat to the north, identical stone statues face each other from
pedestals on opposite sides of the corridor.  The statues represent Guardians of Zork, a military order of ancient lineage.  They are portrayed as heavily armored warriors standing at ease, hands clasped around formidable bludgeons."
Instead of going north from Narrow Room:
say "The Guardians awake and, in perfect unison, destroy you with
their stone bludgeons.  Satisfied, they resume their posts.";
end the game in death.
Instead of going north from NarrowRoom:
say "The Guardians awake and, in perfect unison, destroy you with
their stone bludgeons.  Satisfied, they resume their posts.";
end the game in death.
The rval of InsideMirror is 15.
Hallway4 is a room.  The printed name of Hallway4 is "Dungeon Entrance".  The description of Hallway4 is "This is a north-south hallway which ends in a large wooden door. The south side of the room is divided by a wooden wall into small hallways to the southeast and southwest."
Instead of going southwest from Hallway4:
say "The Guardians awake and, in perfect unison, destroy you with
their stone bludgeons.  Satisfied, they resume their posts.";
end the game in death.
Instead of going southeast from Hallway4:
say "The Guardians awake and, in perfect unison, destroy you with
their stone bludgeons.  Satisfied, they resume their posts.";
end the game in death.

The large wooden door is a door.  The large wooden door is closed, openable, lockable, and locked.  The large wooden door is north from Hallway4. The large wooden door is scenery. North of the large wooden door is Narrow Corridor.

Narrow Corridor is a room.  The description of Narrow Corridor is "This is a narrow north-south corridor.  At the south end is a door and at the north end is an east-west corridor.  The door is [if the large wooden door is open]open.[otherwise]closed.[end if]".

The dungeon master is a man.  Instead of attacking the dungeon master:
say "The dungeon master is taken momentarily by surprise.  He dodges your
blow and then, with a disappointed expression on his face, he raises
his staff and traces a complicated pattern in the air.  As it
completes you crumble into dust."; end the game in death.  Instead of attacking the dungeon master with something:
say "The dungeon master is taken momentarily by surprise.  He dodges your
blow and then, with a disappointed expression on his face, he raises
his staff and traces a complicated pattern in the air.  As it
completes you crumble into dust.";
end the game in death.
Question number is a number that varies.  Question number is usually 0.
Instead of answering the dungeon master that something:
  if the topic understood matches the text "follow" begin;
   now follow is true;
   say "The dungeon master answers, 'I will follow.'";
  else if the topic understood matches the text "stay";
    say "The dungeon master says, 'I will stay.'";
    now follow is false;
  else;
    try speaking "[the topic understood]";
  end if.
Instead of speaking when question number is 1:
if the topic understood matches the text "temple" begin;
  say "The dungeon master says, 'Excellent.'";
  now question number is 2;
  now tries left is 4;
  award 5 points;
else if tries left is 0;
  say "The dungeon master, obviously disappointed in your lack of knowledge, shakes his head and mumbles 'I guess they'll let anyone in the Dungeon these days'.  With
that, he departs.";
  remove the dungeon master from play;
else if tries left is 1;
  say "The dungeon master says, 'You are wrong.  You have one more chance.'";
  now tries left are 0;
else;
  say "The dungeon master says, 'You are wrong.  You have [tries left in words] more chances.'";
  decrease tries left by 1;
end if.
Instead of speaking when question number is 2:
if the topic understood matches the text "forest" begin;
  say "The dungeon master says, 'Excellent.'";
  now question number is 3;
  now tries left are 4;
  award 5 points;
else if tries left is 0;
  say "The dungeon master, obviously disappointed in your lack of knowledge, shakes his head and mumbles 'I guess they'll let anyone in the Dungeon these days'.  With
that, he departs.";
  remove the dungeon master from play;
else if tries left is 1;
  say "The dungeon master says, 'You are wrong.  You have one more chance.'";
  now tries left are 0;
else;
  say "The dungeon master says, 'You are wrong.  You have [tries left in words] more chances.'";
  decrease tries left by 1;
end if.
Instead of speaking when question number is 3:
if the topic understood matches the text "touch" or the topic understood matches the text "rub" begin;
say "The dungeon master, obviously pleased, says 'You are indeed a
master of lore. I am proud to be at your service.'  The massive
wooden door swings open, and the master motions for you to enter.";
award 5 points;
now the large wooden door is open;
now the large wooden door is unlocked;
now follow is true;
else if tries left is 0;
  say "The dungeon master, obviously disappointed in your lack of knowledge, shakes his head and mumbles 'I guess they'll let anyone in the Dungeon these days'.  With
that, he departs.";
  remove the dungeon master from play;
else if tries left is 1;
  say "The dungeon master says, 'You are wrong.  You have one more chance.'";
  now tries left are 0;
else;
  say "The dungeon master says, 'You are wrong.  You have [tries left in words] more chances.'";
  decrease tries left by 1;
end if.
The later appearance of the master is "The dungeon master is quietly leaning on his staff here."
Follow is a truth state that varies.  Follow is false.
Tries left is a number that varies.  Tries left is usually 4.
Every turn:
let aaa be the rval of the location;
award aaa points;
now the rval of the location is 0;
 if the thief has been unconsious for four turns and the player can see the thief, say "The thief returns to consiousness.";
if the engrossed of the thief has been true for two turn, now the engrossed of the thief is false;
if the player has been in Cage for the tenth turn begin;
 say "Time passes...and you die from some obscure poisoning.";
 end the game in death;
end if;
 if the player is in InsideMirror and mirror open has been true for three turns begin;
  say "The mirror quietly swings shut.";
  now mirror open is false;
 end if;
if question number is 1 and question number was not 1 begin;
  say  "The booming voice asks: From which room can one enter the robber's hideaway without passing through the cyclops room?";
else if question number is 2 and question number was not 2;
  say "The booming voice asks: Besides the Temple, to which room is it possible to go from the Altar?";
else if question number is 3 and question number was not 3;
   say "The booming voice asks: What can be done to the Mirror that is useful?";
end if;
if the thief carries the jewel-encrusted egg, now the jewel-encrusted egg is open;
if the player is in Treasure Room and the thief is not in Treasure Room and the thief is on-stage begin;
  say "You hear a scream of anguish as you violate the robber's hideaway.  Using passages unknown to you, he rushes to its defense.";
  move the thief to Treasure Room;
end if;
if the thief is on-stage begin;
if the thief cannot see the player, try the thief escaping;
if the thief is not in Treasure Room and the player is in the holder of the thief begin;
if the thief can see a visible valuble thing which is not held by the thief begin;
  say "A seedy-looking individual with a large bag just wandered through the room.  On the way through, he quietly abstracted all valuables from the room and from your possession, mumbling something about 'Doing unto others before...'";
  now every valuble thing had by the player is had by the thief;
  now every visible valuble thing in the location is had by the thief;
  try the thief escaping;
else;
  say "A seedy-looking individual with a large bag just wandered through the room.  Finding nothing of value, he left disgruntled.";
end if;
  try the thief escaping;
end if;
end if;
  if follow is true and the player is not in the holder of the dungeon master begin;
    say "The dungeon master follows you.";
    move the dungeon master to the holder of the player;
  end if;
  decrease mrint by 1;
  if mrint is 0 begin;
    now mirror open is true;
    if the player can see the redbutton, say "The button pops back to its original position.";
   now the depressed of the redbutton is false;
  end if;
if the player has been in Vault for exactly 4 turns begin; say "A metallic voice says, 'Hello, Intruder!  Your unauthorized presence in the vault area of the Bank of Zork has set off all sorts of nasty surprises, several of which seem to have been fatal.  This message brought to you by the Frobozz Magic Alarm Company.'"; end the game in death; end if;
if gnome flag is true and the player has been in Small Room for exactly 4 turns begin; say "An epicene Gnome of Zurich, wearing a three-piece suit and carrying a
 safety deposit box, materializes in the room.  'You seem to have
 forgotten to deposit your valuables,' he says, tapping the lid of the
 box impatiently.  'We don't usually allow customers to use the boxes
 here, but we can make this ONE exception, I suppose...'  He looks
 askance at you over his wire-rimmed bifocals."; move the Gnome of Zurich to Small Room; now gnome flag is false; end if;
if the player is in Grating Room, now the grating is revealed;
if the location is the bad place and the brick is off-stage, foo;
if the number of moves from the location to the bad place is 1 and the brick is off-stage, foo;
if squish clock is 0 begin;
now the description of the bad place is "[pizza]";
if the player is in the bad place begin;
  say "The room trembles and 50,000 pounds of rock fall on you, turning you into a pancake.  [if the player is outdoors]Meteors, no doubt.[end if]";
  end the game in death;
else;
  say "You may recall your recent explosion.  Well, probably as a result of
that, you hear an ominous rumbling, as if one of the rooms in the
dungeon has collapsed.";
   [* OK, this sort of doesn't make sense if the player is outside]
end if;
end if;
decrease squish clock by 1;
decrease ledge clock by 1;
if ledge clock is 3, say "You may recall your recent explosion.  Well, probably as a result of that, you hear an ominous rumbling, as if one of the rooms in the
dungeon has collapsed.";
if ledge clock is 0 begin;
  if the player is in the basket and the basket is in Wide Ledge begin;
    if the braided wire is attached to the tiny hook begin;
      say "The ledge collapses, probably as a result of the explosion.  A large
chunk of it, which is attached to the hook, drags you down to the
ground.  Fatally.";
      end the game in death;
    else;
       say "The ledge collapses, leaving you with no place to land.";
       move the basket to Volcano Near WideLedge;
       try looking;
    end if;
  else if the player is in Wide Ledge or the player is in Dusty Room;
    say "The force of the explosion has caused the ledge to collapse
belatedly.";
    end the game in death;
  else;
    say "The ledge collapses, giving you a narrow escape.";
  end if;
end if;
if wire clock is 0 begin;
  if the player can see the brick begin;
      say "Now you've done it.  It seems that the brick has other properties
than weight, namely the ability to blow you to smithereens.";
  remove the brick from play;
  end the game in death;
  else;
   say "There is an explosion nearby.";
   if the brick is in the oblong hole begin;
       now ledge clock is 5;
       now the rusty box is open;
       move the crown to Dusty Room;
       move the note card to Dusty Room;
    else if the brick is in Dusty Room;
       now ledge clock is 5;
   else;
     now squish clock is 2;
     now the bad place is the location of the brick;
   end if;
   remove the brick from play;
 end if;
end if;
decrease wire clock by 1;
if burn interrupt is 0 begin;
  if something visible is in the receptacle, say "You notice that the [list of flaming things in the receptacle] has burned out, and that the cloth bag starts to deflate.";
  let the thingy be a random flaming  thing in the receptacle;
  now the thingy is not flaming;
  remove the thingy from play;
end if;
decrease burn interrupt by 1;
now every thing which is flaming is lit;
if something inflammable (called the thingy) is non-flaming, now the thingy is unlit;
if the matchbook is non-flaming, now the matchbook is unlit;
if the pair of candles is non-flaming, now the pair of candles is unlit;
if match tick is greater than 0, decrease match tick by 1;
if match tick is 0 begin;
  say "The match has gone out.";
  now match tick is -1;
  now the matchbook is non-flaming;
end if;
  if the cure wait of the player is greater than 0, decrease the cure wait of the player by 1;
  if the cure wait of the player is 0, now the wounds of the player are 0;
  if the wounds of the player is greater than 4 begin;
    say "It appears that blow was too much for you.  I'm afraid you are dead.";
    now the wounds of the player are 4;
    end the game in death;
  end if;
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
    now the battery-powered brass lantern is unlit;
  end if;
  end if;
if the player has been in Living Room for the second turn and brochure flag is 1 begin;
  say "There is a knocking sound from the front of the house.";
  now brochure flag is 2;
  move the free brochure to the mailbox;
end if;
if the number of visible valuble things in the trophy case is 32 and the number of visible valuble things in the trophy case was not 32, say "Suddenly a sinister wraithlike figure, cloaked and hooded, appears
seeming to float in the air before you.  In a low, almost inaudible
voice he says, 'I welcome you to the ranks of the chosen of Zork. You
have persisted through many trials and tests, and have overcome them
all, dispelling the darkness of ignorance and danger.  One such as
yourself is fit to join even the Implementers!'  He then raises his
oaken staff, and chuckling, drifts away like a wisp of smoke, his
laughter fading in the distance.".
The rval of Narrow Corridor is 20.
North of Narrow Corridor is a room called South Corridor.  The description of South Corridor is "This is an east-west corridor which turns north at its eastern and western ends.  The walls of the corridor are marble.  An additional passage leads south at the center of the corridor."
West of South Corridor is south of a room called West Corridor.  The description of West Corridor is "This is a corridor with polished marble walls.  The corridor
widens into larger areas as it turns east at its northern and
southern ends."
East of South corridor is south of a room called East Corridor.  The description of East Corridor is "This is a corridor with polished marble walls.  The corridor widens into larger areas as it turns west at its northern and southern ends."
North of West Corridor is a room called North Corridor.  The description of North Corridor is "This is a large east-west corridor which opens out to a northern
parapet at its center.  You can see flames and smoke as you peer
towards the parapet.  The corridor turns south at its east and west
ends, and due south is a massive wooden door.  In the door is a small
window barred with iron.  The door is [if the prison cell door is open]open[otherwise]closed.[end if]".
North of East Corridor is North Corridor.
North of North Corridor is a room called Parapet.  The description of Parapet is "You are standing behind a stone retaining wall which rims a large parapet overlooking a fiery pit.  It is difficult to see through the smoke and flame which fills the pit, but it seems to be more or less bottomless.  It also extends upward out of sight.  The pit itself is of roughly dressed stone and circular in shape.  It is about two hundred feet in diameter.  The flames generate considerable heat, so it is rather uncomfortable standing here.
There is an object here which looks like a sundial.  On it are an indicator arrow and (in the center) a large button.  On the face of the dial are numbers 'one' through 'eight'.  The indicator points to the number [dial number in words]."
Dial number is a number that varies. Dial number is 1.
Persuasion rule for asking the dungeon master to try doing something: persuasion succeeds.
A large button is in Parapet.  The large button is scenery.
Persuasion rule for asking the dungeon master to try going:
say "'I prefer to stay where I am, thank you.'".
A dial is in Parapet. The dial is scenery. Understand "sun dial" and "sundial" and "sun-dial" and "indicator" and "arrow" as the dial.
Check taking the dungeon master: say "'I'm willing to accompany you, but not ride in your pocket!'" instead.
Instead of asking the dungeon master to try doing something:
  say "'If you wish,' he replies."; continue the action.
The prison cell door is a door.  The prison cell door is closed and openable.  The prison cell door is south of North Corridor.  South of the prison cell door is a room called Prison Cell.  
The description of Prison Cell is "You are in a featureless prison cell.  You can see [if the prison cell door is open]the east-west corridor outside the open wooden door in front of you.[otherwise]only the flames and smoke of the pit out the small window in a closed door in front of you.[end if]."
PCell is a room.  The description of PCell is "You are in a featureless prison cell.  Its wooden door is securely fastened, and you can see only the flames and smoke of the pit out the small window." The printed name of PCell is "Prison Cell".
The prison cell door is scenery.
NCell is a room. The description of NCell is "You are in a featureless prison cell.  Its wooden door is securely fastened, and you can see only the flames and smoke of the pit out its small window.  On the other side of the cell is a bronze door which seems to be [if the bronze door is open]open[otherwise]closed[end if].". The printed name of NCell is "Prison Cell".
Check going inside while the location is NCell: try entering the bronze door instead.
The bronze door is a door.  The bronze door is closed and openable.  
The bronze door is scenery.  The bronze door is south of NCell.  South of the Bronze Door is a room called Treasury of Zork. The description of Treasury of Zork is 
"[5 spaces]This is a room of large size, richly appointed and decorated
in a style that bespeaks exquisite taste.  To judge from its
contents, it is the ultimate storehouse of the treasures of Zork.[paragraph break]
[5 spaces]There are chests here containing precious jewels, mountains of
zorkmids, rare paintings, ancient statuary, and beguiling curios.[paragraph break]
[5 spaces]In one corner of the room is a bookcase boasting such volumes as
'The History of the Great Underground Empire,' 'The Lives of the
Twelve Flatheads,' 'The Wisdom of the Implementors,' and other
informative and inspiring works.[paragraph break]
[5 spaces]On one wall is a completely annotated map of the Great Underground
Empire, showing points of interest, various troves of treasure, and
indicating the locations of several superior scenic views.[paragraph break]
[5 spaces]On a desk at the far end of the room may be found stock
certificates representing a controlling interest in FrobozzCo
International, the multinational conglomerate and parent company of
the Frobozz Magic Boat Co., etc.[paragraph break]".
Last every turn rule:
if the player is in Treasury of Zork begin;
  award 35 points;
  say "[5 spaces]As you gleefully examine your new-found riches, the Dungeon
Master himself materializes beside you, and says, 'Now that you have solved all the mysteries of the Dungeon, it is time for you to assume your rightly-earned place in the scheme of things.  Long have I waited for one capable of releasing me from my burden!'  He taps you lightly on the head with his staff, mumbling a few well-chosen spells,
and you feel yourself changing, growing older and more stooped.  For a moment there are two identical mages staring at each other among the treasure, then you watch as your counterpart dissolves into a mist and disappears, a sardonic grin on his face.";
  end the game in victory;
end if.
After deciding the scope of the player: 
if the player is in Prison Cell, place the dungeon master in scope.
A thing has a number called cell number.  The cell number of a thing is usually 0.
Every turn when something is in Prison Cell:
repeat with thingy running through things in Prison Cell begin;
  now the cell number of the thingy is current cell;
end repeat.

Limbo is a room.
Current cell is a number that varies.  Current cell is 1.
Instead of someone pushing the large button:
 say "Click.";
 now the current cell is dial number;
 if dial number is 6 and the player is in Prison Cell, move the player to NCell;
 if the player is in Prison Cell, move the player to PCell;
 now every thing in Prison Cell is in Limbo;
 if the cell number of the player is dial number and the player is in PCell or the player is in NCell, move the player to Prison Cell;
 repeat with thingy running through things in Limbo begin;
 if the cell number of the thingy is dial number, move the thingy to Prison Cell;
 if the player is in PCell and the cell number of the thingy is the cell number of the player, move the thingy to PCell;
 if the player is in NCell and the cell number of the thingy is the cell number of the player, move the thingy to NCell;
end repeat;
repeat with thingy running through things in NCell begin;
  if cell number of the thingy is dial number, move the thingy to Prison Cell;
end repeat;
 rule succeeds.
Check going inside while the location is Hallway4: try entering the large wooden door instead.
Include (- [ XOR a b; return (a | b) & (~(a & b)); ];  -). [* Inform does not have a bitwise exclusive or built in, so we make one]



