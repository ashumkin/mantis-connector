require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsMantisconnect = "http://futureware.biz/mantisconnect"

  EncodedRegistry.set(
    StringArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => ObjectRef,
    :schema_type => XSD::QName.new(NsMantisconnect, "ObjectRef"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ObjectRefArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "ObjectRef") }
  )

  EncodedRegistry.register(
    :class => AccountData,
    :schema_type => XSD::QName.new(NsMantisconnect, "AccountData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["real_name", ["SOAP::SOAPString", XSD::QName.new(nil, "real_name")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UserData,
    :schema_type => XSD::QName.new(NsMantisconnect, "UserData"),
    :schema_element => [
      ["account_data", ["AccountData", XSD::QName.new(nil, "account_data")], [0, 1]],
      ["access_level", ["SOAP::SOAPInteger", XSD::QName.new(nil, "access_level")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    AccountDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "AccountData") }
  )

  EncodedRegistry.register(
    :class => AttachmentData,
    :schema_type => XSD::QName.new(NsMantisconnect, "AttachmentData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")], [0, 1]],
      ["size", ["SOAP::SOAPInteger", XSD::QName.new(nil, "size")], [0, 1]],
      ["content_type", ["SOAP::SOAPString", XSD::QName.new(nil, "content_type")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["download_url", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "download_url")], [0, 1]],
      ["user_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "user_id")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    AttachmentDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "AttachmentData") }
  )

  EncodedRegistry.register(
    :class => ProjectAttachmentData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProjectAttachmentData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["size", ["SOAP::SOAPInteger", XSD::QName.new(nil, "size")], [0, 1]],
      ["content_type", ["SOAP::SOAPString", XSD::QName.new(nil, "content_type")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["download_url", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "download_url")], [0, 1]],
      ["user_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "user_id")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ProjectAttachmentDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "ProjectAttachmentData") }
  )

  EncodedRegistry.register(
    :class => RelationshipData,
    :schema_type => XSD::QName.new(NsMantisconnect, "RelationshipData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["type", ["ObjectRef", XSD::QName.new(nil, "type")], [0, 1]],
      ["target_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "target_id")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    RelationshipDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "RelationshipData") }
  )

  EncodedRegistry.register(
    :class => IssueNoteData,
    :schema_type => XSD::QName.new(NsMantisconnect, "IssueNoteData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["reporter", ["AccountData", XSD::QName.new(nil, "reporter")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "text")], [0, 1]],
      ["view_state", ["ObjectRef", XSD::QName.new(nil, "view_state")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["last_modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "last_modified")], [0, 1]],
      ["time_tracking", ["SOAP::SOAPInteger", XSD::QName.new(nil, "time_tracking")], [0, 1]],
      ["note_type", ["SOAP::SOAPInteger", XSD::QName.new(nil, "note_type")], [0, 1]],
      ["note_attr", ["SOAP::SOAPString", XSD::QName.new(nil, "note_attr")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    IssueNoteDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "IssueNoteData") }
  )

  EncodedRegistry.register(
    :class => IssueData,
    :schema_type => XSD::QName.new(NsMantisconnect, "IssueData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["view_state", ["ObjectRef", XSD::QName.new(nil, "view_state")], [0, 1]],
      ["last_updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "last_updated")], [0, 1]],
      ["project", ["ObjectRef", XSD::QName.new(nil, "project")], [0, 1]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["priority", ["ObjectRef", XSD::QName.new(nil, "priority")], [0, 1]],
      ["severity", ["ObjectRef", XSD::QName.new(nil, "severity")], [0, 1]],
      ["status", ["ObjectRef", XSD::QName.new(nil, "status")], [0, 1]],
      ["reporter", ["AccountData", XSD::QName.new(nil, "reporter")], [0, 1]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")], [0, 1]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(nil, "build")], [0, 1]],
      ["platform", ["SOAP::SOAPString", XSD::QName.new(nil, "platform")], [0, 1]],
      ["os", ["SOAP::SOAPString", XSD::QName.new(nil, "os")], [0, 1]],
      ["os_build", ["SOAP::SOAPString", XSD::QName.new(nil, "os_build")], [0, 1]],
      ["reproducibility", ["ObjectRef", XSD::QName.new(nil, "reproducibility")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["sponsorship_total", ["SOAP::SOAPInteger", XSD::QName.new(nil, "sponsorship_total")], [0, 1]],
      ["handler", ["AccountData", XSD::QName.new(nil, "handler")], [0, 1]],
      ["projection", ["ObjectRef", XSD::QName.new(nil, "projection")], [0, 1]],
      ["eta", ["ObjectRef", XSD::QName.new(nil, "eta")], [0, 1]],
      ["resolution", ["ObjectRef", XSD::QName.new(nil, "resolution")], [0, 1]],
      ["fixed_in_version", ["SOAP::SOAPString", XSD::QName.new(nil, "fixed_in_version")], [0, 1]],
      ["target_version", ["SOAP::SOAPString", XSD::QName.new(nil, "target_version")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["steps_to_reproduce", ["SOAP::SOAPString", XSD::QName.new(nil, "steps_to_reproduce")], [0, 1]],
      ["additional_information", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_information")], [0, 1]],
      ["attachments", ["AttachmentDataArray", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["relationships", ["RelationshipDataArray", XSD::QName.new(nil, "relationships")], [0, 1]],
      ["notes", ["IssueNoteDataArray", XSD::QName.new(nil, "notes")], [0, 1]],
      ["custom_fields", ["CustomFieldValueForIssueDataArray", XSD::QName.new(nil, "custom_fields")], [0, 1]],
      ["due_date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "due_date")], [0, 1]],
      ["monitors", ["AccountDataArray", XSD::QName.new(nil, "monitors")], [0, 1]],
      ["sticky", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "sticky")], [0, 1]],
      ["tags", ["ObjectRefArray", XSD::QName.new(nil, "tags")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    IssueDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "IssueData") }
  )

  EncodedRegistry.register(
    :class => IssueHeaderData,
    :schema_type => XSD::QName.new(NsMantisconnect, "IssueHeaderData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")]],
      ["view_state", ["SOAP::SOAPInteger", XSD::QName.new(nil, "view_state")]],
      ["last_updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "last_updated")]],
      ["project", ["SOAP::SOAPInteger", XSD::QName.new(nil, "project")]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")]],
      ["priority", ["SOAP::SOAPInteger", XSD::QName.new(nil, "priority")]],
      ["severity", ["SOAP::SOAPInteger", XSD::QName.new(nil, "severity")]],
      ["status", ["SOAP::SOAPInteger", XSD::QName.new(nil, "status")]],
      ["reporter", ["SOAP::SOAPInteger", XSD::QName.new(nil, "reporter")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["handler", ["SOAP::SOAPInteger", XSD::QName.new(nil, "handler")]],
      ["resolution", ["SOAP::SOAPInteger", XSD::QName.new(nil, "resolution")]],
      ["attachments_count", ["SOAP::SOAPInteger", XSD::QName.new(nil, "attachments_count")]],
      ["notes_count", ["SOAP::SOAPInteger", XSD::QName.new(nil, "notes_count")]]
    ]
  )

  EncodedRegistry.set(
    IssueHeaderDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "IssueHeaderData") }
  )

  EncodedRegistry.register(
    :class => ProjectData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProjectData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["status", ["ObjectRef", XSD::QName.new(nil, "status")], [0, 1]],
      ["enabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enabled")], [0, 1]],
      ["view_state", ["ObjectRef", XSD::QName.new(nil, "view_state")], [0, 1]],
      ["access_min", ["ObjectRef", XSD::QName.new(nil, "access_min")], [0, 1]],
      ["file_path", ["SOAP::SOAPString", XSD::QName.new(nil, "file_path")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["subprojects", ["ProjectDataArray", XSD::QName.new(nil, "subprojects")], [0, 1]],
      ["inherit_global", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "inherit_global")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ProjectDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "ProjectData") }
  )

  EncodedRegistry.register(
    :class => ProjectVersionData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProjectVersionData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["project_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "project_id")], [0, 1]],
      ["date_order", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_order")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")], [0, 1]],
      ["obsolete", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "obsolete")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ProjectVersionDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "ProjectVersionData") }
  )

  EncodedRegistry.register(
    :class => FilterData,
    :schema_type => XSD::QName.new(NsMantisconnect, "FilterData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["owner", ["AccountData", XSD::QName.new(nil, "owner")], [0, 1]],
      ["project_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "project_id")], [0, 1]],
      ["is_public", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_public")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["filter_string", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_string")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    FilterDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "FilterData") }
  )

  EncodedRegistry.register(
    :class => CustomFieldDefinitionData,
    :schema_type => XSD::QName.new(NsMantisconnect, "CustomFieldDefinitionData"),
    :schema_element => [
      ["field", ["ObjectRef", XSD::QName.new(nil, "field")], [0, 1]],
      ["type", ["SOAP::SOAPInteger", XSD::QName.new(nil, "type")], [0, 1]],
      ["possible_values", ["SOAP::SOAPString", XSD::QName.new(nil, "possible_values")], [0, 1]],
      ["default_value", ["SOAP::SOAPString", XSD::QName.new(nil, "default_value")], [0, 1]],
      ["valid_regexp", ["SOAP::SOAPString", XSD::QName.new(nil, "valid_regexp")], [0, 1]],
      ["access_level_r", ["SOAP::SOAPInteger", XSD::QName.new(nil, "access_level_r")], [0, 1]],
      ["access_level_rw", ["SOAP::SOAPInteger", XSD::QName.new(nil, "access_level_rw")], [0, 1]],
      ["length_min", ["SOAP::SOAPInteger", XSD::QName.new(nil, "length_min")], [0, 1]],
      ["length_max", ["SOAP::SOAPInteger", XSD::QName.new(nil, "length_max")], [0, 1]],
      ["advanced", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "advanced")], [0, 1]],
      ["display_report", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_report")], [0, 1]],
      ["display_update", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_update")], [0, 1]],
      ["display_resolved", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_resolved")], [0, 1]],
      ["display_closed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_closed")], [0, 1]],
      ["require_report", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_report")], [0, 1]],
      ["require_update", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_update")], [0, 1]],
      ["require_resolved", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_resolved")], [0, 1]],
      ["require_closed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_closed")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    CustomFieldDefinitionDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "CustomFieldDefinitionData") }
  )

  EncodedRegistry.register(
    :class => CustomFieldLinkForProjectData,
    :schema_type => XSD::QName.new(NsMantisconnect, "CustomFieldLinkForProjectData"),
    :schema_element => [
      ["field", ["ObjectRef", XSD::QName.new(nil, "field")], [0, 1]],
      ["sequence", ["SOAP::SOAPByte", XSD::QName.new(nil, "sequence")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    CustomFieldLinkForProjectDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "CustomFieldLinkForProjectData") }
  )

  EncodedRegistry.register(
    :class => CustomFieldValueForIssueData,
    :schema_type => XSD::QName.new(NsMantisconnect, "CustomFieldValueForIssueData"),
    :schema_element => [
      ["field", ["ObjectRef", XSD::QName.new(nil, "field")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    CustomFieldValueForIssueDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "CustomFieldValueForIssueData") }
  )

  EncodedRegistry.register(
    :class => TagData,
    :schema_type => XSD::QName.new(NsMantisconnect, "TagData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["user_id", ["AccountData", XSD::QName.new(nil, "user_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["date_created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_created")], [0, 1]],
      ["date_updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_updated")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    TagDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "TagData") }
  )

  EncodedRegistry.register(
    :class => TagDataSearchResult,
    :schema_type => XSD::QName.new(NsMantisconnect, "TagDataSearchResult"),
    :schema_element => [
      ["results", ["TagDataArray", XSD::QName.new(nil, "results")], [0, 1]],
      ["total_results", ["SOAP::SOAPInteger", XSD::QName.new(nil, "total_results")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ProfileData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProfileData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["user_id", ["AccountData", XSD::QName.new(nil, "user_id")], [0, 1]],
      ["platform", ["SOAP::SOAPString", XSD::QName.new(nil, "platform")], [0, 1]],
      ["os", ["SOAP::SOAPString", XSD::QName.new(nil, "os")], [0, 1]],
      ["os_build", ["SOAP::SOAPString", XSD::QName.new(nil, "os_build")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ProfileDataArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsMantisconnect, "ProfileData") }
  )

  EncodedRegistry.register(
    :class => ProfileDataSearchResult,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProfileDataSearchResult"),
    :schema_element => [
      ["results", ["ProfileDataArray", XSD::QName.new(nil, "results")], [0, 1]],
      ["total_results", ["SOAP::SOAPInteger", XSD::QName.new(nil, "total_results")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectRef,
    :schema_type => XSD::QName.new(NsMantisconnect, "ObjectRef"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountData,
    :schema_type => XSD::QName.new(NsMantisconnect, "AccountData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["real_name", ["SOAP::SOAPString", XSD::QName.new(nil, "real_name")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserData,
    :schema_type => XSD::QName.new(NsMantisconnect, "UserData"),
    :schema_element => [
      ["account_data", ["AccountData", XSD::QName.new(nil, "account_data")], [0, 1]],
      ["access_level", ["SOAP::SOAPInteger", XSD::QName.new(nil, "access_level")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AttachmentData,
    :schema_type => XSD::QName.new(NsMantisconnect, "AttachmentData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")], [0, 1]],
      ["size", ["SOAP::SOAPInteger", XSD::QName.new(nil, "size")], [0, 1]],
      ["content_type", ["SOAP::SOAPString", XSD::QName.new(nil, "content_type")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["download_url", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "download_url")], [0, 1]],
      ["user_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "user_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProjectAttachmentData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProjectAttachmentData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["size", ["SOAP::SOAPInteger", XSD::QName.new(nil, "size")], [0, 1]],
      ["content_type", ["SOAP::SOAPString", XSD::QName.new(nil, "content_type")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["download_url", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "download_url")], [0, 1]],
      ["user_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "user_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RelationshipData,
    :schema_type => XSD::QName.new(NsMantisconnect, "RelationshipData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["type", ["ObjectRef", XSD::QName.new(nil, "type")], [0, 1]],
      ["target_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "target_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IssueNoteData,
    :schema_type => XSD::QName.new(NsMantisconnect, "IssueNoteData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["reporter", ["AccountData", XSD::QName.new(nil, "reporter")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "text")], [0, 1]],
      ["view_state", ["ObjectRef", XSD::QName.new(nil, "view_state")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["last_modified", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "last_modified")], [0, 1]],
      ["time_tracking", ["SOAP::SOAPInteger", XSD::QName.new(nil, "time_tracking")], [0, 1]],
      ["note_type", ["SOAP::SOAPInteger", XSD::QName.new(nil, "note_type")], [0, 1]],
      ["note_attr", ["SOAP::SOAPString", XSD::QName.new(nil, "note_attr")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IssueData,
    :schema_type => XSD::QName.new(NsMantisconnect, "IssueData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["view_state", ["ObjectRef", XSD::QName.new(nil, "view_state")], [0, 1]],
      ["last_updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "last_updated")], [0, 1]],
      ["project", ["ObjectRef", XSD::QName.new(nil, "project")], [0, 1]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")], [0, 1]],
      ["priority", ["ObjectRef", XSD::QName.new(nil, "priority")], [0, 1]],
      ["severity", ["ObjectRef", XSD::QName.new(nil, "severity")], [0, 1]],
      ["status", ["ObjectRef", XSD::QName.new(nil, "status")], [0, 1]],
      ["reporter", ["AccountData", XSD::QName.new(nil, "reporter")], [0, 1]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")], [0, 1]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(nil, "build")], [0, 1]],
      ["platform", ["SOAP::SOAPString", XSD::QName.new(nil, "platform")], [0, 1]],
      ["os", ["SOAP::SOAPString", XSD::QName.new(nil, "os")], [0, 1]],
      ["os_build", ["SOAP::SOAPString", XSD::QName.new(nil, "os_build")], [0, 1]],
      ["reproducibility", ["ObjectRef", XSD::QName.new(nil, "reproducibility")], [0, 1]],
      ["date_submitted", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_submitted")], [0, 1]],
      ["sponsorship_total", ["SOAP::SOAPInteger", XSD::QName.new(nil, "sponsorship_total")], [0, 1]],
      ["handler", ["AccountData", XSD::QName.new(nil, "handler")], [0, 1]],
      ["projection", ["ObjectRef", XSD::QName.new(nil, "projection")], [0, 1]],
      ["eta", ["ObjectRef", XSD::QName.new(nil, "eta")], [0, 1]],
      ["resolution", ["ObjectRef", XSD::QName.new(nil, "resolution")], [0, 1]],
      ["fixed_in_version", ["SOAP::SOAPString", XSD::QName.new(nil, "fixed_in_version")], [0, 1]],
      ["target_version", ["SOAP::SOAPString", XSD::QName.new(nil, "target_version")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["steps_to_reproduce", ["SOAP::SOAPString", XSD::QName.new(nil, "steps_to_reproduce")], [0, 1]],
      ["additional_information", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_information")], [0, 1]],
      ["attachments", ["AttachmentDataArray", XSD::QName.new(nil, "attachments")], [0, 1]],
      ["relationships", ["RelationshipDataArray", XSD::QName.new(nil, "relationships")], [0, 1]],
      ["notes", ["IssueNoteDataArray", XSD::QName.new(nil, "notes")], [0, 1]],
      ["custom_fields", ["CustomFieldValueForIssueDataArray", XSD::QName.new(nil, "custom_fields")], [0, 1]],
      ["due_date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "due_date")], [0, 1]],
      ["monitors", ["AccountDataArray", XSD::QName.new(nil, "monitors")], [0, 1]],
      ["sticky", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "sticky")], [0, 1]],
      ["tags", ["ObjectRefArray", XSD::QName.new(nil, "tags")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IssueHeaderData,
    :schema_type => XSD::QName.new(NsMantisconnect, "IssueHeaderData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")]],
      ["view_state", ["SOAP::SOAPInteger", XSD::QName.new(nil, "view_state")]],
      ["last_updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "last_updated")]],
      ["project", ["SOAP::SOAPInteger", XSD::QName.new(nil, "project")]],
      ["category", ["SOAP::SOAPString", XSD::QName.new(nil, "category")]],
      ["priority", ["SOAP::SOAPInteger", XSD::QName.new(nil, "priority")]],
      ["severity", ["SOAP::SOAPInteger", XSD::QName.new(nil, "severity")]],
      ["status", ["SOAP::SOAPInteger", XSD::QName.new(nil, "status")]],
      ["reporter", ["SOAP::SOAPInteger", XSD::QName.new(nil, "reporter")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["handler", ["SOAP::SOAPInteger", XSD::QName.new(nil, "handler")]],
      ["resolution", ["SOAP::SOAPInteger", XSD::QName.new(nil, "resolution")]],
      ["attachments_count", ["SOAP::SOAPInteger", XSD::QName.new(nil, "attachments_count")]],
      ["notes_count", ["SOAP::SOAPInteger", XSD::QName.new(nil, "notes_count")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProjectData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProjectData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["status", ["ObjectRef", XSD::QName.new(nil, "status")], [0, 1]],
      ["enabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enabled")], [0, 1]],
      ["view_state", ["ObjectRef", XSD::QName.new(nil, "view_state")], [0, 1]],
      ["access_min", ["ObjectRef", XSD::QName.new(nil, "access_min")], [0, 1]],
      ["file_path", ["SOAP::SOAPString", XSD::QName.new(nil, "file_path")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["subprojects", ["ProjectDataArray", XSD::QName.new(nil, "subprojects")], [0, 1]],
      ["inherit_global", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "inherit_global")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProjectVersionData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProjectVersionData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["project_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "project_id")], [0, 1]],
      ["date_order", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_order")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")], [0, 1]],
      ["obsolete", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "obsolete")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FilterData,
    :schema_type => XSD::QName.new(NsMantisconnect, "FilterData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["owner", ["AccountData", XSD::QName.new(nil, "owner")], [0, 1]],
      ["project_id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "project_id")], [0, 1]],
      ["is_public", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_public")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["filter_string", ["SOAP::SOAPString", XSD::QName.new(nil, "filter_string")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomFieldDefinitionData,
    :schema_type => XSD::QName.new(NsMantisconnect, "CustomFieldDefinitionData"),
    :schema_element => [
      ["field", ["ObjectRef", XSD::QName.new(nil, "field")], [0, 1]],
      ["type", ["SOAP::SOAPInteger", XSD::QName.new(nil, "type")], [0, 1]],
      ["possible_values", ["SOAP::SOAPString", XSD::QName.new(nil, "possible_values")], [0, 1]],
      ["default_value", ["SOAP::SOAPString", XSD::QName.new(nil, "default_value")], [0, 1]],
      ["valid_regexp", ["SOAP::SOAPString", XSD::QName.new(nil, "valid_regexp")], [0, 1]],
      ["access_level_r", ["SOAP::SOAPInteger", XSD::QName.new(nil, "access_level_r")], [0, 1]],
      ["access_level_rw", ["SOAP::SOAPInteger", XSD::QName.new(nil, "access_level_rw")], [0, 1]],
      ["length_min", ["SOAP::SOAPInteger", XSD::QName.new(nil, "length_min")], [0, 1]],
      ["length_max", ["SOAP::SOAPInteger", XSD::QName.new(nil, "length_max")], [0, 1]],
      ["advanced", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "advanced")], [0, 1]],
      ["display_report", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_report")], [0, 1]],
      ["display_update", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_update")], [0, 1]],
      ["display_resolved", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_resolved")], [0, 1]],
      ["display_closed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "display_closed")], [0, 1]],
      ["require_report", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_report")], [0, 1]],
      ["require_update", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_update")], [0, 1]],
      ["require_resolved", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_resolved")], [0, 1]],
      ["require_closed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "require_closed")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomFieldLinkForProjectData,
    :schema_type => XSD::QName.new(NsMantisconnect, "CustomFieldLinkForProjectData"),
    :schema_element => [
      ["field", ["ObjectRef", XSD::QName.new(nil, "field")], [0, 1]],
      ["sequence", ["SOAP::SOAPByte", XSD::QName.new(nil, "sequence")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomFieldValueForIssueData,
    :schema_type => XSD::QName.new(NsMantisconnect, "CustomFieldValueForIssueData"),
    :schema_element => [
      ["field", ["ObjectRef", XSD::QName.new(nil, "field")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TagData,
    :schema_type => XSD::QName.new(NsMantisconnect, "TagData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["user_id", ["AccountData", XSD::QName.new(nil, "user_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["date_created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_created")], [0, 1]],
      ["date_updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "date_updated")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TagDataSearchResult,
    :schema_type => XSD::QName.new(NsMantisconnect, "TagDataSearchResult"),
    :schema_element => [
      ["results", ["TagDataArray", XSD::QName.new(nil, "results")], [0, 1]],
      ["total_results", ["SOAP::SOAPInteger", XSD::QName.new(nil, "total_results")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProfileData,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProfileData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")], [0, 1]],
      ["user_id", ["AccountData", XSD::QName.new(nil, "user_id")], [0, 1]],
      ["platform", ["SOAP::SOAPString", XSD::QName.new(nil, "platform")], [0, 1]],
      ["os", ["SOAP::SOAPString", XSD::QName.new(nil, "os")], [0, 1]],
      ["os_build", ["SOAP::SOAPString", XSD::QName.new(nil, "os_build")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProfileDataSearchResult,
    :schema_type => XSD::QName.new(NsMantisconnect, "ProfileDataSearchResult"),
    :schema_element => [
      ["results", ["ProfileDataArray", XSD::QName.new(nil, "results")], [0, 1]],
      ["total_results", ["SOAP::SOAPInteger", XSD::QName.new(nil, "total_results")], [0, 1]]
    ]
  )
end
