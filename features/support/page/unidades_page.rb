class Unidades < SitePrism::Page
    set_url ''

    element :unidades_btn, :xpath, "/html/body/div[2]/div/div[2]/div/div/div/div/div[16]/a"
    element :filtro_facilidades_combo, "#checkoox-select-facilities"
    element :brasil1, "#anchor-unit-cell-braz-leme"

    def selecionar_filtro
        filtro_facilidades_combo.click
        scroll_to(brasil1)
        find(:xpath, "//div[@class='checkbox-selectcomponentstyle__CheckboxSelectScrollStyled-sc-7ktrvg-4 hverji']", :text => 'Próximo ao metrô').select_option
    end

    def ver_detalhes
        find(:xpath, "/html/body/div[2]/div/div[9]/div[2]/div[2]/div[1]/div/div[4]/div[2]/a/div").click
        sleep 2
    end
end