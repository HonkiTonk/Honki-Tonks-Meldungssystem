private with Ada.Wide_Wide_Text_IO;

package HTMWriteMessage is
   pragma Elaborate_Body;

   procedure Message
     (MessageExternal : in Wide_Wide_String)
     with
       Pre => (
                 MessageExternal'Length > 0
              );
   
   procedure MessageASCII
     (MessageExternal : in String)
     with
       Pre => (
                 MessageExternal'Length > 0
              );
   
private
   use Ada.Wide_Wide_Text_IO;
   
   Messages : constant String (1 .. 8) := "Messages";
   FileForm : constant String (1 .. 6) := "WCEM=8";
   
   WaitingTime : constant Duration := 0.002;
      
   FileMessage : File_Type;

end HTMWriteMessage;
