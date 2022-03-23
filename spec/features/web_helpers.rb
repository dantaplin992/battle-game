def enter_names_and_play
  visit '/'
    fill_in 'name1', with: 'Yu'
    fill_in 'name2', with: 'Ameno-sagiri'
    click_on 'submit'
end