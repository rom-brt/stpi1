program chifoumi;

Var i : Real;
    choixOrdi, choixJoueur : String;
    victoire : boolean;

begin
randomize;
writeln('alors que vous sortez tranquillement de l''INSA, un jeune sanglier sauvage vous propose un duel de chifoumi');

repeat
victoire:=false;
choixOrdi:='pierre';
i := random(3);

if i=1 then
  choixOrdi:='feuille'
  else if i=2 then
    choixOrdi:='ciseau';

repeat
  writeln('pierre, feuille ou ciseau?');
  write('vous: ');
  readln(choixJoueur);
until (choixJoueur='pierre') or (choixJoueur='feuille') or (choixJoueur='ciseau');
writeln('le sanglier: ',choixOrdi);

if (choixJoueur='pierre') and (choixOrdi='ciseau') or (choixJoueur='feuille') and (choixOrdi='pierre') or (choixJoueur='ciseau') and (choixOrdi='feuille') then
  victoire:=true;

until choixOrdi<>choixJoueur;

if victoire then
  writeln('vous avez gagne, le sanglier vous laisse passer!')
  else writeln('dommage vous avez perdu');
end.
