// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"

import "@popperjs/core"
import "bootstrap"
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
