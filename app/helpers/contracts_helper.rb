module ContractsHelper
    require 'docx'


    def loaddocx
        
        # Create a Docx::Document object for our existing docx file
        doc = Docx::Document.open('./public/modelo.docx')
        cont = 1
        # puts doc
        # Retrieve and display paragraphs
        doc.paragraphs.each do |p|
          # puts p.class
            p.each_text_run do |tr|
              substituteText = "<ac-"+ cont.to_s + ">"
              if tr.to_s == substituteText
                
                tr.substitute(substituteText.to_s, "SUBSTITUTE SUCCESS")
                puts cont+=1
              end 
            end
            
            
        end 
         doc.paragraphs.each do |p|
           puts p 
        end 
        
        # doc.bookmarks do |bookmark_o|
        #   puts bookmark_name
        # end

        # doc.save('./public/new.doc')
    end
end
