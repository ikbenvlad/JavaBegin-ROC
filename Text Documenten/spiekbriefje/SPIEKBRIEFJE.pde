/*
print en println:
print en println zijn beide manieren waarop jij een zin kan sturen naar de console/terminal.
println gebruikt dan een enter na dat de zinn geschreven is.

VOORBEELD:
println("hallo.");
print("mijn naam is Vlad, ");
print("en ik ben 16");

geeft:

hallo.
Miin naam is Vlad, en ik ben 16
*/

/*
size:
size(,); geeft aan hoe groot het scherm van de debug menu wordt (rechtsboven naast "java").
het maakt gebruik van de x en y coordinaten, dus hoe breed en lang het is.

VOORBEELD:
size(200,200);

geeft:

de debug scherm heeft beide een x en een y van 200.
*/

/*
text:
text("",,); geeft een zin in het debug scherm weer.
het maakt ook gebruik van de x en y coordinaten, waarbij jij kan bepalen waar de text zich plaatsvindt.

VOORBEELD:
size(200,200);
text("hallo",100,100);

geeft:

text, in een 200 bij 200 scherm, waarbij de text op coordinaten 100,100 ligt.
*/

/*
background en fill:
background(,,); kan de kleur van het debug scherm bepalen. Dit doe je door middel van de RGB waardes op te schrijven.
RGB staat voor Red Green Blue en gaat van 0 tot 255.

fill(,,); zorgt ervoor dat een text("",,); of een vorm kleur krijgt.
je gebruikt hiervoor ook de RGB waardes.

VOORBEELD:
size(200,200);
background(255,0,0);

fill(150,150,150);
text("deze text is grijs",100,100);

geeft:

een 200 bij 200 scherm met een rode achtergrond, waarbij "deze text is grijs" een grijze kleur heeft op de locatie (100,100).
*/

/*
stroke, strokeWeight en line:
stroke(,,); geeft de kleur van een line(,,,); weer.
Het gebruikt hiervoor ook de RGB waardes.

strokeWeight(); geeft de dikte van een line(,,,); weer.
dit heeft maar 1 waarde, een normale getal.

line(,,,); is interessant, omdat het 4 coordinaten gebruikt.
X1, Y1, X2 en Y2.
X1 en Y1 zijn voor het beginpunt van de lijn, en X2 en Y2 voor het eind.

VOORBEELD:
size(200,200);

stroke(0,255,0);
strokeWeight(5);
line(10,10,190,190);

geeft:

een groene lijn met een dikte van 5 waarbij het begint bij (10,10) en eindigt bij (190,190).
*/

/*
rect en noFill:
rect(,,,); is kort voor rectangle, rechthoek.
Het gebruikt de waardes x,y,w,h. w en h zijn width (breedte) en height (hoogte).

noFill(); betekent eigenlijk dat het de vorm niet invult met een kleur.

VOORBEELD:
size(200,200);

noFill();
rect(40,40,120,120);

geeft:

een vierhoek zonder fulling met een 120 bij 120 lengte en breedte.
*/

/*
ellipse:
ellipse(,,,); gebruikt dezelfde waardes als rect(,,,);
je kan er cirkels en ovalen mee maken.

VOORBEELD:
size(200,200);

fill(0,0,255);
ellipse(100,100,120,120);

geeft:

een blauwe cirkel met een diameter van 120 (radius van 60).
*/
