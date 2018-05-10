class PdfFormatsController < ApplicationController

  def show
    respond_to do |format|
      format.html
      format.pdf do
        # get data form db

        pdf = ReprtPdf.new() # params sql
        send_data pdf.render,
          filename: "report.pdf",
          type: "application/pdf",
          disposition: "inline"
      end
    end
  end

end