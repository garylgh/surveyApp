<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Thank you page</title>
      <meta name="layout" content="main"/>
      <meta http-equiv="REFRESH" content="10;URL=${grailsApplication.config.survey_redirect_url}"/>
      <g:javascript library="jquery" />
  </head>
  <body>
      <div>
              Thank you for your time and valuable opinions.
              ${grailsApplication.config.survey_redirect_text} within <span id="second">10</span> second(s)
      </div>
      <g:javascript>
        var intervalId = setInterval("countdown()",1000)
        var count=10
        function countdown(){
            if(count-- >0) {
                $("#second").html(count)
            } else{
                clearInterval(intervalId)
            }
        }
      </g:javascript>
  </body>
</html>