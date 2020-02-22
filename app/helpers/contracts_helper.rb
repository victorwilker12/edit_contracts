module ContractsHelper
    require 'docx'


    def loaddocx
        cont = 1
        # Create a Docx::Document object for our existing docx file
        doc = Docx::Document.open('./public/test.docx')
        puts doc
        # Retrieve and display paragraphs
        doc.paragraphs.each do |p|
          puts p.class
            p.each_text_run do |tr|
              substituteText = "AC"+ cont.to_s
              tr.substitute(substituteText.to_s, "SUBSTITUTE SUCCESS")
              
            end
        end 
        
        doc.bookmarks do |bookmark_o|
          puts bookmark_name
        end

        doc.save('./public/new.doc')
    end
end
