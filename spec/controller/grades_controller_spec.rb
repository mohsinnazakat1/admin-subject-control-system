require 'rails_helper'

RSpec.describe GradesController, type: :controller do
  let(:user) { create(:user) }

  before(:each) do
    sign_in user
  end

  describe '#create' do
    context 'when grade is valid' do
      subject { post :create, params: { grade: { title: 'This is test grade.' } } }

      it 'should increase the grade count' do
        expect { 
          subject
        }.to change { Grade.count }.by(1)
      end

      it 'should return 302' do
        subject

        expect(response).to have_http_status(302)
      end

      it 'should redirect' do
        subject
        
        expect(response).to redirect_to(assigns(:grade))
      end
    end

    context 'when grade is not valid' do
      subject { post :create, params: { grade: { title: nil } } }

      it 'should not increase the grade count' do
        expect { 
          subject
        }.to change { Grade.count }.by(0)
      end

      it 'should return 422' do
        subject

        expect(response).to have_http_status(422)
      end

      it "renders the new template" do
        expect(subject).to render_template(:new)
      end
    end
  end
end