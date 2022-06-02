require 'rails_helper'

RSpec.describe 'Api::Exposed::V1::EmployeesControllers', type: :request do
  describe 'GET /index' do
    let!(:employees) { create_list(:employee, 5) }
    let(:collection) { JSON.parse(response.body)['employees'] }
    let(:params) { {} }

    def perform
      get '/api/v1/employees', params: params
    end

    before do
      perform
    end

    it { expect(collection.count).to eq(5) }
    it { expect(response.status).to eq(200) }
  end

  describe 'POST /create' do
    let(:params) do
      {
        employee: {
          full_name: 'Some full_name',
          personal_id: 'Some personal_id',
          email: 'Some email',
          position: 'Some position',
          salary: 666,
          city: 'Some city',
          country: 'Some country',
          status: 'probationary',
          active: true,
          starting_date: 'Some starting_date'
        }
      }
    end


    let(:attributes) do
      JSON.parse(response.body)['employee'].symbolize_keys
    end


    def perform
      post '/api/v1/employees', params: params
    end

    before do
      perform
    end

    it { expect(attributes).to include(params[:employee]) }
    it { expect(response.status).to eq(201) }
    it "can't create employee with duplicate email" do
      params[:employee][:personal_id] = 'Some non-duplicated personal_id'
      perform
      expect(response.status).to eq(400)
    end
    it "can't create employee with unvalid status" do
      params[:employee][:status] = 'non-valid'
      perform
      expect(response.status).to eq(400)
    end
  end

  describe 'GET /show' do
    let(:employee) { create(:employee) }
    let(:employee_id) { employee.id.to_s }

    let(:attributes) do
      JSON.parse(response.body)['employee'].symbolize_keys
    end

    def perform
      get '/api/v1/employees/' + employee_id
    end

    before do
      perform
    end

    it { expect(response.status).to eq(200) }

    context 'with resource not found' do
      let(:employee_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end

  describe 'PUT /update' do
    let(:employee) { create(:employee) }
    let(:employee_id) { employee.id.to_s }

    let(:params) do
      {
        employee: {
          full_name: 'Some full_name',
          personal_id: 'Some personal_id',
          email: 'Some email',
          position: 'Some position',
          salary: 666,
          active: true,
          starting_date: 'Some starting_date'
        }
      }
    end

    let(:attributes) do
      JSON.parse(response.body)['employee'].symbolize_keys
    end

    def perform
      put '/api/v1/employees/' + employee_id, params: params
    end

    before do
      perform
    end

    it { expect(attributes).to include(params[:employee]) }
    it { expect(response.status).to eq(200) }

    context 'with resource not found' do
      let(:employee_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end

  describe 'DELETE /destroy' do
    let(:employee) { create(:employee) }
    let(:employee_id) { employee.id.to_s }

    def perform
      delete '/api/v1/employees/' + employee_id
    end

    before do
      perform
    end

    it { expect(response.status).to eq(204) }

    context 'with resource not found' do
      let(:employee_id) { '666' }

      it { expect(response.status).to eq(404) }
    end
  end
end
