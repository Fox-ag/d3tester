class BlogsController < ApplicationController
  def index
    @talks = Talk.all
  end
  
  def create
    Talk.create(talk_params)
    @talks = Talk.all
  end
  
  def list
    data = [
      {
        "letter" => "A",
        "frequency" => ".08167"
      },
      {
        "letter" => "B",
        "frequency" => ".01492"
      },
      {
        "letter" => "C",
        "frequency" => ".01492"
      },
      {
        "letter" => "D",
        "frequency" => ".01492"
      },
      {
        "letter" => "E",
        "frequency" => ".01492"
      },
      {
        "letter" => "F",
        "frequency" => ".01492"
      },
      {
        "letter" => "G",
        "frequency" => ".01492"
      },
      {
        "letter" => "H",
        "frequency" => ".01492"
      },
      {
        "letter" => "I",
        "frequency" => ".01492"
      },
      {
        "letter" => "J",
        "frequency" => ".01492"
      },
      {
        "letter" => "K",
        "frequency" => ".01492"
      },
      {
        "letter" => "L",
        "frequency" => ".01492"
      },
      {
        "letter" => "M",
        "frequency" => ".01492"
      },
      {
        "letter" => "N",
        "frequency" => ".01492"
      },
      {
        "letter" => "O",
        "frequency" => ".01492"
      },
      {
        "letter" => "P",
        "frequency" => ".01492"
      },
      {
        "letter" => "Q",
        "frequency" => ".01492"
      },
      {
        "letter" => "R",
        "frequency" => ".01492"
      },
      {
        "letter" => "S",
        "frequency" => ".01492"
      },
      {
        "letter" => "T",
        "frequency" => ".01492"
      },
      {
        "letter" => "U",
        "frequency" => ".01492"
      },
      {
        "letter" => "V",
        "frequency" => ".01492"
      },
      {
        "letter" => "W",
        "frequency" => ".01492"
      },
      {
        "letter" => "X",
        "frequency" => ".01492"
      },
      {
        "letter" => "Y",
        "frequency" => ".01492"
      },
      {
        "letter" => "Z",
        "frequency" => ".00074"
      }
    ]
    render :json => data
  
  end
  
  def search_blog
    @blogs=Blog.order('madedate DESC').limit(4)
    render layout: true
  end
  
  private
  def talk_params
    params.permit(:name, :text)
  end
  
end
