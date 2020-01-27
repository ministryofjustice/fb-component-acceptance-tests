require 'capybara/rspec'
require 'spec_helper'

describe 'Text' do
  it 'Renders Text components' do
    visit 'http://components-text-app:3000'
    click_on 'Start'

    # text
    expect(page).to have_selector '.fb-sectionHeading', text: 'Text - First - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Text - First'
    expect(page).to have_selector '.govuk-hint', text: 'Text - First - hint text'

    fill_in 'page_text-first--text_auto_name_1', with: "One"
    continue

    # text
    expect(page).to have_selector '.fb-sectionHeading', text: 'Text - Second - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Text - Second'
    expect(page).to have_selector '.govuk-hint', text: 'Text - Second - hint text'

    fill_in 'page_text-second--text_auto_name_2', with: "Two"
    continue

    # text
    expect(page).to have_selector '.fb-sectionHeading', text: 'Text - Third - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Text - Third'
    expect(page).to have_selector '.govuk-hint', text: 'Text - Third - hint text'

    fill_in 'text-third', with: "Three"
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Text - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    expect(page).to have_selector 'h2:nth-of-type(1)', text: 'Text - First - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__key', text: 'Text - First'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector 'h2:nth-of-type(2)', text: 'Text - Second - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__key', text: 'Text - Second'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector 'h2:nth-of-type(3)', text: 'Text - Third - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__key', text: 'Text - Third'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__value', text: 'Three'

    # Change
    find('.govuk-summary-list:nth-of-type(3) .govuk-summary-list__actions a').click

    # text
    expect(page).to have_selector '.fb-sectionHeading', text: 'Text - Third - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Text - Third'
    expect(page).to have_selector '.govuk-hint', text: 'Text - Third - hint text'

    fill_in 'text-third', with: "One"
    continue

    # summary
    expect(page).to have_selector 'h2:nth-of-type(3)', text: 'Text - Third - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__key', text: 'Text - Third'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__value', text: 'One'

    click_on 'Accept and send application'

    # confirmation
    expect(page).to have_selector 'h1.govuk-panel__title', text: 'Text - Confirmation'
  end

  def continue
    click_on 'Continue'
  end
end
