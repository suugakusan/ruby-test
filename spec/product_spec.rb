RSpec.describe Product do
  # ▼単体テスト1 正常系（Productクラスのインスタンス生成）
  describe ".initialize" do
    context "インスタンスが生成されたとき" do

      it "@@countが1増加すること" do
        product_params = { name: "トマト", price: 100 }
        expect { Product.new(product_params) }
          .to change { Product.class_variable_get("@@count") }.by(1)
      end

      it "商品の@idが，インスタンス生成前の@@countに+1した値と等しいこと" do
      end

      it "商品の@nameが，product_paramsの名前と等しいこと" do
      end

      it "商品の@priceが，product_paramsの金額と等しいこと" do
      end
    end
  end
end