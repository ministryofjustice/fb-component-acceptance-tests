require 'capybara/rspec'
require 'spec_helper'

describe 'Fieldset' do
  it 'Renders Fieldset components' do
    visit 'http://components-fieldset-app:3000'
    click_on 'Start'

    # autocomplete
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - First - section heading'
    expect(page).to have_selector 'h1', text: 'Fieldset - First'

    expect(page).to have_selector '.govuk-hint', text: 'Autocomplete - First - hint text'

    fill_in 'page_fieldset-first--fieldset--autocomplete_auto_name_1', with: "One\n" # the new line 'presses enter' on the selected option

    # checkboxes
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - First - hint text'

    check 'auto_name__2', visible: false

    # date
    expect(page).to have_selector '.govuk-hint', text: 'Date - First - hint text'

    fill_in 'COMPOSITE--auto_name_6-day', with: "1"
    fill_in 'COMPOSITE--auto_name_6-month', with: "1"
    fill_in 'COMPOSITE--auto_name_6-year', with: "1970"

    # email
    expect(page).to have_selector '.govuk-hint', text: 'Email - First - hint text'

    fill_in 'page_fieldset-first--fieldset--email_auto_name_7', with: "form-builder-developers@digital.justice.gov.uk"

    # number
    expect(page).to have_selector '.govuk-hint', text: 'Number - First - hint text'

    fill_in 'page_fieldset-first--fieldset--number_auto_name_8', with: "1"

    # radios
    expect(page).to have_selector '.govuk-hint', text: 'Radios - First - hint text'

    choose 'auto_name__9', option: '1', visible: false

    # select
    expect(page).to have_selector '.govuk-hint', text: 'Select - First - hint text'

    select 'One', from: 'page_fieldset-first--fieldset--select_auto_name_10'

    # text
    expect(page).to have_selector '.govuk-hint', text: 'Text - First - hint text'

    fill_in 'page_fieldset-first--fieldset--text_auto_name_11', with: "One"

    # textarea
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - First - hint text'

    fill_in 'page_fieldset-first--fieldset--textarea_auto_name_12', with: "One"

    # upload
    attach_file('auto_name__13[1]', 'spec/fixtures/files/1.jpg')

    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - First - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '1.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # autocomplete
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Second - section heading'
    expect(page).to have_selector 'h1', text: 'Fieldset - Second'

    expect(page).to have_selector '.govuk-hint', text: 'Autocomplete - Second - hint text'

    fill_in 'page_fieldset-second--fieldset--autocomplete_auto_name_13', with: "Two\n" # the new line 'presses enter' on the selected option

    # checkboxes
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - Second - hint text'

    check 'auto_name__15', visible: false

    # date
    expect(page).to have_selector '.govuk-hint', text: 'Date - Second - hint text'

    fill_in 'COMPOSITE--auto_name_18-day', with: "2"
    fill_in 'COMPOSITE--auto_name_18-month', with: "2"
    fill_in 'COMPOSITE--auto_name_18-year', with: "1971"

    # email
    expect(page).to have_selector '.govuk-hint', text: 'Email - Second - hint text'

    fill_in 'page_fieldset-second--fieldset--email_auto_name_19', with: "form-builder-developers@digital.justice.gov.uk"

    # number
    expect(page).to have_selector '.govuk-hint', text: 'Number - Second - hint text'

    fill_in 'page_fieldset-second--fieldset--number_auto_name_20', with: "2"

    # radios
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Second - hint text'

    choose 'auto_name__21', option: '2', visible: false

    # select
    expect(page).to have_selector '.govuk-hint', text: 'Select - Second - hint text'

    select 'Two', from: 'page_fieldset-second--fieldset--select_auto_name_22'

    # text
    expect(page).to have_selector '.govuk-hint', text: 'Text - Second - hint text'

    fill_in 'page_fieldset-second--fieldset--text_auto_name_23', with: "Two"

    # textarea
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - Second - hint text'

    fill_in 'page_fieldset-second--fieldset--textarea_auto_name_24', with: "Two"

    # upload
    attach_file('auto_name__25[1]', 'spec/fixtures/files/2.jpg')

    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - Second - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '2.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # autocomplete
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Third - section heading'
    expect(page).to have_selector 'h1', text: 'Fieldset - Third'

    expect(page).to have_selector '.govuk-hint', text: 'Autocomplete - Third - hint text'

    fill_in 'page_fieldset-third--fieldset--autocomplete_auto_name_25', with: "Three\n" # the new line 'presses enter' on the selected option

    # checkboxes
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - Third - hint text'

    check 'auto_name__28', visible: false

    # date
    expect(page).to have_selector '.govuk-hint', text: 'Date - Third - hint text'

    fill_in 'COMPOSITE--auto_name_30-day', with: "3"
    fill_in 'COMPOSITE--auto_name_30-month', with: "3"
    fill_in 'COMPOSITE--auto_name_30-year', with: "1972"

    # email
    expect(page).to have_selector '.govuk-hint', text: 'Email - Third - hint text'

    fill_in 'page_fieldset-third--fieldset--email_auto_name_31', with: "form-builder-developers@digital.justice.gov.uk"

    # number
    expect(page).to have_selector '.govuk-hint', text: 'Number - Third - hint text'

    fill_in 'page_fieldset-third--fieldset--number_auto_name_32', with: "3"

    # radios
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Third - hint text'

    choose 'auto_name__33', option: '3', visible: false

    # select
    expect(page).to have_selector '.govuk-hint', text: 'Select - Third - hint text'

    select 'Three', from: 'page_fieldset-third--fieldset--select_auto_name_34'

    # text
    expect(page).to have_selector '.govuk-hint', text: 'Text - Third - hint text'

    fill_in 'page_fieldset-third--fieldset--text_auto_name_35', with: "Three"

    # textarea
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - Third - hint text'

    fill_in 'page_fieldset-third--fieldset--textarea_auto_name_36', with: "Three"

    # upload
    attach_file('auto_name__37[1]', 'spec/fixtures/files/3.jpg')

    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - Third - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '3.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # autocomplete
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Fourth - section heading'
    expect(page).to have_selector 'h1', text: 'Fieldset - Fourth'

    expect(page).to have_selector '.govuk-hint', text: 'Autocomplete - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--autocomplete_auto_name_37', with: "Four\n" # the new line 'presses enter' on the selected option

    # checkboxes
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - Fourth - hint text'

    check 'auto_name__41', visible: false

    # date
    expect(page).to have_selector '.govuk-hint', text: 'Date - Fourth - hint text'

    fill_in 'COMPOSITE--auto_name_42-day', with: "4"
    fill_in 'COMPOSITE--auto_name_42-month', with: "4"
    fill_in 'COMPOSITE--auto_name_42-year', with: "1973"

    # email
    expect(page).to have_selector '.govuk-hint', text: 'Email - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--email_auto_name_43', with: "form-builder-developers@digital.justice.gov.uk"

    # number
    expect(page).to have_selector '.govuk-hint', text: 'Number - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--number_auto_name_44', with: "4"

    # radios
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Fourth - hint text'

    choose 'auto_name__45', option: '4', visible: false

    # select
    expect(page).to have_selector '.govuk-hint', text: 'Select - Fourth - hint text'

    select 'Four', from: 'page_fieldset-fourth--fieldset--select_auto_name_46'

    # text
    expect(page).to have_selector '.govuk-hint', text: 'Text - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--text_auto_name_47', with: "Four"

    # textarea
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--textarea_auto_name_48', with: "Four"

    # upload
    attach_file('auto_name__49[1]', 'spec/fixtures/files/4.jpg')

    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - Fourth - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '4.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    expect(page).to have_selector 'h2:nth-of-type(1)', text: 'Fieldset - First - section heading'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__key', text: 'Autocomplete'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__key', text: 'Checkboxes'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__key', text: 'Date'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__value', text: '1 January 1970'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__key', text: 'Email'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__value', text: 'form-builder-developers@digital.justice.gov.uk'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__key', text: 'Number'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__value', text: '1'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__key', text: 'Radios'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__key', text: 'Select'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__key', text: 'Text'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__key', text: 'Textarea'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__key', text: 'Upload'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(1) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__value', text: '1.jpg (1.34MB)'

    expect(page).to have_selector 'h2:nth-of-type(2)', text: 'Fieldset - Second - section heading'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__key', text: 'Autocomplete'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__key', text: 'Checkboxes'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__key', text: 'Date'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__value', text: '2 February 1971'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__key', text: 'Email'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__value', text: 'form-builder-developers@digital.justice.gov.uk'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__key', text: 'Number'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__value', text: '2'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__key', text: 'Radios'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__key', text: 'Select'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__key', text: 'Text'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__key', text: 'Textarea'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__value', text: 'Two'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__key', text: 'Upload'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(2) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__value', text: '2.jpg (1.34MB)'

    expect(page).to have_selector 'h2:nth-of-type(3)', text: 'Fieldset - Third - section heading'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__key', text: 'Autocomplete'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__value', text: 'Three'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__key', text: 'Checkboxes'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__value', text: 'Three - summary version'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__key', text: 'Date'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__value', text: '3 March 1972'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__key', text: 'Email'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__value', text: 'form-builder-developers@digital.justice.gov.uk'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__key', text: 'Number'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__value', text: '3'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__key', text: 'Radios'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__value', text: 'Three - summary version'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__key', text: 'Select'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__value', text: 'Three'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__key', text: 'Text'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__value', text: 'Three'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__key', text: 'Textarea'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__value', text: 'Three'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__key', text: 'Upload'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(3) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__value', text: '3.jpg (1.34MB)'

    expect(page).to have_selector 'h2:nth-of-type(4)', text: 'Fieldset - Fourth - section heading'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__key', text: 'Autocomplete'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__value', text: 'Four'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__key', text: 'Checkboxes'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__value', text: 'Four - summary version'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__key', text: 'Date'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__value', text: '4 April 1973'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__key', text: 'Email'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__value', text: 'form-builder-developers@digital.justice.gov.uk'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__key', text: 'Number'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__value', text: '4'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__key', text: 'Radios'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__value', text: 'Four - summary version'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__key', text: 'Select'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__value', text: 'Four'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__key', text: 'Text'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__value', text: 'Four'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__key', text: 'Textarea'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__value', text: 'Four'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__key', text: 'Upload'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__value', text: '4.jpg (1.34MB)'

    ########################################
    #                                      #
    #   CHANGE                             #
    #                                      #
    ########################################

    # change
    find('.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__actions a').click

    # autocomplete
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Fourth - section heading'
    expect(page).to have_selector 'h1', text: 'Fieldset - Fourth'

    expect(page).to have_selector '.govuk-hint', text: 'Autocomplete - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--autocomplete_auto_name_37', with: "One\n" # the new line 'presses enter' on the selected option

    # checkboxes
    expect(page).to have_selector '.govuk-hint', text: 'Checkboxes - Fourth - hint text'

    check 'auto_name__38', visible: false
    check 'auto_name__39', visible: false
    check 'auto_name__40', visible: false

    # date
    expect(page).to have_selector '.govuk-hint', text: 'Date - Fourth - hint text'

    fill_in 'COMPOSITE--auto_name_42-day', with: "1"
    fill_in 'COMPOSITE--auto_name_42-month', with: "1"
    fill_in 'COMPOSITE--auto_name_42-year', with: "1970"

    # email
    expect(page).to have_selector '.govuk-hint', text: 'Email - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--email_auto_name_43', with: "form-builder-team@digital.justice.gov.uk"

    # number
    expect(page).to have_selector '.govuk-hint', text: 'Number - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--number_auto_name_44', with: "1"

    # radios
    expect(page).to have_selector '.govuk-hint', text: 'Radios - Fourth - hint text'

    choose 'auto_name__45', option: '1', visible: false

    # select
    expect(page).to have_selector '.govuk-hint', text: 'Select - Fourth - hint text'

    select 'One', from: 'page_fieldset-fourth--fieldset--select_auto_name_46'

    # text
    expect(page).to have_selector '.govuk-hint', text: 'Text - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--text_auto_name_47', with: "One"

    # textarea
    expect(page).to have_selector '.govuk-hint', text: 'Textarea - Fourth - hint text'

    fill_in 'page_fieldset-fourth--fieldset--textarea_auto_name_48', with: "One"

    # upload
    attach_file('auto_name__49[1]', 'spec/fixtures/files/1.jpg')

    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - Fourth - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '1.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    expect(page).to have_selector 'h2:nth-of-type(4)', text: 'Fieldset - Fourth - section heading'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__key', text: 'Autocomplete'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(1) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__key', text: 'Checkboxes'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(2) .govuk-summary-list__value', text: /One - summary version\s*Two - summary version\s*Three - summary version\s*Four - summary version/

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__key', text: 'Date'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(3) .govuk-summary-list__value', text: '1 January 1970'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__key', text: 'Email'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(4) .govuk-summary-list__value', text: 'form-builder-team@digital.justice.gov.uk'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__key', text: 'Number'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(5) .govuk-summary-list__value', text: '1'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__key', text: 'Radios'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(6) .govuk-summary-list__value', text: 'One - summary version'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__key', text: 'Select'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(7) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__key', text: 'Text'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(8) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__key', text: 'Textarea'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(9) .govuk-summary-list__value', text: 'One'

    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__key', text: 'Upload'
    expect(page).to have_selector '.govuk-summary-list:nth-of-type(4) .govuk-summary-list__row:nth-of-type(10) .govuk-summary-list__value', text: '1.jpg (1.34MB)'

    ########################################
    #                                      #
    #   BACK                               #
    #                                      #
    ########################################

    # back
    find('.govuk-back-link').click

    # fourth
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Fourth - section heading'
    find('.govuk-back-link').click

    # third
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Third - section heading'
    find('.govuk-back-link').click

    # second
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Second - section heading'
    find('.govuk-back-link').click

    # first
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - First - section heading'

    # upload
    attach_file('auto_name__13[1]', 'spec/fixtures/files/1.jpg')
    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - First - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '1.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # second
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Second - section heading'

    # upload
    attach_file('auto_name__25[1]', 'spec/fixtures/files/2.jpg')
    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - Second - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '2.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # third
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Third - section heading'

    # upload
    attach_file('auto_name__37[1]', 'spec/fixtures/files/3.jpg')
    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - Third - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '3.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # fourth
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Fourth - section heading'

    # upload
    attach_file('auto_name__49[1]', 'spec/fixtures/files/4.jpg')
    continue

    expect(page).to have_selector 'h1', text: 'Fieldset - Fourth - Check'
    expect(page).to have_selector '.fb-upload-descriptions', text: '4.jpg, 1.34MB'

    # radios
    choose 'decision', option: 'accept', visible: false
    continue

    # summary
    expect(page).to have_selector '.fb-sectionHeading', text: 'Fieldset - Summary - section heading'
    expect(page).to have_selector 'h1', text: 'Summary'

    click_on 'Accept and send application'

    # confirmation
    expect(page).to have_selector 'h1.govuk-panel__title', text: 'Fieldset - Confirmation'
  end

  def continue
    click_on 'Continue'
  end
end
