require 'rails_helper'

describe PagesController do
  
  describe 'GET #index' do
    it 'assigns all pages to @pages' do
      page1 = create(:page)
      page2 = create(:page)
      get :index
      
      expect(assigns(:pages)).to include(page1, page2)
    end
    
    it 'renders the :index template' do
      get :index, @pages
      
      expect(response).to render_template(:index)
    end
  end
  
  describe 'GET #show' do
    it 'assigns the requested page to @page' do
      page = create(:page)
      get :show, id: page
      
      expect(assigns(:page)).to eq(page)
    end
    
    it "renders the :show template" do
      page = create(:page)
      get :show, id: page
      
      expect(response).to render_template(:show)
    end
  end
  
  describe 'Get #new' do
    it 'assigns a new Page to @page' do
      get :new
      expect(assigns(:page)).to be_a_new(Page)
    end
  
    it 'renders the :new template' do
      get :new
      expect(response).to render_template(:new)
    end
  end
  
  describe 'GET #edit' do
    it "assigns the requested page to @page" do
      page = create(:page)
      get :edit, id: page
      expect(assigns(:page)).to eq(page)
    end
    
    it "renders the :edit template" do
      page = create(:page)
      get :edit, id: page
      expect(response).to render_template(:edit)
    end
  end
  
  describe 'POST #create' do
    context "with valid attributes" do
      it "save the new page into the database" do
        expect{
          post :create, page: attributes_for(:page)
          }.to change(Page, :count).by(1)
      end
      
      it "redirects to page#index" do
        post :create, page: attributes_for(:page)
        expect(response).to redirect_to 'http://test.host/pages/index'
      end
    end
  end
  
end

# RSpec.describe PagesController, :type => :controller do

#   describe "GET index" do
#     it "returns http success" do
#       get :index
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET create" do
#     it "returns http success" do
#       get :create
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET edit" do
#     it "returns http success" do
#       get :edit
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET update" do
#     it "returns http success" do
#       get :update
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET delete" do
#     it "returns http success" do
#       get :delete
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET destroy" do
#     it "returns http success" do
#       get :destroy
#       expect(response).to have_http_status(:success)
#     end
#   end
# end
