Quando('eu faço upload de arquivo') do
  visit('https://www.file.io/')
  attach_file('upload-button', 'C:\\Users\\mathe\\Desktop\\capybarateste\\tests\\features\\support\\download.webp', make_visible: true)
  sleep(2)

end