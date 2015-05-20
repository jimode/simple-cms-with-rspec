require 'rails_helper'

describe SubjectsController do
  # let(:subjects) { Subject.all }
   
  describe 'GET #index' do
    it "assigns all subjects to @subjects sorted in an ascending order" do
     subject1 = create(:subject) 
     subject2 = create(:subject)
     get :index
     
    expect(assigns(:subjects)).to include(subject1, subject2)
    expect(response).to be_success
    end
    
    it "renders the :index template" do
      get :index, @subjects
      
      expect(response).to render_template(:index)
    end
  end
  
  
  describe 'GET #show' do
    it "assigns the requested subject to @subject" do
      subject = create(:subject)
      get :show, id: subject
      expect(assigns(:subject)).to eq(subject)
    end
    
    it "renders the :show template" do
      subject = create(:subject)
      get :show, id: subject
      expect(response).to render_template(:show)
    end
  end
  
  describe 'Get #new' do
    it "assigns a new Subject to @subject" do
      get :new
      expect(assigns(:subject)).to be_a_new(Subject)
    end
    
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end
  
  describe 'GET #edit' do
    it "assigns the requested subject to @subject" do
      subject = create(:subject)
      get :edit, id: subject
      expect(assigns(:subject)).to eq(subject)
    end
    
    it "renders the :edit template" do
      subject = create(:subject)
      get :edit, id: subject
      expect(response).to render_template(:edit)
    end
  end
  
  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new subject in the database" do
        expect{
        post :create, subject: attributes_for(:subject)
        }.to change(Subject, :count).by(1)
      end
      
      xit "redirects to subjects#show" do
        post :create, subject: attributes_for(:subject)
        # expect(response).to redirect_to("http://test.host/subjects")
        expect(response).to redirect_to subject_path(assigns[:subject])
      end
    end
  end
  
  describe 'PATCH #update' do
    before :each do
      @subject = create(:subject)
    end
    
    context "valid attributes" do
      it "locates the requested @subject" do
        patch :update, id: @subject, subject: attributes_for(:subject)
        expect(assigns(:subject)).to eq(@subject)
      end
      
      it "changes @subject's attributes" do
        patch :update, id: @subject, subject: attributes_for(:subject,
        name: 'updated_name')
        @subject.reload
        expect(@subject.name).to eq('updated_name')
      end
      
      xit "redirects to the updated subject" do
        patch :update, id: @subject, subject: attributes_for(:subject)
        expect(response).to redirect_to @subject_path
      end
    end
  end
  
  describe 'DELETE #destroy' do
    before :each do
      @subject = create(:subject)
    end
    
    it "deletes the subject" do
      expect{
        delete :destroy, id: @subject
      }.to change(Subject, :count).by(-1)
    end
    
    it "redirects to subjects#index" do
      delete :destroy, id: @subject
      expect(response).to redirect_to 'http://test.host/subjects'
    end
  end
  
  
end

# RSpec.describe SubjectsController, :type => :controller do

#   describe "GET index" do
#     it "returns http success" do
#       get :index
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET show" do
#     it "returns http success" do
#       get :show
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET edit" do
#     it "returns http success" do
#       get :edit
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET delete" do
#     it "returns http success" do
#       get :delete
#       expect(response).to have_http_status(:success)
#     end
#   end

# end
