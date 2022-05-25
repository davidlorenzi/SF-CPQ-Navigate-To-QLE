({    
  invoke : function(component, event, helper) {
    // Get the Quote ID attribute
    const quoteId = component.get("v.recordId")

    let action = component.get("c.getReturnURL")
    action.setParams({
      "quoteId": quoteId
    })
    action.setCallback(this, function(response){
      let state = response.getState()
      if(state === "SUCCESS"){
        component.find("navService").navigate({ type: "standard__webPage",  attributes: { url: response.getReturnValue() } })
      } else {
        let errors = response.getError()
        let message = 'Unknown error' // Default error message
        // Retrieve the error message sent by the server
        if (errors && Array.isArray(errors) && errors.length > 0) { message = errors[0].message }
        // Display the message
        console.error("[AURA] NavigateToQLE > getReturnURL() > error: ", message)
        var toastEvent = $A.get("e.force:showToast")
        toastEvent.setParams({ "title": "ERROR", "message": message, "type": "error" })
        toastEvent.fire()
      }
    })
    $A.enqueueAction(action)
  }
})