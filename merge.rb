require 'benchmark'
require 'prawn'
require 'prawn/templates'

Benchmark.bmbm do |x|
  x.report {
    pdf_doc = Prawn::Document.new(page_size: "A4", skip_page_creation: true)
    pdf_doc.start_new_page(template: 'ship.pdf', template_page: 1)
    pdf_doc.text 'NEXT LINE POSITION TESTING'
    pdf_doc.render_file('merge.pdf')
    # or
    # File.open('path/to/file.pdf', 'wb') do |f|
    #   f.write pdf_doc.render
    # end
  }
end
