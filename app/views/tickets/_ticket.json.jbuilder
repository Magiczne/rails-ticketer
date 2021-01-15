json.extract! ticket, :id, :name, :seat_id_seq, :address, :price, :phone, :event_id, :email_address, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
