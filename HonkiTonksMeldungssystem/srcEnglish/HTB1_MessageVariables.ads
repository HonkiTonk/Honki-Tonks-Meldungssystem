package HTB1_MessageVariables is
   pragma Preelaborate;

   procedure ErrorMessageChange
     (ErrorWarningExternal : in Boolean);
   pragma  Inline (ErrorMessageChange);
   
   
   
   function ErrorMessageRequest
     return Boolean;
   pragma  Inline (ErrorMessageRequest);
   
private
   
   ErrorWarning : Boolean := True;

end HTB1_MessageVariables;
