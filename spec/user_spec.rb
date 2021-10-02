RSpec.describe User do
  # ▼単体テスト5
  describe ".choose_product" do
    # ▼単体テスト5 正常系(choose_productメソッド)
    context "存在するid（productsの最初の要素のid）を入力したとき" do
      it "@chosen_productのidが，productsの最初の要素のidと等しいこと" do
        user = User.new
        products = [
          Product.new({ name: "トマト", price: 100 }),
          Product.new({ name: "きゅうり", price: 200 })
        ]
        correct_product_id_input = "#{products.first.id}\n"
        allow(ARGF).to receive(:gets).and_return correct_product_id_input
        user.choose_product(products)
        expect(user.chosen_product.id).to eq correct_product_id_input.to_i
      end

      it "@chosen_productの名前が，productsの最初の要素の名前と等しいこと" do
      end

      it "@chosen_productの金額が，productsの最初の要素の金額と等しいこと" do
      end
    end
  end
end