module M2yAdiq
  class Taxes < Base

    def self.cnae_fees
      response = post(M2yAdiq.configuration.main_url + TaxPaths::CNAE_FEE, {})
      response.parsed_response
    end

    def self.sales_plans(seller, start = 0, length = 999)
      body = {
        "start": start,
        "length": length,
        "seller_id": seller
      }
      response = post(M2yAdiq.configuration.main_url + TaxPaths::SALES_PLANS, body)
      response.parsed_response
    end
    def self.combo_fees
      response = get(M2yAdiq.configuration.main_url + TaxPaths::COMBO)
      response.parsed_response
    end

    def self.payment_plans
      response = get(M2yAdiq.configuration.main_url + TaxPaths::PAYMENT_PLAN)
      response.parsed_response
    end

    def self.cnae_list
      response = get(M2yAdiq.configuration.main_url + TaxPaths::CNAE_LIST)
      response.parsed_response
    end

    def self.product_list
      response = get(M2yAdiq.configuration.main_url + TaxPaths::PRODUCTS)
      response.parsed_response
    end

    def self.brand_list
      response = get(M2yAdiq.configuration.main_url + TaxPaths::BRANDS)
      response.parsed_response
    end

  end
end
