require 'capybara/rspec'
require 'spec_helper'

describe 'Radios' do
  it 'Renders Radios components' do
    visit 'http://components-radios-app:3000'
    click_on 'Start'

    # radios
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - First - section heading'
    expect(page).to have_selector 'h1', text: 'Radios - First'
    expect(page).to have_selector '.govuk-hint', text: 'Radios - First - hint text'

    choose 'auto_name__1', option: '1', visible: false
    continue

    # radios
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Second - section heading'
    expect(page).to have_selector 'h1', text: 'Radios - Second'
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Second - hint text'

    choose 'auto_name__2', option: '2', visible: false
    continue

    # radios
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Third - section heading'
    expect(page).to have_selector 'h1', text: 'Radios - Third'
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Third - hint text'

    choose 'auto_name__3', option: '3', visible: false
    continue

    # radios
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Fourth - section heading'
    expect(page).to have_selector 'h1', text: 'Radios - Fourth'
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Fourth - hint text'

    choose 'radios-four', option: '4', visible: false
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    expect(page).to have_selector 'h2:nth-of-type(1)', text: 'Radios - First - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__key', text: 'Radios - First'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector 'h2:nth-of-type(2)', text: 'Radios - Second - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__key', text: 'Radios - Second'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector 'h2:nth-of-type(3)', text: 'Radios - Third - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__key', text: 'Radios - Third'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__value', text: 'Three - summary version'

    expect(page).to have_selector 'h2:nth-of-type(4)', text: 'Radios - Fourth - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__key', text: 'Radios - Fourth'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__value', text: 'Four - summary version'

    ########################################
    #                                      #
    #   CHANGE                             #
    #                                      #
    ########################################

    # change
    find('.govuk-summary-list:nth-of-type(4) .govuk-summary-list__actions a').click

    # radios
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Fourth - section heading'
    expect(page).to have_selector 'h1', text: 'Radios - Fourth'
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Fourth - hint text'

    choose 'radios-four', option: '1', visible: false
    continue

    # summary
    expect(page).to have_selector 'h2:nth-of-type(4)', text: 'Radios - Fourth - section heading'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__key', text: 'Radios - Fourth'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__value', text: 'One - summary version'

    ########################################
    #                                      #
    #   BACK                               #
    #                                      #
    ########################################

    # back
    find('.govuk-back-link').click

    # fourth
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Fourth - section heading'
    find('.govuk-back-link').click

    # third
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Third - section heading'
    find('.govuk-back-link').click

    # second
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Second - section heading'
    find('.govuk-back-link').click

    # first
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - First - section heading'
    continue

    # second
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Second - section heading'
    continue

    # third
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Third - section heading'
    continue

    # fourth
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Fourth - section heading'
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Radios - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    click_on 'Accept and send application'

    # confirmation
    expect(page).to have_selector 'h1.govuk-panel__title', text: 'Radios - Confirmation'
  end

  def continue
    click_on 'Continue'
  end
end
