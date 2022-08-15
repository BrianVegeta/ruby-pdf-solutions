require 'pdf-reader'

reader   = PDF::Reader.new("ship.pdf")
page     = reader.page(1)
page.text(skip_overlapping: true, skip_zero_width: true, merge: true).split("\n").compact.reject(&:empty?).each do |t|
  puts t.inspect
end
# 辨識 barcode type
# https://products.aspose.app/barcode/recognize#/recognized

# 進階的 text parser
# http://blog.peschla.net/2014/04/parsing-pdf-text-with-coordinates-in-ruby/

