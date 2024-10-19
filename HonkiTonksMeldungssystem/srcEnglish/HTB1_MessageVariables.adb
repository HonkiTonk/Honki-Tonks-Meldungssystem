package body HTB1_MessageVariables is

   procedure ErrorMessageChange
     (ErrorWarningExternal : in Boolean)
   is begin
      
      ErrorWarning := ErrorWarningExternal;
      
   end ErrorMessageChange;
   
   
   
   function ErrorMessageRequest
     return Boolean
   is begin
      
      return ErrorWarning;
      
   end ErrorMessageRequest;

end HTB1_MessageVariables;
