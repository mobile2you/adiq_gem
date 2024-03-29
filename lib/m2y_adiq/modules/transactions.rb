module M2yAdiq
  class Transactions < Base

    def self.list(from, seller, start = 0, length = 999)
      body = {
        "start": start,
        "length": length,
        "date_init": from,
        "seller_id": seller
      }
      response = post(M2yAdiq.configuration.main_url + TransactionsPaths::LIST, body)
      response.parsed_response
    end

    def self.schedule_receivables(from, to, seller, start = 0, length = 999)
      body = {
        "start": start,
        "length": length,
        "date_init": from,
        "date_end": to,
        "seller_id": seller
      }
      response = post(M2yAdiq.configuration.main_url + TransactionsPaths::SCHEDULE_LIST, body)
      response.parsed_response
    end

  end
end
