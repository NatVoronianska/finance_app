class ReportsController < ApplicationController
  def index
  end

  def report_by_category
    @data = params
  end

  def report_by_dates
    if params[:report_date]
      redirect_to({
        action: "report_by_dates",
        firstdate: params[:firstdate],
        lastdate: params[:lastdate]
      })
      elsif 
        redirect_to({
        action: "report_by_category",
        firstdate: params[:firstdate],
        lastdate: params[:lastdate]
      })
      puts(params)
    end
  end
end
