json.extract! restauracja, :id, :id_restauracji, :nazwa_restauracji, :opis_restauracji, :kod_pocztowy_r, :ulica_r, :numer_budynku_r, :numer_lokalu_r, :created_at, :updated_at
json.url restauracja_url(restauracja, format: :json)
