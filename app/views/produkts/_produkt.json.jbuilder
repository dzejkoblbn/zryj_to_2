json.extract! produkt, :id, :id_produktu, :nazwa_produktu, :opis_produktu, :czas_przygotowania, :cena, :restauracja_id, :koszyk_id, :created_at, :updated_at
json.url produkt_url(produkt, format: :json)
