RSpec.describe Student do
  describe ".initialize" do
    context "インスタンスが生成されたとき" do
      it "名前の値が正しいこと" do
        student = Student.new(name: "田中", age: 17)
        expect(student.name).to eq "田中"
      end

      it "年齢の値が正しいこと" do
        student = Student.new(name: "田中", age: 17)
        expect(student.age).to eq 17
      end
    end
  end

  describe ".introduce" do
    it "正しい名前と年齢を含む値が返ること" do
      student = Student.new(name: "田中", age: 17)
      expect(student.introduce).to eq "私は田中です。年齢は17歳です。"
    end
  end
end