with Ada.Strings.UTF_Encoding.Wide_Wide_Strings; use Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Ada.Directories;
with Ada.Exceptions;
with Ada.Calendar;
with Ada.Calendar.Formatting;

package body WriteMessageHTB1 is

   procedure Message
     (MessageExternal : in Wide_Wide_String)
   is
      use Ada.Directories;
      use Ada.Exceptions;
      use Ada.Calendar;
      use Ada.Calendar.Formatting;
   begin
      
      WaitingLoop:
      while Is_Open (File => FileMessage) loop
         
         delay until Clock + WaitingTime;
         
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

end WriteMessageHTB1;
