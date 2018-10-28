class PagesController < ApplicationController

  layout "pages"

  def components
    @page_title = "Components Index"
    @page_text = "This page is the index for all of the different components you can buy."
  end

  def home 
    @page_title = "Bikepicker"
    @page_text = "Bikepicker allows you to create different bikes, add up the weight and price. Compare and rate."
  end

  def about 
    @page_title = "What is this site about"
    @page_text = "More information..."
  end
end
