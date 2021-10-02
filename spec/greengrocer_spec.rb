RSpec.describe Greengrocer do
  # ▼単体テスト2 正常系（Greengrocerクラスのインスタンス生成）
  describe ".initialize" do
    context "インスタンスが生成されたとき" do
      let(:product_params) do [
          { name: "トマト", price: 100 },
          { name: "きゅうり", price: 200 }
        ]
      end
      let(:greengrocer){ Greengrocer.new(product_params) }
      let(:products){ greengrocer.products }
      it "@productsの要素の数が，product_paramsの要素の数と等しいこと" do
        expect(products.size).to eq 2
      end

      it "@productsの最初の要素の名前が，product_paramsの最初の要素の名前と等しいこと" do
        expect(products[0].name).to eq "トマト"
      end

      it "@productsの最初の要素の金額が，product_paramsの最初の要素の金額と等しいこと" do
        expect(products[0].price).to eq 100
      end
    end
  end
end