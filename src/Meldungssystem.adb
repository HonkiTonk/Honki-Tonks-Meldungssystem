with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with MeldungSchreiben;

package body Meldungssystem is

   procedure Logik
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      MeldungSchreiben.MeldungSchreiben (MeldungExtern => Logikfehler & FehlermeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Logikfehler & FehlermeldungExtern);
            raise LogikStopp;
            
         when False =>
            null;
      end case;
      
   end Logik;
   
   
   
   procedure Grafik
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
         
      MeldungSchreiben.MeldungSchreiben (MeldungExtern => Grafikfehler & FehlermeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Grafikfehler & FehlermeldungExtern);
            raise GrafikStopp;
            
         when False =>
            null;
      end case;
      
   end Grafik;
   
   
   
   procedure Musik
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      MeldungSchreiben.MeldungSchreiben (MeldungExtern => Musikfehler & FehlermeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Musikfehler & FehlermeldungExtern);
            raise MusikStopp;
            
         when False =>
            null;
      end case;
      
   end Musik;
   
   
   
   procedure Sound
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      MeldungSchreiben.MeldungSchreiben (MeldungExtern => Soundfehler & FehlermeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => Soundfehler & FehlermeldungExtern);
            raise SoundStopp;
            
         when False =>
            null;
      end case;
      
   end Sound;
   
   
   
   procedure Sonstiges
     (FehlermeldungExtern : in Wide_Wide_String;
      FehlerWarnungExtern : in Boolean)
   is begin
      
      MeldungSchreiben.MeldungSchreiben (MeldungExtern => SonstigeFehler & FehlermeldungExtern);
      
      case
        FehlerWarnungExtern
      is
         when True =>
            Put_Line (Item => SonstigeFehler & FehlermeldungExtern);
            raise SonstigesStopp;
            
         when False =>
            null;
      end case;
      
   end Sonstiges;

end Meldungssystem;