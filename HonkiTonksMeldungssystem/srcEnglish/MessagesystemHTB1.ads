package MessagesystemHTB1 is
   pragma Elaborate_Body;
   
   procedure Logic
     (MessageExternal : in Wide_Wide_String)
     with
       Pre => (
                 MessageExternal'Length > 0
              );
            
   procedure Graphic
     (MessageExternal : in Wide_Wide_String)
     with
       Pre => (
                 MessageExternal'Length > 0
              );
   
   procedure Music
     (MessageExternal : in Wide_Wide_String)
     with
       Pre => (
                 MessageExternal'Length > 0
              );
   
   procedure Sound
     (MessageExternal : in Wide_Wide_String)
     with
       Pre => (
                 MessageExternal'Length > 0
              );
   
   procedure Miscellaneous
     (MessageExternal : in Wide_Wide_String)
     with
       Pre => (
                 MessageExternal'Length > 0
              );
   
private
   
   LogicError : constant Wide_Wide_String (1 .. 13) := "Logic error: ";
   GraphicError : constant Wide_Wide_String (1 .. 15) := "Graphic error: ";
   MusicError : constant Wide_Wide_String (1 .. 13) := "Music error: ";
   SoundError : constant Wide_Wide_String (1 .. 13) := "Sound error: ";
   MiscellaneousError : constant Wide_Wide_String (1 .. 21) := "Miscellaneous Error: ";
   
   LogicStop : exception;
   GraphicStop : exception;
   MusicStop : exception;
   SoundStop : exception;
   MiscellaneousStop : exception;

end MessagesystemHTB1;
