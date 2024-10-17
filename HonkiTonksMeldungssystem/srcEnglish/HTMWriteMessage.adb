with Ada.Directories; use Ada.Directories;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Calendar; use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;
with Ada.Strings.UTF_Encoding.Wide_Wide_Strings; use Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

package body HTMWriteMessage is

   procedure Message
     (MessageExternal : in Wide_Wide_String)
   is begin
      
      WaitingLoop:
      while Is_Open (File => FileMessage) loop
         
         delay WaitingTime;
         
      end loop WaitingLoop;
      
      case
        Exists (Name => Messages)
      is
         when True =>
            Open (File => FileMessage,
                  Mode => Append_File,
                  Name => Messages,
                  Form => FileForm);
            
         when False =>
            Create (File => FileMessage,
                    Mode => Out_File,
                    Name => Messages,
                    Form => FileForm);
      end case;
      
      Put (File => FileMessage,
           Item => Decode (Item => Local_Image (Date                  => Clock,
                                                Include_Time_Fraction => False))
           & ": " & MessageExternal);
      
      Close (File => FileMessage);
      
   exception
     when DefaultAdaError : others =>
       Put (Item => "WriteMessage.Message - Could not be written" & Decode (Item => Exception_Information (X => DefaultAdaError)));
         
         case
           Is_Open (File => FileMessage)
         is
            when True =>
               Close (File => FileMessage);
               
            when False =>
               null;
         end case;
         
   end Message;
   
   
   
   procedure MessageASCII
     (MessageExternal : in String)
   is begin

      Message (MessageExternal => Decode (Item => MessageExternal));
      
   end MessageASCII;

end HTMWriteMessage;
