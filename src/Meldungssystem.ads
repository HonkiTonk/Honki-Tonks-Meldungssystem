package Meldungssystem is
   pragma Elaborate_Body;
   
   procedure Logik
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
     with
       Pre => (
                 FehlermeldungExtern'Length > 0
              );
            
   procedure Grafik
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
     with
       Pre => (
                 FehlermeldungExtern'Length > 0
              );
   
   procedure Musik
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
     with
       Pre => (
                 FehlermeldungExtern'Length > 0
              );
   
   procedure Sound
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
     with
       Pre => (
                 FehlermeldungExtern'Length > 0
              );
   
   procedure Sonstiges
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
     with
       Pre => (
                 FehlermeldungExtern'Length > 0
              );
   
private
   
   Logikfehler : constant Wide_Wide_String (1 .. 13) := "Logikfehler: ";
   Grafikfehler : constant Wide_Wide_String (1 .. 14) := "Grafikfehler: ";
   Musikfehler : constant Wide_Wide_String (1 .. 13) := "Musikfehler: ";
   Soundfehler : constant Wide_Wide_String (1 .. 13) := "Soundfehler: ";
   SonstigeFehler : constant Wide_Wide_String (1 .. 16) := "SonstigeFehler: ";
   
   LogikStopp : exception;
   GrafikStopp : exception;
   MusikStopp : exception;
   SoundStopp : exception;
   SonstigesStopp : exception;

end Meldungssystem;
