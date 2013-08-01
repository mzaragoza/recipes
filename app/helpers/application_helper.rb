module ApplicationHelper
  def us_states
      [
        ['Alabama', 'AL'],
        ['Alaska', 'AK'],
        ['Arizona', 'AZ'],
        ['Arkansas', 'AR'],
        ['California', 'CA'],
        ['Colorado', 'CO'],
        ['Connecticut', 'CT'],
        ['Delaware', 'DE'],
        ['District of Columbia', 'DC'],
        ['Florida', 'FL'],
        ['Georgia', 'GA'],
        ['Hawaii', 'HI'],
        ['Idaho', 'ID'],
        ['Illinois', 'IL'],
        ['Indiana', 'IN'],
        ['Iowa', 'IA'],
        ['Kansas', 'KS'],
        ['Kentucky', 'KY'],
        ['Louisiana', 'LA'],
        ['Maine', 'ME'],
        ['Maryland', 'MD'],
        ['Massachusetts', 'MA'],
        ['Michigan', 'MI'],
        ['Minnesota', 'MN'],
        ['Mississippi', 'MS'],
        ['Missouri', 'MO'],
        ['Montana', 'MT'],
        ['Nebraska', 'NE'],
        ['Nevada', 'NV'],
        ['New Hampshire', 'NH'],
        ['New Jersey', 'NJ'],
        ['New Mexico', 'NM'],
        ['New York', 'NY'],
        ['North Carolina', 'NC'],
        ['North Dakota', 'ND'],
        ['Ohio', 'OH'],
        ['Oklahoma', 'OK'],
        ['Oregon', 'OR'],
        ['Pennsylvania', 'PA'],
        ['Puerto Rico', 'PR'],
        ['Rhode Island', 'RI'],
        ['South Carolina', 'SC'],
        ['South Dakota', 'SD'],
        ['Tennessee', 'TN'],
        ['Texas', 'TX'],
        ['Utah', 'UT'],
        ['Vermont', 'VT'],
        ['Virginia', 'VA'],
        ['Washington', 'WA'],
        ['West Virginia', 'WV'],
        ['Wisconsin', 'WI'],
        ['Wyoming', 'WY']
      ]
  end

  def pay_status_list
      [
        ['Unpaid', 'unpaid'],
        ['Paid', 'paid'],
      ]
  end
  def subscriptions_type_list
      [
        ['Monthly', 'monthly'],
        ['Yearly', 'yearly'],
      ]
  end
  def payment_method_list
      [
        ['Cash', 'cash'],
        ['Credit Card', 'credit_card'],
        ['Check', 'check'],
      ]
  end

  def trailer_type_list
    [
      ['Box','Box'],
      ['Bus', 'Bus'],
      ['Car-carrying trailer', 'Car-carrying trailer'],
      ['Curtain sider','Curtain sider'],
      ['Drop-deck trailer', 'Drop-deck trailer'],
      ['Double decker', 'Double decker'],
      ['Dry bulk', 'Dry bulk'],
      ['Flatbed', 'Flatbed'],
      ['Hopper bottom', 'Hopper bottom'],
      ['Live bottom', 'Live bottom'],
      ['Livestock trailer', 'Livestock trailer'],
      ['Lowboy', 'Lowboy'],
      ['Reefer', 'Reefer'],
      ['Sidelifter', 'Sidelifter'],
      ['Tanker', 'Tanker'],
      ['Frac','Frac'],
    ]
  end

  def lead_status_list
      [
        ['New', 'new'],
        ['Contacted', 'contacted'],
        ['Converted', 'converted'],
      ]
  end
  
  def suspension_list
      [
        ['Air', 'air'],
        ['Spring', 'spring'],
      ]
  end
  def shipment_status_list
    [
      ['Needs to be dispatched', 'needs to be dispatched'],
      ['Dispatched', 'dispatched'],
      ['En route to pickup', 'en route to pickup'],
      ['Loaded', 'loaded'],
      ['Off loaded', 'off loaded'],
    ]
  end
  def paid_status_list
      [
        ['Unpaid', 'unpaid'],
        ['Paid', 'paid'],
      ]
  end
end

