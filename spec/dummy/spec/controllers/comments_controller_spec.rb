require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  let(:valid_session) { {} }

  let :comment do
    Comment.create! valid_attributes
  end

  describe 'GET #index' do
    it 'assigns all comments as @comments' do
      get :index, {}, valid_session
      expect(assigns(:comments)).to eq([comment])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested comment as @comment' do
      get :show, { id: comment.to_param }, valid_session
      expect(assigns(:comment)).to eq(comment)
    end
  end

  describe 'GET #new' do
    it 'assigns a new comment as @comment' do
      get :new, {}, valid_session
      expect(assigns(:comment)).to be_a_new(Comment)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested comment as @comment' do
      get :edit, { id: comment.to_param }, valid_session
      expect(assigns(:comment)).to eq(comment)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Comment' do
        expect do
          post :create, { comment: valid_attributes }, valid_session
        end.to change(Comment, :count).by(1)
      end

      it 'assigns a newly created comment as @comment' do
        post :create, { comment: valid_attributes }, valid_session
        expect(assigns(:comment)).to be_a(Comment)
        expect(assigns(:comment)).to be_persisted
      end

      it 'redirects to the created comment' do
        post :create, { comment: valid_attributes }, valid_session
        expect(response).to redirect_to(Comment.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved comment as @comment' do
        post :create, { comment: invalid_attributes }, valid_session
        expect(assigns(:comment)).to be_a_new(Comment)
      end

      it "re-renders the 'new' template" do
        post :create, { comment: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      let :comment_params do
        { id: comment.to_param, comment: valid_attributes }
      end

      it 'updates the requested comment' do
        new_params = { id: comment.to_param, comment: new_attributes }
        put :update, new_params, valid_session
        comment.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested comment as @comment' do
        put :update, comment_params, valid_session
        expect(assigns(:comment)).to eq(comment)
      end

      it 'redirects to the comment' do
        put :update, comment_params, valid_session
        expect(response).to redirect_to(comment)
      end
    end

    context 'with invalid params' do
      let :invalid_params do
        { id: comment.to_param, comment: invalid_attributes }
      end

      it 'assigns the comment as @comment' do
        put :update, invalid_params, valid_session
        expect(assigns(:comment)).to eq(comment)
      end

      it "re-renders the 'edit' template" do
        put :update, invalid_params, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested comment' do
      expect do
        delete :destroy, { id: comment.to_param }, valid_session
      end.to change(Comment, :count).by(-1)
    end

    it 'redirects to the comments list' do
      delete :destroy, { id: comment.to_param }, valid_session
      expect(response).to redirect_to(comments_url)
    end
  end
end
