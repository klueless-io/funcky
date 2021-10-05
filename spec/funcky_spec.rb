# frozen_string_literal: true

RSpec.describe Funcky do
  it 'has a version number' do
    expect(Funcky::VERSION).not_to be nil
  end

  it 'has a standard error' do
    expect { raise Funcky::Error, 'some message' }
      .to raise_error('some message')
  end
end
