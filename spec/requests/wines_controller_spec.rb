require 'rails_helper'

RSpec.describe "WinesControllers", type: :controller do
context "a context" do
  it "Mostrar index" do
    get :index
    expect(response).to render_template("index")
  end
end
 
    
  end
end
