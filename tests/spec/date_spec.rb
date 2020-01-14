require 'capybara/rspec'
require 'spec_helper'

describe 'Date' do
  it 'Renders Date components' do
    visit 'http://components-date-app:3000'
    click_on 'Start'

    # date
    expect(page).to have_selector '.fb-sectionHeading', text: 'Date - First - section heading'
    expect(page).to have_selector 'h1', text: 'Date - First'
    expect(page).to have_selector '.govuk-hint', text: 'Date - First - hint text'

    fill_in 'COMPOSITE--auto_name_1-day', with: '1'
    fill_in 'COMPOSITE--auto_name_1-month', with: '1'
    fill_in 'COMPOSITE--auto_name_1-year', with: '1970'

    continue

    # date
    expect(page).to have_selector '.fb-sectionHeading', text: 'Date - Second - section heading'
    expect(page).to have_selector 'h1', text: 'Date - Second'
    expect(page).to have_selector '.govuk-hint', text: 'Date - Second - hint text'

    fill_in 'COMPOSITE--auto_name_2-day', with: '2'
    fill_in 'COMPOSITE--auto_name_2-month', with: '2'
    fill_in 'COMPOSITE--auto_name_2-year', with: '1971'
    continue

    # date
    expect(page).to have_selector '.fb-sectionHeading', text: 'Date - Third - section heading'
    expect(page).to have_selector 'h1', text: 'Date - Third'
    expect(page).to have_selector '.govuk-hint', text: 'Date - Third - hint text'

    fill_in 'COMPOSITE--auto_name_3-day', with: '3'
    fill_in 'COMPOSITE--auto_name_3-month', with: '3'
    fill_in 'COMPOSITE--auto_name_3-year', with: '1972'
    continue

   # date
    expect(page).to have_selector '.fb-sectionHeading', text: 'Date - Fourth - section heading'
    expect(page).to have_selector 'h1', text: 'Date - Fourth'
    expect(page).to have_selector '.govuk-hint', text: 'Date - Fourth - hint text'

    fill_in 'COMPOSITE--date-fourth-day', with: '4'
    fill_in 'COMPOSITE--date-fourth-month', with: '4'
    fill_in 'COMPOSITE--date-fourth-year', with: '1973'
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Date - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    expect(page).to have_selector 'h2', text: 'Date - First - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Date - First'
    expect(page).to have_selector '.govuk-summary-list__value', text: '1 January 1970'

    expect(page).to have_selector 'h2', text: 'Date - Second - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Date - Second'
    expect(page).to have_selector '.govuk-summary-list__value', text: '2 February 1971'

    expect(page).to have_selector 'h2', text: 'Date - Third - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Date - Third'
    expect(page).to have_selector '.govuk-summary-list__value', text: '3 March 1972'

    expect(page).to have_selector 'h2', text: 'Date - Fourth - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Date - Fourth'
    expect(page).to have_selector '.govuk-summary-list__value', text: '4 April 1973'

    click_on 'Accept and send application'

    # confirmation
    expect(page).to have_selector 'h1.govuk-panel__title', text: 'Date - Confirmation'
  end

  def continue
    click_on 'Continue'
  end
end
