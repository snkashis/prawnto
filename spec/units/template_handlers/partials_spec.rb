require "spec_helper"
require "prawnto/template_handlers/partials.rb"

class PartialTester
  include Prawnto::TemplateHandlers::Partials
end
describe "Prawnto::TemplateHandlers::Partials" do
  subject do
    PartialTester.new
  end

  describe "#get_file_path" do
    before { Rails.stubs(:root).returns("") }

    it "should find partial in the same folder" do
      Dir.expects("[]").with("/app/views/test/_p1.{*.}prawn").returns("some/path")
      path = subject.send :get_file_path, "test/p1"
    end

    it "won't insert underscore if provided" do
      Dir.expects("[]").with("/app/views/test/_p1.{*.}prawn").returns("some/path")
      path = subject.send :get_file_path, "test/_p1"
    end

    it "should look in the current folder first"
  end

  describe "#partial_source" do
  end

  describe "render_partial" do
  end
end
