// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "./src/jquery"
import "./src/jquery-ui.min"
import Rails from "@rails/ujs"


$(function() {
  console.log("Aloo Dunya");
  $('p.replace_by_js').replaceWith("<p>Javascript Enabled!</p>");
  $( "#dialog" ).dialog();
})
Rails.start()
