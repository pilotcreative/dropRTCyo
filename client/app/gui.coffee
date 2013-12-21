class Gui
  start: ->
    @fileInput = document.getElementById('file')
    @fileInput.addEventListener('change', @handleFileSelected, false)

  handleFileSelected: (event) =>
    file = event.target.files[0]
    @fileSelected(file)

  displayContent: (content) =>
    console.log(content)

  showHash: (hash) =>
    $("#file").hide()
    $("body").append("The url: #{window.location}##{hash}")

  fileSelected: (file) =>

  updateProgress: (loaded) =>
    $('#progressbar').css(width: "#{loaded * 100}%")

module.exports = Gui
