require 'spec_helper'

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

describe HammocksController do

  # This should return the minimal set of attributes required to create a valid
  # Hammock. As you add validations to Hammock, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HammocksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all hammocks as @hammocks" do
      hammock = Hammock.create! valid_attributes
      get :index, {}, valid_session
      assigns(:hammocks).should eq([hammock])
    end
  end

  describe "GET show" do
    it "assigns the requested hammock as @hammock" do
      hammock = Hammock.create! valid_attributes
      get :show, {:id => hammock.to_param}, valid_session
      assigns(:hammock).should eq(hammock)
    end
  end

  describe "GET new" do
    it "assigns a new hammock as @hammock" do
      get :new, {}, valid_session
      assigns(:hammock).should be_a_new(Hammock)
    end
  end

  describe "GET edit" do
    it "assigns the requested hammock as @hammock" do
      hammock = Hammock.create! valid_attributes
      get :edit, {:id => hammock.to_param}, valid_session
      assigns(:hammock).should eq(hammock)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Hammock" do
        expect {
          post :create, {:hammock => valid_attributes}, valid_session
        }.to change(Hammock, :count).by(1)
      end

      it "assigns a newly created hammock as @hammock" do
        post :create, {:hammock => valid_attributes}, valid_session
        assigns(:hammock).should be_a(Hammock)
        assigns(:hammock).should be_persisted
      end

      it "redirects to the created hammock" do
        post :create, {:hammock => valid_attributes}, valid_session
        response.should redirect_to(Hammock.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hammock as @hammock" do
        # Trigger the behavior that occurs when invalid params are submitted
        Hammock.any_instance.stub(:save).and_return(false)
        post :create, {:hammock => { "name" => "invalid value" }}, valid_session
        assigns(:hammock).should be_a_new(Hammock)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Hammock.any_instance.stub(:save).and_return(false)
        post :create, {:hammock => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested hammock" do
        hammock = Hammock.create! valid_attributes
        # Assuming there are no other hammocks in the database, this
        # specifies that the Hammock created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Hammock.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => hammock.to_param, :hammock => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested hammock as @hammock" do
        hammock = Hammock.create! valid_attributes
        put :update, {:id => hammock.to_param, :hammock => valid_attributes}, valid_session
        assigns(:hammock).should eq(hammock)
      end

      it "redirects to the hammock" do
        hammock = Hammock.create! valid_attributes
        put :update, {:id => hammock.to_param, :hammock => valid_attributes}, valid_session
        response.should redirect_to(hammock)
      end
    end

    describe "with invalid params" do
      it "assigns the hammock as @hammock" do
        hammock = Hammock.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Hammock.any_instance.stub(:save).and_return(false)
        put :update, {:id => hammock.to_param, :hammock => { "name" => "invalid value" }}, valid_session
        assigns(:hammock).should eq(hammock)
      end

      it "re-renders the 'edit' template" do
        hammock = Hammock.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Hammock.any_instance.stub(:save).and_return(false)
        put :update, {:id => hammock.to_param, :hammock => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested hammock" do
      hammock = Hammock.create! valid_attributes
      expect {
        delete :destroy, {:id => hammock.to_param}, valid_session
      }.to change(Hammock, :count).by(-1)
    end

    it "redirects to the hammocks list" do
      hammock = Hammock.create! valid_attributes
      delete :destroy, {:id => hammock.to_param}, valid_session
      response.should redirect_to(hammocks_url)
    end
  end

end
