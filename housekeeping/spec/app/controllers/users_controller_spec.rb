require 'spec_helper'
require 'rails_helper'

describe '.create' do
  it 'should create a new instance given valid attributes' do
    user = User.create(name: 'user118',
                       email: 'user@example.com',
                       password: 'test1234',
                       phone_no: '123456789')
    user.valid?
  end
  it 'should create a new instance given blank user' do
    user = User.create(name: '',
                       email: 'user@example.com',
                       password: 'test1234',
                       phone_no: '123456789')
    user.valid?
  end
  it 'should create a new instance given blank email' do
    user = User.create(name: 'user',
                       email: '',
                       password: 'test1234',
                       phone_no: '123456789')
    user.valid?
  end
  it 'should create a new instance given blank password' do
    user = User.create(name: 'user',
                       email: 'user@example.com',
                       password: '',
                       phone_no: '123456789')
    user.valid?
  end
  it 'should create a new instance given blank phone_no' do
    user = User.create(name: 'user',
                       email: 'user@example.com',
                       password: 'test1234',
                       phone_no: '')
    user.valid?
  end
end

describe UsersController, type: :controller do
  it 'renders new' do
    hotel = Hotel.create(name: 'testhotel',
                         no_of_rooms: '64',
                         address: 'test1234')
    path = "users/#{hotel.id}/new"
    expect(get: path).to route_to('users#new', id: "#{hotel.id}")
  end
end
