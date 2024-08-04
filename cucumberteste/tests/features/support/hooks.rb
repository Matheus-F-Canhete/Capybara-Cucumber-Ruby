Before do
    puts 'estou sendo executado antes de cada cenário'
    @soma = 5 + 5
end

After do
    puts 'estou sendo executado depois de cada cenário'
end

Before '@comeco' do
    puts 'estou sendo executado apenas no cenário da tag começo'
end

After '@final' do
    puts 'estou sendo executado apenas no cenário da tag final'
end