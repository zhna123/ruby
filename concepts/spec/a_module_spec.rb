require_relative '../a_module'

describe A do
  context "module testing" do

  let(:extended_class) { Class.new {extend A}}
  let(:including_class) {Class.new {include A}}

    it "works" do
      expect(extended_class.hello("Foo")).to eq "hello Foo"
      expect(extended_class.bye("Foo")).to eq "bye Foo"
      expect(including_class.new.hello("Foo")).to eq "hello Foo"
      expect(including_class.new.bye("Foo")).to eq "bye Foo"
    end

  end

end