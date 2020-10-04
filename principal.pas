program principal;
var nomEpreuve : String;

procedure affichageTexte (nomEpreuve : string);
var fichier : Text;
    mot, nomFichier : String;

begin
  nomFichier := nomEpreuve +'.txt';
  assign (fichier, nomFichier );
  reset (fichier);
  while not (eof (fichier)) do
    begin
      read (fichier, mot);
      write (mot);
    end;
  close (fichier);

end;

begin
  nomEpreuve := 'aa';
  affichageTexte (nomEpreuve);
end.
