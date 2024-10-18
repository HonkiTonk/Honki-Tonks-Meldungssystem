with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with HTB1_MeldungSchreiben;

package body HTB1_Meldungssystem is

   procedure Logik
     (MeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      HTB1_MeldungSchreiben.Meldung (MeldungExtern => Logikfehler & MeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Logikfehler & MeldungExtern);
            raise LogikStopp;
            
         when False =>
            null;
      end case;
      
   end Logik;
   
   
   
   procedure Grafik
     (MeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
         
      HTB1_MeldungSchreiben.Meldung (MeldungExtern => Grafikfehler & MeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Grafikfehler & MeldungExtern);
            raise GrafikStopp;
            
         when False =>
            null;
      end case;
      
   end Grafik;
   
   
   
   procedure Musik
     (MeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      HTB1_MeldungSchreiben.Meldung (MeldungExtern => Musikfehler & MeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Musikfehler & MeldungExtern);
            raise MusikStopp;
            
         when False =>
            null;
      end case;
      
   end Musik;
   
   
   
   procedure Sound
     (MeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      HTB1_MeldungSchreiben.Meldung (MeldungExtern => Soundfehler & MeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Soundfehler & MeldungExtern);
            raise SoundStopp;
            
         when False =>
            null;
      end case;
      
   end Sound;
   
   
   
   procedure Sonstiges
     (MeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      HTB1_MeldungSchreiben.Meldung (MeldungExtern => SonstigeFehler & MeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => SonstigeFehler & MeldungExtern);
            raise SonstigesStopp;
            
         when False =>
            null;
      end case;
      
   end Sonstiges;

end HTB1_Meldungssystem;