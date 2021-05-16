Dado('que eu acesso o site da Fleury') do
    @unidades.load
end

Dado('acesso a aba Unidades') do
    @unidades.unidades_btn.click
end

Dado('filtro por facilidades') do
    @unidades.selecionar_filtro
end

Quando('clico em Ver detalhes') do
    @unidades.ver_detalhes
end

Entao('vejo o nome da unidade de saúde') do
    expect(page).to have_content 'Chácara Klabin'
end