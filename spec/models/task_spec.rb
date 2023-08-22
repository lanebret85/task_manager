require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "should return true if task title is laundry" do
        task = Task.create!(
          title: "laundry",
          description: "do the laundry"
        )

        expect(task.laundry?).to eq(true)
      end

      it "should return false if task title is not laundry" do
        task = Task.create!(
          title: "sweep",
          description: "sweep the floors"
        )

        expect(task.laundry?).to eq(false)
      end

      it "should return false if the task title is not laundry and the task description is also not laundry" do
        task = Task.create!(
          title: "sweep",
          description: "sweep the floors"
        )

        expect(task.laundry?).to eq(false)
      end

      it "should return true if the task title contains the word laundry" do
        task = Task.create!(
          title: "do the laundry",
          description: "do the thing"
        )

        expect(task.contains_laundry?).to eq(true)
      end

      it "should return true if the task title contains the word laundry in upper case or lower case" do
        task = Task.create!(
          title: "do the LAUNDRY",
          description: "do the thing"
        )

        expect(task.contains_laundry?).to eq(true)
      end

      it "should return true if the task title or the description contains the word laundry in upper case or lower case" do
        task = Task.create!(
          title: "do the thing",
          description: "do the Laundry"
        )

        expect(task.contains_laundry?).to eq(true)
      end
    end
  end
end