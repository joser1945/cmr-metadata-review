module Modules::RecordFormats::Echo10ControlledElements
  CONTROLLED_ELEMENT_MAP = {
    'DOI/Authority' => 'ECHO 10 schema documentation  Should be http://dx.doi.org/ according to ECHO 10 schema',
    'CollectionDataType' => 'ECHO 10 schema enumeration  SCIENCE_QUALITY, NEAR_REAL_TIME, OTHER',
    'ProcessingCenter' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/providers/providers.csv',
    'ArchiveCenter' =>'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/providers/providers.csv',
    'CollectionState' =>'Currently not controlled by ECHO 10 schema; maps to UMM-C CollectionProgress (UMM-C schema specifies 3 options) ARC reocmmends use of 3 options specified in UMM-C schema = PLANNED, IN WORK, COMPLETE',
    'SpatialKeywords/Keyword' =>'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/locations/locations.csv',
    'Temporal/PeriodicDateTime/DurationUnit' => 'ECHO 10 schema enumeration  3 enumeration values under DurationUnit = DAY, MONTH, YEAR',
    'Temporal/PeriodicDateTime/PeriodCycleDurationUnit'=> 'ECHO 10 schema enumeration  3 enumeration values under DurationUnit = DAY, MONTH, YEAR',
    'Contacts/Contact/Role'=> 'Currently not controlled by ECHO 10 schema; maps to UMM-C DataCenters/Roles, which is enum controlled ARC recommends use of UMM-Common DataCenterRoleEnum = ARCHIVER, DISTRIBUTOR, PROCESSOR, ORIGINATOR',
    'Contacts/Contact/OrganizationPhones/Phone/Type' => 'Currently not controlled by ECHO 10 schema; maps to UMM-C DataCenters/ContactInformation/ContactMechanism/Type, which is enum controlled  ARC recommends use of the UMM-Common ContactMechanismTypeEnum = Direct Line, Email, Facebook, Fax, Mobile, Modem, Primary, TDD/TTY Phone, Telephone, Twitter, U.S. toll free, Other',
    'Contacts/Contact/ContactPersons/ContactPerson/JobPosition' =>'Currently not controlled by ECHO 10 schema; maps to UMM-C ContactPerson/Roles, which is enum controlled ARC recommends use of the UMM-Common DataContactRoleEnum = Data Center Contact, Technical Contact, Science Contact, Investigator, Metadata Author, User Services, Science Software Development',
    'ScienceKeywords/ScienceKeyword/CategoryKeyword'=>  'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/sciencekeywords/sciencekeywords.csv',
    'ScienceKeywords/ScienceKeyword/TopicKeyword' =>'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/sciencekeywords/sciencekeywords.csv',
    'ScienceKeywords/ScienceKeyword/TermKeyword' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/sciencekeywords/sciencekeywords.csv',
    'ScienceKeywords/ScienceKeyword/VariableLevel1Keyword' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/sciencekeywords/sciencekeywords.csv',
    'ScienceKeywords/ScienceKeyword/VariableLevel2Keyword' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/sciencekeywords/sciencekeywords.csv',
    'ScienceKeywords/ScienceKeyword/VariableLevel3Keyword' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/sciencekeywords/sciencekeywords.csv',
    'Platforms/Platform/ShortName' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/platforms/platforms.csv',
    'Platforms/Platform/LongName' =>'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/platforms/platforms.csv',
    'Platforms/Platform/Type' =>'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/platforms/platforms.csv',
    'Platforms/Platform/Instrusments/Instrument/ShortName' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/instruments/instruments.csv',
    'Platforms/Platform/Instrusments/Instrument/LongName' =>'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/instruments/instruments.csv',
    'Platforms/Platform/Instruments/Instrument/Sensors/Sensor/ShortName' => 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/instruments/instruments.csv',
    'Platforms/Platform/Instruments/Instrument/Sensors/Sensor/LongName'=> 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/instruments/instruments.csv',
    'AdditionalAttributes/Additional Attribute/DataType'=>  'ECHO 10 schema enumeration  STRING, FLOAT, INT, BOOLEAN, DATE, TIME, DATETIME, DATE_STRING, TIME_STRING, DATETIME_STRING',
    'Campaigns/Campaign/ShortName'=> 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/projects/projects.csv',
    'Campaigns/Campaign/LongName'=> 'GCMD keywords https://gcmdservices.gsfc.nasa.gov/static/kms/projects/projects.csv',
    'OnlineAccessURLs/OnlineAccessURL/MimeType'  => 'Currently not controlled by ECHO 10 schema; maps to UMM-C RelatedURLs/GetData/Format, which is enum controlled  Do not think ARC has ever seen this field used, but we would recommend use of UMM-Common GetDataTypeFormatEnum  = ascii, binary, GRIB, BUFR, HDF4, HDF5, HDF-EOS4, HDF-EOS5, jpeg, png, tiff, geotiff, kml, Not provided',
    'OnlineResources/Online Resource/Type' => 'This element is definitely controlled; maps to UMM-C Related URLs/Type  Unsure if ARC should be recommending GCMD URL Content Types or the Umm-Common RelatedURLTypeEnum (the differ slightly)',
    'OnlineResources/OnlineResource/MimeType' =>'Currently not controlled by ECHO 10 schema; unable to positively identify mapping to UMM, but this element is most likely maps to RelatedURLs/GetService/MimeType, which is enum controlled ARC recommends use of UMM-Common URLMimeTypeEnum = application/json, application/xml, application/x-netcdf, application/gml+xml, application/vnd.google-earch.kml+xml, image/gif, image/tiff, image/bmp, text/csv, text/xml, application/pdf, application/x-hdf, application/xhdf5, application/octet-stream, application/vnd.google-earth.kmz, image/jpeg, image/png, image/vnd.collada+xml, text/html, text/plain, Not provided',
    'Spatial/SpatialCoverageType'=> 'Currently not controlled by ECHO 10 schema; maps to UMM-C SpatialExtent/SpatialCoverageType, which is enum controlled ARC recommends use of UMM-Common SpatialCoverageTypeEnum = HORIZONTAL, VERTICAL, ORBITAL',
    'Spatial/HorizontalSpatialDomain/Geometry/CoordinateSystem'=> 'ECHO 10 schema enumeration  CARTESIAN, GEODETIC',
    'Spatial/GranuleSpatialRepresentation' => 'ECHO 10 schema enumeration  CARTESIAN, GEODETIC, ORBIT, NO_SPATIAL'
  }
end