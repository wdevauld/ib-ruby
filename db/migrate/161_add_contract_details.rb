class AddContractDetails < ActiveRecord::Migration

  def change
    # ComboLeg objects represent individual security legs in a "BAG"
    create_table(:contract_details) do |t|
      t.references :contract
      t.string :market_name # The market name for this contract.
      t.string :trading_class # The trading class name for this contract.
      t.float :min_tick # double: The minimum price tick.
      t.integer :price_magnifier # int: Z on LIFFE is reported in index points not GBP.
      t.string :order_types #       The list of valid order types for this contract.
      t.string :valid_exchanges #   The list of exchanges this contract is traded on.
      t.integer :under_con_id # int: The underlying contract ID.
      t.string :long_name #         Descriptive name of the asset.
      t.string :contract_month #    The contract month of the underlying futures contract.
      t.string :industry #    Wide industry. For example Financial.
      t.string :category #    Industry category. For example InvestmentSvc.
      t.string :subcategory # Subcategory. For example Brokerage.
      t.string :time_zone # Time zone for the trading hours (e.g. EST)
      t.string :trading_hours # The trading hours of the product. 20090507:0700-18301830-2330;20090508:CLOSED.
      t.string :liquid_hours #  The liquid trading hours of the product.
      t.string :cusip # The nine-character bond CUSIP or the 12-character SEDOL.
      t.string :ratings # Credit rating of the issuer. Higher rating is less risky investment.
      t.string :desc_append # Additional descriptive information about the bond.
      t.string :bond_type #   The type of bond such as "CORP"
      t.string :coupon_type # The type of bond coupon.
      t.float :coupon # double: The interest rate used to calculate the amount you
      t.string :maturity # The date on which the issuer must repay bond face value
      t.string :issue_date # The date the bond was issued.
      t.string :next_option_date # only if bond has embedded options.
      t.string :next_option_type # only if bond has embedded options.
      t.string :notes # Additional notes if populated for the bond in IB's database
      t.boolean :callable, :limit => 1 # Can be called by the issuer under certain conditions.
      t.boolean :puttable, :limit => 1 # Can be sold back to the issuer under certain conditions
      t.boolean :convertible, :limit => 1 # Can be converted to stock under certain conditions.
      t.boolean :next_option_partial, :limit => 1 # # only if bond has embedded options.
      t.timestamps
    end
  end
end
