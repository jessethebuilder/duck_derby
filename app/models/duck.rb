class Duck < ActiveRecord::Base
  validates :pay_pal_email, :presence => true
  validates :price, presence: true, :numericality => {:greater_than_or_equal_to => 0}

  use_farm_slugs

  def paypal_button
    html = %Q|<a href="#{paypal_url("#{host_for_paypal}/ducks/#{to_param}/payment_success")}" >|
    html += '<img src="https://www.paypalobjects.com/en_US/i/btn/x-click-but6.gif" alt="PayPal - The safer, easier way to pay online!">'
    html += '</a>'
    html.html_safe
  end

  def paypal_url(return_url)
    values = {
      :business => pay_pal_email,
      :cmd => '_xclick',
      :return => return_url,
      :invoice => to_param,
      :amount => price,
      :quantity => 1,
      :item_name => "Derby Ducks for #{name}"
    }

    %w{a b}.each_with_index do |item, index|
      values.merge!({
                      "amount_#{index + 1}" => 0.01,
                      "item_name_#{index + 1}" => item
                    })
    end

    "https://www.paypal.com/cgi-bin/webscr?" + values.map{ |k, v| "#{k}=#{v}"}.join('&')
  end

  private

  def host_for_paypal
    Rails.env.production? ? 'http://anysoft.herokuapp.com' : 'http://localhost:3000'
  end
end
