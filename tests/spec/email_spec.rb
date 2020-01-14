require 'capybara/rspec'
require 'spec_helper'

describe 'Email' do
  it 'Renders Email components' do
    visit 'http://components-email-app:3000'
    click_on 'Start'

    # email
    expect(page).to have_selector '.fb-sectionHeading', text: 'Email - First - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Email - First'
    expect(page).to have_selector '.govuk-hint', text: 'Email - First - hint text'

    fill_in 'page_email-first--email_auto_name_1', with: "form-builder-developers@digital.justice.gov.uk"
    continue

    # email
    expect(page).to have_selector '.fb-sectionHeading', text: 'Email - Second - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Email - Second'
    expect(page).to have_selector '.govuk-hint', text: 'Email - Second - hint text'

    fill_in 'page_email-second--email_auto_name_2', with: "form-builder-developers@digital.justice.gov.uk"
    continue

    # email
    expect(page).to have_selector '.fb-sectionHeading', text: 'Email - Third - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Email - Third'
    expect(page).to have_selector '.govuk-hint', text: 'Email - Third - hint text'

    fill_in 'email-third', with: "form-builder-developers@digital.justice.gov.uk"
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Email - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    expect(page).to have_selector 'h2', text: 'Email - First - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Email - First'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'form-builder-developers@digital.justice.gov.uk'

    expect(page).to have_selector 'h2', text: 'Email - Second - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Email - Second'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'form-builder-developers@digital.justice.gov.uk'

    expect(page).to have_selector 'h2', text: 'Email - Third - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Email - Third'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'form-builder-developers@digital.justice.gov.uk'

    click_on 'Accept and send application'

    # confirmation
    expect(page).to have_selector 'h1.govuk-panel__title', text: 'Email - Confirmation'
  end

  def continue
    click_on 'Continue'
  end
end
