require 'capybara/rspec'

describe 'Textarea' do
  it 'Renders Textarea components' do
    visit 'http://components-textarea-app:3000'
    click_on 'Start'

    # textarea
    expect(page).to have_selector '.fb-sectionHeading', text: 'Textarea - First - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Textarea - First'
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - First - hint text'

    fill_in 'page_textarea-first--textarea_auto_name_1', with: "One"
    continue

    # textarea
    expect(page).to have_selector '.fb-sectionHeading', text: 'Textarea - Second - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Textarea - Second'
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - Second - hint text'

    fill_in 'page_textarea-second--textarea_auto_name_2', with: "Two"
    continue

    # textarea
    expect(page).to have_selector '.fb-sectionHeading', text: 'Textarea - Third - section heading'
    expect(page).to have_selector 'h1 label.govuk-label', text: 'Textarea - Third'
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - Third - hint text'

    fill_in 'textarea-third', with: "Three"
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Textarea - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    expect(page).to have_selector 'h2', text: 'Textarea - First - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Textarea - First'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'One'

    expect(page).to have_selector 'h2', text: 'Textarea - Second - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Textarea - Second'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'Two' # - summary version'

    expect(page).to have_selector 'h2', text: 'Textarea - Third - section heading'
    expect(page).to have_selector '.govuk-summary-list__key', text: 'Textarea - Third'
    expect(page).to have_selector '.govuk-summary-list__value', text: 'Three' # - summary version'

    click_on 'Accept and send application'

    # confirmation
    expect(page).to have_selector 'h1.govuk-panel__title', text: 'Textarea - Confirmation'
  end

  def continue
    click_on 'Continue'
  end
end
