require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PlatformAccountsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # PlatformAccount. As you add validations to PlatformAccount, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: 'Name' }
  }

  let(:invalid_attributes) {
    { name: '' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlatformAccountsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all platform_accounts as @platform_accounts" do
      platform_account = PlatformAccount.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:platform_accounts)).to eq([platform_account])
    end
  end

  describe "GET show" do
    it "assigns the requested platform_account as @platform_account" do
      platform_account = PlatformAccount.create! valid_attributes
      get :show, {:id => platform_account.to_param}, valid_session
      expect(assigns(:platform_account)).to eq(platform_account)
    end
  end

  describe "GET new" do
    it "assigns a new platform_account as @platform_account" do
      get :new, {}, valid_session
      expect(assigns(:platform_account)).to be_a_new(PlatformAccount)
    end
  end

  describe "GET edit" do
    it "assigns the requested platform_account as @platform_account" do
      platform_account = PlatformAccount.create! valid_attributes
      get :edit, {:id => platform_account.to_param}, valid_session
      expect(assigns(:platform_account)).to eq(platform_account)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PlatformAccount" do
        expect {
          post :create, {:platform_account => valid_attributes}, valid_session
        }.to change(PlatformAccount, :count).by(1)
      end

      it "assigns a newly created platform_account as @platform_account" do
        post :create, {:platform_account => valid_attributes}, valid_session
        expect(assigns(:platform_account)).to be_a(PlatformAccount)
        expect(assigns(:platform_account)).to be_persisted
      end

      it "redirects to the created platform_account" do
        post :create, {:platform_account => valid_attributes}, valid_session
        expect(response).to redirect_to(PlatformAccount.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved platform_account as @platform_account" do
        post :create, {:platform_account => invalid_attributes}, valid_session
        expect(assigns(:platform_account)).to be_a_new(PlatformAccount)
      end

      it "re-renders the 'new' template" do
        post :create, {:platform_account => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { name: 'New Name' }
      }

      it "updates the requested platform_account" do
        platform_account = PlatformAccount.create! valid_attributes
        put :update, {:id => platform_account.to_param, :platform_account => new_attributes}, valid_session
        platform_account.reload
        expect(platform_account.name).to eq(new_attributes[:name])
      end

      it "assigns the requested platform_account as @platform_account" do
        platform_account = PlatformAccount.create! valid_attributes
        put :update, {:id => platform_account.to_param, :platform_account => valid_attributes}, valid_session
        expect(assigns(:platform_account)).to eq(platform_account)
      end

      it "redirects to the platform_account" do
        platform_account = PlatformAccount.create! valid_attributes
        put :update, {:id => platform_account.to_param, :platform_account => valid_attributes}, valid_session
        expect(response).to redirect_to(platform_account)
      end
    end

    describe "with invalid params" do
      it "assigns the platform_account as @platform_account" do
        platform_account = PlatformAccount.create! valid_attributes
        put :update, {:id => platform_account.to_param, :platform_account => invalid_attributes}, valid_session
        expect(assigns(:platform_account)).to eq(platform_account)
      end

      it "re-renders the 'edit' template" do
        platform_account = PlatformAccount.create! valid_attributes
        put :update, {:id => platform_account.to_param, :platform_account => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested platform_account" do
      platform_account = PlatformAccount.create! valid_attributes
      expect {
        delete :destroy, {:id => platform_account.to_param}, valid_session
      }.to change(PlatformAccount, :count).by(-1)
    end

    it "redirects to the platform_accounts list" do
      platform_account = PlatformAccount.create! valid_attributes
      delete :destroy, {:id => platform_account.to_param}, valid_session
      expect(response).to redirect_to(platform_accounts_url)
    end
  end

end
