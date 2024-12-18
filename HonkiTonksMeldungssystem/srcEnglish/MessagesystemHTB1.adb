with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with WriteMessageHTB1;
with MessageVariablesHTB1;

package body MessagesystemHTB1 is

   procedure Logic
     (MessageExternal : in Wide_Wide_String)
   is begin
      
      WriteMessageHTB1.Message (MessageExternal => LogicError & MessageExternal);
      
      case
        MessageVariablesHTB1.ErrorMessageRequest
      is
         when True =>
            Put_Line (Item => LogicError & MessageExternal);
            raise LogicStop;
            
         when False =>
            null;
      end case;
      
   end Logic;
   
   
   
   procedure Graphic
     (MessageExternal : in Wide_Wide_String)
   is begin
         
      WriteMessageHTB1.Message (MessageExternal => GraphicError & MessageExternal);
      
      case
        MessageVariablesHTB1.ErrorMessageRequest
      is
         when True =>
            Put_Line (Item => GraphicError & MessageExternal);
            raise GraphicStop;
            
         when False =>
            null;
      end case;
      
   end Graphic;
   
   
   
   procedure Music
     (MessageExternal : in Wide_Wide_String)
   is begin
      
      WriteMessageHTB1.Message (MessageExternal => MusicError & MessageExternal);
      
      case
        MessageVariablesHTB1.ErrorMessageRequest
      is
         when True =>
            Put_Line (Item => MusicError & MessageExternal);
            raise MusicStop;
            
         when False =>
            null;
      end case;
      
   end Music;
   
   
   
   procedure Sound
     (MessageExternal : in Wide_Wide_String)
   is begin
      
      WriteMessageHTB1.Message (MessageExternal => SoundError & MessageExternal);
      
      case
        MessageVariablesHTB1.ErrorMessageRequest
      is
         when True =>
            Put_Line (Item => SoundError & MessageExternal);
            raise SoundStop;
            
         when False =>
            null;
      end case;
      
   end Sound;
   
   
   
   procedure Miscellaneous
     (MessageExternal : in Wide_Wide_String)
   is begin
      
      WriteMessageHTB1.Message (MessageExternal => MiscellaneousError & MessageExternal);
      
      case
        MessageVariablesHTB1.ErrorMessageRequest
      is
         when True =>
            Put_Line (Item => MiscellaneousError & MessageExternal);
            raise MiscellaneousStop;
            
         when False =>
            null;
      end case;
      
   end Miscellaneous;

end MessagesystemHTB1;
