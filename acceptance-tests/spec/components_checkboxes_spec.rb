require 'capybara/rspec'

describe 'Checkboxes' do
  it 'Renders Checkboxes components' do
    visit 'http://components-checkboxes-app:3000'
    click_on 'Start'

    # checkboxes
    expect(page).to have_selector '.fb-sectionHeading', text: 'Checkboxes - First - section heading'
    expect(page).to have_selector 'h1', text: 'Checkboxes - First'
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - First - hint text'

    check 'auto_name__1', visible: false
    continue

    # checkboxes
    expect(page).to have_selector '.fb-sectionHeading', text: 'Checkboxes - Second - section heading'
    expect(page).to have_selector 'h1', text: 'Checkboxes - Second'
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - Second - hint text'

    check 'auto_name__6', visible: false
    continue

    # checkboxes
    expect(page).to have_selector '.fb-sectionHeading', text: 'Checkboxes - Third - section heading'
    expect(page).to have_selector 'h1', text: 'Checkboxes - Third'
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - Third - hint text'

    check 'auto_name__11', visible: false
    continue

    # checkboxes
    expect(page).to have_selector '.fb-sectionHeading', text: 'Checkboxes - Fourth - section heading'
    expect(page).to have_selector 'h1', text: 'Checkboxes - Fourth'
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - Fourth - hint text'

    check 'checkboxes-one', visible: false
    check 'checkboxes-two', visible: false
    check 'checkboxes-three', visible: false
    check 'checkboxes-four', visible: false
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Checkboxes - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    expect(page).to have_selector 'h2', text: 'Checkboxes - First - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Checkboxes - First'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'One'

    expect(page).to have_selector 'h2', text: 'Checkboxes - Second - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Checkboxes - Second'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector 'h2', text: 'Checkboxes - Third - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Checkboxes - Third'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'Three - summary version'

    expect(page).to have_selector 'h2', text: 'Checkboxes - Fourth - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Checkboxes - Fourth'
    expect(page).to have_selector '.govuk-summary-list__value', text: /One - summary version\s*Two - summary version\s*Three - summary version\s*Four - summary version/

    click_on 'Accept and send application'

    # confirmation
    expect(page).to have_selector 'h1.govuk-panel__title', text: 'Checkboxes - Confirmation'
  end

  def continue
    click_on 'Continue'
  end
end
