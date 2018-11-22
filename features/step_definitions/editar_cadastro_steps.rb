Dado("que esteja logado no site ORANGEHRM") do
    visit('https://opensource-demo.orangehrmlive.com/')
    fill_in('txtUsername',:with =>'Admin')
    fill_in('txtPassword',:with =>'admin123')
    click_button('btnLogin')
  end
  
  Quando("editar o cadastro de um usuario") do
    click_link('menu_pim_viewPimModule')
    click_link('menu_pim_viewEmployeeList')
    click_link('ruy')
    click_button('btnSave')
    fill_in('personal_txtEmpMiddleName',:with =>'duarte')
    fill_in('personal_txtLicExpDate',:with =>'1993-03-18')
    click_button('btnSave')
  end
  
  Então("validar que a alteração foi executada") do
    assert_text('ruy duarte ribeiro')
  end
  