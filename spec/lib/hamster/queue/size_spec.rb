require "spec_helper"
require "hamster/queue"

describe Hamster::Queue do
  [:size, :length].each do |method|
    describe "##{method}" do
      [
        [[], 0],
        [["A"], 1],
        [%w[A B C], 3],
      ].each do |values, expected|
        context "on #{values.inspect}" do
          it "returns #{expected.inspect}" do
            Hamster.queue(*values).send(method).should == expected
          end
        end
      end
    end
  end
end