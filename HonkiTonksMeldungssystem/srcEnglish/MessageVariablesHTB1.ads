package MessageVariablesHTB1 is
   pragma Preelaborate;

   procedure ErrorMessageChange
     (ErrorWarningExternal : in Boolean);
   pragma  Inline (ErrorMessageChange);
   
   
   
   function ErrorMessageRequest
     return Boolean;
   pragma  Inline (ErrorMessageRequest);
   
private
   
   ErrorWarning : Boolean := True;

end MessageVariablesHTB1;
