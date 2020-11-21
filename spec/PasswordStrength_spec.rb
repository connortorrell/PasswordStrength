require './PasswordStrength'

def strength_answer(password)
  passwordstrength = PasswordStrength.new
  passwordstrength.answer(password)
end

describe "passwordstrength" do
  context "password with less than 8 characters and only numbers" do
    it "returns very weak" do
      expect(strength_answer("2783913")).to eq("Very weak")
    end
  end
  context "password with less than 8 characters and only letters" do
    it "returns weak" do
      expect(strength_answer("heybudd")).to eq("Weak")
    end
  end
  context "password with less than 8 characters and only numbers and letters" do
    it "returns weak" do
      expect(strength_answer("heybud3")).to eq("Weak")
    end
  end
  context "password with 8 or more characters and numbers and letters" do
    it "returns strong" do
      expect(strength_answer("heybudd3")).to eq("Strong")
    end
  end
end