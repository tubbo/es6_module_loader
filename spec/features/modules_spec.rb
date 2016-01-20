require 'spec_helper'

RSpec.feature 'modules', js: true do
  scenario 'loads module on document ready' do
    visit '/'
    expect(page).to have_content 'Welcome to my application.'
  end
end
