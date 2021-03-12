require 'test_helper'

class ControlledElementsTest < ActiveSupport::TestCase

  describe "controlled elements tests" do
    it "can return proper description given specified field for umm_json" do
      controlled_elements = ControlledElements.instance
      map = controlled_elements.mapping("umm_json")
      value = map["ArchiveAndDistributionInformation/FileArchiveInformation/Format"]
      assert_includes(value,'GCMD Keywords https://gcmd.earthdata.nasa.gov/kms/concepts/concept_scheme/GranuleDataFormat/?format=csv')

    end

    it "can return proper description given specified field for dif10" do
      controlled_elements = ControlledElements.instance
      map = controlled_elements.mapping("dif10")
      value = map["Location/Location_Category"]
      assert_includes(value,'Only values from the "Location_Category" column')
      controlled_elements.export_controlled_elements_to_csv('echo10')
    end

    it "can return proper description given specified field for echo10" do
      controlled_elements = ControlledElements.instance
      map = controlled_elements.mapping("echo10")
      value = map["DOI/MissingReason"]
      assert_includes(value,'ECHO metadata common schema MissingReason ["Unknown"]')
    end

  end
end
