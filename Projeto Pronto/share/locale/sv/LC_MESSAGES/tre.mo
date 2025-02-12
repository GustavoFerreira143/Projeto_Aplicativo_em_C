��            )   �      �     �     �  /   �  5   �  !   1     S     k     �     �     �     �     �     �     �     �            u     7   �    �     �    �     �  &   	     0     M     g  (   u  �   �  D  �     �     �  6     4   >     s     �     �     �     �     �       
   '  
   2  
   =     H     Q     ^  u   m  9   �  s       �  !  �     �  (   �          '  
   E  .   P                                                                                         
                                                 	    %s: invalid option --%s
 (standard input) Cannot use -B when reading from standard input. Copyright (c) 2001-2009 Ville Laurikari <vl@iki.fi>.
 Error in record delimiter pattern Error in search pattern Error reading from %s: %s
 Invalid back reference Invalid character range Invalid contents of {} Invalid regexp Missing ')' Missing ']' Missing '}' No error No match Out of memory PATTERN is a POSIX extended regular expression (ERE) with the TRE extensions.
See tre(7) for a complete description.
 Record delimiter pattern must not match an empty string Regexp selection and interpretation:
  -e, --regexp=PATTERN	    use PATTERN as a regular expression
  -i, --ignore-case	    ignore case distinctions
  -k, --literal		    PATTERN is a literal string
  -w, --word-regexp	    force PATTERN to match only whole words

Approximate matching settings:
  -D, --delete-cost=NUM	    set cost of missing characters
  -I, --insert-cost=NUM	    set cost of extra characters
  -S, --substitute-cost=NUM set cost of wrong characters
  -E, --max-errors=NUM	    select records that have at most NUM errors
  -#			    select records that have at most # errors (# is a
			    digit between 0 and 9)

Miscellaneous:
  -d, --delimiter=PATTERN   set the record delimiter regular expression
  -v, --invert-match	    select non-matching records
  -V, --version		    print version information and exit
  -y, --nothing		    does nothing (for compatibility with the non-free
			    agrep program)
      --help		    display this help and exit

Output control:
  -B, --best-match	    only output records with least errors
  -c, --count		    only print a count of matching records per FILE
  -h, --no-filename	    suppress the prefixing filename on output
  -H, --with-filename	    print the filename for each match
  -l, --files-with-matches  only print FILE names containing matches
  -M, --delimiter-after     print record delimiter after record if -d is used
  -n, --record-number	    print record number with output
      --line-number         same as -n
  -q, --quiet, --silent	    suppress all normal output
  -s, --show-cost	    print match cost with output
      --colour, --color     use markers to distinguish the matching strings
      --show-position       prefix each output record with start and end
                            position of the first match within the record
 Report bugs to:  Searches for approximate matches of PATTERN in each FILE or standard input.
Example: `%s -2 optimize foo.txt' outputs all lines in file `foo.txt' that
match "optimize" within two errors.  E.g. lines which contain "optimise",
"optmise", and "opitmize" all match.
 Trailing backslash Try `%s --help' for more information.
 Unknown character class name Unknown collating element Unknown error Usage: %s [OPTION]... PATTERN [FILE]...
 With no FILE, or when FILE is -, reads standard input.  If less than two
FILEs are given, -h is assumed.  Exit status is 0 if a match is found, 1 for
no match, and 2 if there were errors.  If -E or -# is not specified, only
exact matches are selected.
 Project-Id-Version: tre
Report-Msgid-Bugs-To: tre-general@lists.laurikari.net
PO-Revision-Date: 2006-05-23 21:27+0100
Last-Translator: Daniel Nylander <po@danielnylander.se>
Language-Team: Swedish <tp-sv@listor.tp-sv.se>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 %s: ogiltig flagga --%s
 (standard in) Kan inte använda -B vid inläsning från standard in. Copyright © 2001-2009 Ville Laurikari <vl@iki.fi>.
 Fel i postavgränsande mönster Fel i sökmönster Fel vid läsning från %s: %s
 Ogiltig bakåtreferens Ogiltigt teckenomfång Ogiltigt innehåll i {} Ogiltigt reguljärt uttryck Saknar ")" Saknar "]" Saknar "}" Inga fel Ingen träff Slut på minne MÖNSTER är ett POSIX-utökat reguljärt uttryck (ERE) med TRE-utökningar.
Se tre(7) för en komplett beskrivning.
 Postavgränsande mönster får inte matcha en tom sträng Val av reguljära uttryck och tolkning:
  -e, --regexp=MÖNSTER	    använd MÖNSTER som ett reguljärt uttryck
  -i, --ignore-case	    ignorera skillnader i skiftläge
  -k, --literal		    MÖNSTER är en exakt sträng
  -w, --word-regexp	    tvinga MÖNSTER att endast matcha hela ord

Inställningar för ungefärliga sökträffar:
  -D, --delete-cost=ANTAL   ställ in kostnad för saknade tecken
  -I, --insert-cost=ANTAL   ställ in kostnad för extra tecken
  -S, --substitute-cost=ANTAL ställ in kostnad för felaktiga tecken
  -E, --max-errors=ANTAL    välj poster som har som mest ANTAL fel
  -#			    välj poster som har som mest # fel (# är en
			    siffra mellan 0 och 9)

Diverse:
  -d, --delimiter=MÖNSTER   ställ in reguljärt uttryck som postavgränsare
  -v, --invert-match	    välj icke-matchande poster
  -V, --version		    skriv ut versionsinformation och avsluta
  -y, --nothing		    gör ingenting (för kompatibilitet med det icke-fria
			    programmet agrep)
      --help		    visa denna hjälp och avsluta

Kontroll av utdata:
  -B, --best-match	    skriv endast ut poster med minst fel
  -c, --count		    skriv endast ut ett antal matchande poster per FIL
  -h, --no-filename	    ta bort inledande filnamn vid utskrift
  -H, --with-filename	    skriv ut filnamet för varje träff
  -l, --files-with-matches  skriv endast ut FILnamn som innehåller träffar
  -M, --delimiter-after     skriv ut postavgränsare efter post om -d används
  -n, --record-number	    skriv ut postnummer med utdata
      --line-number         samma som -n
  -q, --quiet, --silent	    undvik all normal utskrift
  -s, --show-cost	    skriv ut kostnad för matchning med utdata
      --colour, --color     använd markörer för att urskilja matchande strängar
      --show-position       skriv ut start- och slutposition för varje
			    utskriven post för den första träffen inom posten
 Rapportera fel till:  Söker efter ungefärliga träffar på MÖNSTER i varje FIL eller standard in.
Exempel: "%s -2 optimera foo.txt" skriver ut alla rader i filen "foo.txt"
som matchar "optimera" med maximalt två fel.  T.ex. rader som innehåller
"optimera", "optmera", and "opitmera" är alla sökträffar.
 Avslutande omvänt snedstreck Prova "%s --help" för mer information.
 Okänt teckenklassnamn Okänt kollationeringselement Okänt fel Användning: %s [FLAGGA]... MÖNSTER [FIL]...
 Utan FIL eller när FIL är - så läses standard in.  Om mindre än två FIL:er
anges så används -h.  Avslutningsstatusen är 0 om träff hittas, 1 om inget
hittas och 2 om fel inträffar.  Om varken -E eller -# anges så väljs endast
exakta träffar.
 