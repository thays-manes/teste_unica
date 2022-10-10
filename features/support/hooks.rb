require 'report_builder'

Before do |scenario|
    @pesquisa = PesquisaScreen.new

    visit 'https://www.zelo.com.br'
    if ENV['BROWSER'].eql? 'chrome-headless'
        Capybara.current_session.current_window.resize_to(1366, 768)
    end
end

#Configuração para evidenciar cenários de sucesso/erro
After do |scenario|
    sufix = ('error' if scenario.failed?) || 'sucess'
    name = scenario.name.tr('', '_').downcase
    foto = save_screenshot("image/#{sufix}-#{name}.png")
    base64_img = Base64.encode64(File.open(foto, 'rb:UTF-8', &:read))
end

#Configuração de report com melhor visualização, gerando gráficos de todos os cenários
at_exit do
    time = Time.now.to_s
    ReportBuilder.configure do |config|
      config.json_path = 'logs/report.json'
      config.report_path = 'logs/report'
      config.report_types = [:html]
      config.report_title = 'Testes automatizados Única'
      config.compress_images = false
      config.color = 'indigo'
      config.additional_info = { 'Project name' => 'Teste Técnico Única', 'Platform' => 'WEB',
                                 'Report generated' => time }
    end                           
    ReportBuilder.build_report
end