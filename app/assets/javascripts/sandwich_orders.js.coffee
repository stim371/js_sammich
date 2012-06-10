# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
	

jQuery ->
	$ = jQuery
	url_field = $("#sandwich_url")
	sandwich_select = $("#sandwich_order_sandwich_type")
	speed = 150

	if sandwich_select.val() == "Other" then url_field.show()

	sandwich_select.change ->
		if this.value == "Other" then url_field.show(speed) else url_field.hide(speed)