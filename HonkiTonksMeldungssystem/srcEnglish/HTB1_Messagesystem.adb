with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with HTB1_WriteMessage;

package body HTB1_Messagesystem is

   procedure Logic
     (MessageExternal : in Wide_Wide_String;
      ErrorWarningExternal : in Boolean)
   is begin
      
      HTB1_WriteMessage.Message (MessageExternal => LogicError & MessageExternal);
      
      case
        ErrorWarningExternal
      is
         when True =>
            Put_Line (Item => LogicError & MessageExternal);
            raise LogicStop;
            
         when False =>
            null;
      end case;
      
   end Logic;
   
   
   
   procedure Graphic
     (MessageExternal : in Wide_Wide_String;
      ErrorWarningExternal : in Boolean)
   is begin
         
      HTB1_WriteMessage.Message (MessageExternal => GraphicError & MessageExternal);
      
      case
        ErrorWarningExternal
      is
         when True =>
            Put_Line (Item => GraphicError & MessageExternal);
            raise GraphicStop;
            
         when False =>
            null;
      end case;
      
   end Graphic;
   
   
   
   procedure Music
     (MessageExternal : in Wide_Wide_String;
      ErrorWarningExternal : in Boolean)
   is begin
      
      HTB1_WriteMessage.Message (MessageExternal => MusicError & MessageExternal);
      
      case
        ErrorWarningExternal
      is
         when True =>
            Put_Line (Item => MusicError & MessageExternal);
            raise MusicStop;
            
         when False =>
            null;
      end case;
      
   end Music;
   
   
   
   procedure Sound
     (MessageExternal : in Wide_Wide_String;
      ErrorWarningExternal : in Boolean)
   is begin
      
      HTB1_WriteMessage.Message (MessageExternal => SoundError & MessageExternal);
      
      case
        ErrorWarningExternal
      is
         when True =>
            Put_Line (Item => SoundError & MessageExternal);
            raise SoundStop;
            
         when False =>
            null;
      end case;
      
   end Sound;
   
   
   
   procedure Miscellaneous
     (MessageExternal : in Wide_Wide_String;
      ErrorWarningExternal : in Boolean)
   is begin
      
      HTB1_WriteMessage.Message (MessageExternal => MiscellaneousError & MessageExternal);
      
      case
        ErrorWarningExternal
      is
         when True =>
            Put_Line (Item => MiscellaneousError & MessageExternal);
            raise MiscellaneousStop;
            
         when False =>
            null;
      end case;
      
   end Miscellaneous;

end HTB1_Messagesystem;
