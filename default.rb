require 'xsd/qname'

# {http://futureware.biz/mantisconnect}ObjectRef
#   id - SOAP::SOAPInteger
#   name - SOAP::SOAPString
class ObjectRef
  attr_accessor :id
  attr_accessor :name

  def initialize(id = nil, name = nil)
    @id = id
    @name = name
  end
end

# {http://futureware.biz/mantisconnect}AccountData
#   id - SOAP::SOAPInteger
#   name - SOAP::SOAPString
#   real_name - SOAP::SOAPString
#   email - SOAP::SOAPString
class AccountData
  attr_accessor :id
  attr_accessor :name
  attr_accessor :real_name
  attr_accessor :email

  def initialize(id = nil, name = nil, real_name = nil, email = nil)
    @id = id
    @name = name
    @real_name = real_name
    @email = email
  end
end

# {http://futureware.biz/mantisconnect}UserData
#   account_data - AccountData
#   access_level - SOAP::SOAPInteger
#   timezone - SOAP::SOAPString
class UserData
  attr_accessor :account_data
  attr_accessor :access_level
  attr_accessor :timezone

  def initialize(account_data = nil, access_level = nil, timezone = nil)
    @account_data = account_data
    @access_level = access_level
    @timezone = timezone
  end
end

# {http://futureware.biz/mantisconnect}AttachmentData
#   id - SOAP::SOAPInteger
#   filename - SOAP::SOAPString
#   size - SOAP::SOAPInteger
#   content_type - SOAP::SOAPString
#   date_submitted - SOAP::SOAPDateTime
#   download_url - SOAP::SOAPAnyURI
#   user_id - SOAP::SOAPInteger
class AttachmentData
  attr_accessor :id
  attr_accessor :filename
  attr_accessor :size
  attr_accessor :content_type
  attr_accessor :date_submitted
  attr_accessor :download_url
  attr_accessor :user_id

  def initialize(id = nil, filename = nil, size = nil, content_type = nil, date_submitted = nil, download_url = nil, user_id = nil)
    @id = id
    @filename = filename
    @size = size
    @content_type = content_type
    @date_submitted = date_submitted
    @download_url = download_url
    @user_id = user_id
  end
end

# {http://futureware.biz/mantisconnect}ProjectAttachmentData
#   id - SOAP::SOAPInteger
#   filename - SOAP::SOAPString
#   title - SOAP::SOAPString
#   description - SOAP::SOAPString
#   size - SOAP::SOAPInteger
#   content_type - SOAP::SOAPString
#   date_submitted - SOAP::SOAPDateTime
#   download_url - SOAP::SOAPAnyURI
#   user_id - SOAP::SOAPInteger
class ProjectAttachmentData
  attr_accessor :id
  attr_accessor :filename
  attr_accessor :title
  attr_accessor :description
  attr_accessor :size
  attr_accessor :content_type
  attr_accessor :date_submitted
  attr_accessor :download_url
  attr_accessor :user_id

  def initialize(id = nil, filename = nil, title = nil, description = nil, size = nil, content_type = nil, date_submitted = nil, download_url = nil, user_id = nil)
    @id = id
    @filename = filename
    @title = title
    @description = description
    @size = size
    @content_type = content_type
    @date_submitted = date_submitted
    @download_url = download_url
    @user_id = user_id
  end
end

# {http://futureware.biz/mantisconnect}RelationshipData
#   id - SOAP::SOAPInteger
#   type - ObjectRef
#   target_id - SOAP::SOAPInteger
class RelationshipData
  attr_accessor :id
  attr_accessor :type
  attr_accessor :target_id

  def initialize(id = nil, type = nil, target_id = nil)
    @id = id
    @type = type
    @target_id = target_id
  end
end

# {http://futureware.biz/mantisconnect}IssueNoteData
#   id - SOAP::SOAPInteger
#   reporter - AccountData
#   text - SOAP::SOAPString
#   view_state - ObjectRef
#   date_submitted - SOAP::SOAPDateTime
#   last_modified - SOAP::SOAPDateTime
#   time_tracking - SOAP::SOAPInteger
#   note_type - SOAP::SOAPInteger
#   note_attr - SOAP::SOAPString
class IssueNoteData
  attr_accessor :id
  attr_accessor :reporter
  attr_accessor :text
  attr_accessor :view_state
  attr_accessor :date_submitted
  attr_accessor :last_modified
  attr_accessor :time_tracking
  attr_accessor :note_type
  attr_accessor :note_attr

  def initialize(id = nil, reporter = nil, text = nil, view_state = nil, date_submitted = nil, last_modified = nil, time_tracking = nil, note_type = nil, note_attr = nil)
    @id = id
    @reporter = reporter
    @text = text
    @view_state = view_state
    @date_submitted = date_submitted
    @last_modified = last_modified
    @time_tracking = time_tracking
    @note_type = note_type
    @note_attr = note_attr
  end
end

# {http://futureware.biz/mantisconnect}IssueData
#   id - SOAP::SOAPInteger
#   view_state - ObjectRef
#   last_updated - SOAP::SOAPDateTime
#   project - ObjectRef
#   category - SOAP::SOAPString
#   priority - ObjectRef
#   severity - ObjectRef
#   status - ObjectRef
#   reporter - AccountData
#   summary - SOAP::SOAPString
#   version - SOAP::SOAPString
#   build - SOAP::SOAPString
#   platform - SOAP::SOAPString
#   os - SOAP::SOAPString
#   os_build - SOAP::SOAPString
#   reproducibility - ObjectRef
#   date_submitted - SOAP::SOAPDateTime
#   sponsorship_total - SOAP::SOAPInteger
#   handler - AccountData
#   projection - ObjectRef
#   eta - ObjectRef
#   resolution - ObjectRef
#   fixed_in_version - SOAP::SOAPString
#   target_version - SOAP::SOAPString
#   description - SOAP::SOAPString
#   steps_to_reproduce - SOAP::SOAPString
#   additional_information - SOAP::SOAPString
#   attachments - AttachmentDataArray
#   relationships - RelationshipDataArray
#   notes - IssueNoteDataArray
#   custom_fields - CustomFieldValueForIssueDataArray
#   due_date - SOAP::SOAPDateTime
#   monitors - AccountDataArray
#   sticky - SOAP::SOAPBoolean
#   tags - ObjectRefArray
class IssueData
  attr_accessor :id
  attr_accessor :view_state
  attr_accessor :last_updated
  attr_accessor :project
  attr_accessor :category
  attr_accessor :priority
  attr_accessor :severity
  attr_accessor :status
  attr_accessor :reporter
  attr_accessor :summary
  attr_accessor :version
  attr_accessor :build
  attr_accessor :platform
  attr_accessor :os
  attr_accessor :os_build
  attr_accessor :reproducibility
  attr_accessor :date_submitted
  attr_accessor :sponsorship_total
  attr_accessor :handler
  attr_accessor :projection
  attr_accessor :eta
  attr_accessor :resolution
  attr_accessor :fixed_in_version
  attr_accessor :target_version
  attr_accessor :description
  attr_accessor :steps_to_reproduce
  attr_accessor :additional_information
  attr_accessor :attachments
  attr_accessor :relationships
  attr_accessor :notes
  attr_accessor :custom_fields
  attr_accessor :due_date
  attr_accessor :monitors
  attr_accessor :sticky
  attr_accessor :tags

  def initialize(id = nil, view_state = nil, last_updated = nil, project = nil, category = nil, priority = nil, severity = nil, status = nil, reporter = nil, summary = nil, version = nil, build = nil, platform = nil, os = nil, os_build = nil, reproducibility = nil, date_submitted = nil, sponsorship_total = nil, handler = nil, projection = nil, eta = nil, resolution = nil, fixed_in_version = nil, target_version = nil, description = nil, steps_to_reproduce = nil, additional_information = nil, attachments = nil, relationships = nil, notes = nil, custom_fields = nil, due_date = nil, monitors = nil, sticky = nil, tags = nil)
    @id = id
    @view_state = view_state
    @last_updated = last_updated
    @project = project
    @category = category
    @priority = priority
    @severity = severity
    @status = status
    @reporter = reporter
    @summary = summary
    @version = version
    @build = build
    @platform = platform
    @os = os
    @os_build = os_build
    @reproducibility = reproducibility
    @date_submitted = date_submitted
    @sponsorship_total = sponsorship_total
    @handler = handler
    @projection = projection
    @eta = eta
    @resolution = resolution
    @fixed_in_version = fixed_in_version
    @target_version = target_version
    @description = description
    @steps_to_reproduce = steps_to_reproduce
    @additional_information = additional_information
    @attachments = attachments
    @relationships = relationships
    @notes = notes
    @custom_fields = custom_fields
    @due_date = due_date
    @monitors = monitors
    @sticky = sticky
    @tags = tags
  end
end

# {http://futureware.biz/mantisconnect}IssueHeaderData
#   id - SOAP::SOAPInteger
#   view_state - SOAP::SOAPInteger
#   last_updated - SOAP::SOAPDateTime
#   project - SOAP::SOAPInteger
#   category - SOAP::SOAPString
#   priority - SOAP::SOAPInteger
#   severity - SOAP::SOAPInteger
#   status - SOAP::SOAPInteger
#   reporter - SOAP::SOAPInteger
#   summary - SOAP::SOAPString
#   handler - SOAP::SOAPInteger
#   resolution - SOAP::SOAPInteger
#   attachments_count - SOAP::SOAPInteger
#   notes_count - SOAP::SOAPInteger
class IssueHeaderData
  attr_accessor :id
  attr_accessor :view_state
  attr_accessor :last_updated
  attr_accessor :project
  attr_accessor :category
  attr_accessor :priority
  attr_accessor :severity
  attr_accessor :status
  attr_accessor :reporter
  attr_accessor :summary
  attr_accessor :handler
  attr_accessor :resolution
  attr_accessor :attachments_count
  attr_accessor :notes_count

  def initialize(id = nil, view_state = nil, last_updated = nil, project = nil, category = nil, priority = nil, severity = nil, status = nil, reporter = nil, summary = nil, handler = nil, resolution = nil, attachments_count = nil, notes_count = nil)
    @id = id
    @view_state = view_state
    @last_updated = last_updated
    @project = project
    @category = category
    @priority = priority
    @severity = severity
    @status = status
    @reporter = reporter
    @summary = summary
    @handler = handler
    @resolution = resolution
    @attachments_count = attachments_count
    @notes_count = notes_count
  end
end

# {http://futureware.biz/mantisconnect}ProjectData
#   id - SOAP::SOAPInteger
#   name - SOAP::SOAPString
#   status - ObjectRef
#   enabled - SOAP::SOAPBoolean
#   view_state - ObjectRef
#   access_min - ObjectRef
#   file_path - SOAP::SOAPString
#   description - SOAP::SOAPString
#   subprojects - ProjectDataArray
#   inherit_global - SOAP::SOAPBoolean
class ProjectData
  attr_accessor :id
  attr_accessor :name
  attr_accessor :status
  attr_accessor :enabled
  attr_accessor :view_state
  attr_accessor :access_min
  attr_accessor :file_path
  attr_accessor :description
  attr_accessor :subprojects
  attr_accessor :inherit_global

  def initialize(id = nil, name = nil, status = nil, enabled = nil, view_state = nil, access_min = nil, file_path = nil, description = nil, subprojects = nil, inherit_global = nil)
    @id = id
    @name = name
    @status = status
    @enabled = enabled
    @view_state = view_state
    @access_min = access_min
    @file_path = file_path
    @description = description
    @subprojects = subprojects
    @inherit_global = inherit_global
  end
end

# {http://futureware.biz/mantisconnect}ProjectVersionData
#   id - SOAP::SOAPInteger
#   name - SOAP::SOAPString
#   project_id - SOAP::SOAPInteger
#   date_order - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   released - SOAP::SOAPBoolean
#   obsolete - SOAP::SOAPBoolean
class ProjectVersionData
  attr_accessor :id
  attr_accessor :name
  attr_accessor :project_id
  attr_accessor :date_order
  attr_accessor :description
  attr_accessor :released
  attr_accessor :obsolete

  def initialize(id = nil, name = nil, project_id = nil, date_order = nil, description = nil, released = nil, obsolete = nil)
    @id = id
    @name = name
    @project_id = project_id
    @date_order = date_order
    @description = description
    @released = released
    @obsolete = obsolete
  end
end

# {http://futureware.biz/mantisconnect}FilterData
#   id - SOAP::SOAPInteger
#   owner - AccountData
#   project_id - SOAP::SOAPInteger
#   is_public - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   filter_string - SOAP::SOAPString
#   url - SOAP::SOAPString
class FilterData
  attr_accessor :id
  attr_accessor :owner
  attr_accessor :project_id
  attr_accessor :is_public
  attr_accessor :name
  attr_accessor :filter_string
  attr_accessor :url

  def initialize(id = nil, owner = nil, project_id = nil, is_public = nil, name = nil, filter_string = nil, url = nil)
    @id = id
    @owner = owner
    @project_id = project_id
    @is_public = is_public
    @name = name
    @filter_string = filter_string
    @url = url
  end
end

# {http://futureware.biz/mantisconnect}CustomFieldDefinitionData
#   field - ObjectRef
#   type - SOAP::SOAPInteger
#   possible_values - SOAP::SOAPString
#   default_value - SOAP::SOAPString
#   valid_regexp - SOAP::SOAPString
#   access_level_r - SOAP::SOAPInteger
#   access_level_rw - SOAP::SOAPInteger
#   length_min - SOAP::SOAPInteger
#   length_max - SOAP::SOAPInteger
#   advanced - SOAP::SOAPBoolean
#   display_report - SOAP::SOAPBoolean
#   display_update - SOAP::SOAPBoolean
#   display_resolved - SOAP::SOAPBoolean
#   display_closed - SOAP::SOAPBoolean
#   require_report - SOAP::SOAPBoolean
#   require_update - SOAP::SOAPBoolean
#   require_resolved - SOAP::SOAPBoolean
#   require_closed - SOAP::SOAPBoolean
class CustomFieldDefinitionData
  attr_accessor :field
  attr_accessor :type
  attr_accessor :possible_values
  attr_accessor :default_value
  attr_accessor :valid_regexp
  attr_accessor :access_level_r
  attr_accessor :access_level_rw
  attr_accessor :length_min
  attr_accessor :length_max
  attr_accessor :advanced
  attr_accessor :display_report
  attr_accessor :display_update
  attr_accessor :display_resolved
  attr_accessor :display_closed
  attr_accessor :require_report
  attr_accessor :require_update
  attr_accessor :require_resolved
  attr_accessor :require_closed

  def initialize(field = nil, type = nil, possible_values = nil, default_value = nil, valid_regexp = nil, access_level_r = nil, access_level_rw = nil, length_min = nil, length_max = nil, advanced = nil, display_report = nil, display_update = nil, display_resolved = nil, display_closed = nil, require_report = nil, require_update = nil, require_resolved = nil, require_closed = nil)
    @field = field
    @type = type
    @possible_values = possible_values
    @default_value = default_value
    @valid_regexp = valid_regexp
    @access_level_r = access_level_r
    @access_level_rw = access_level_rw
    @length_min = length_min
    @length_max = length_max
    @advanced = advanced
    @display_report = display_report
    @display_update = display_update
    @display_resolved = display_resolved
    @display_closed = display_closed
    @require_report = require_report
    @require_update = require_update
    @require_resolved = require_resolved
    @require_closed = require_closed
  end
end

# {http://futureware.biz/mantisconnect}CustomFieldLinkForProjectData
#   field - ObjectRef
#   sequence - SOAP::SOAPByte
class CustomFieldLinkForProjectData
  attr_accessor :field
  attr_accessor :sequence

  def initialize(field = nil, sequence = nil)
    @field = field
    @sequence = sequence
  end
end

# {http://futureware.biz/mantisconnect}CustomFieldValueForIssueData
#   field - ObjectRef
#   value - SOAP::SOAPString
class CustomFieldValueForIssueData
  attr_accessor :field
  attr_accessor :value

  def initialize(field = nil, value = nil)
    @field = field
    @value = value
  end
end

# {http://futureware.biz/mantisconnect}TagData
#   id - SOAP::SOAPInteger
#   user_id - AccountData
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   date_created - SOAP::SOAPDateTime
#   date_updated - SOAP::SOAPDateTime
class TagData
  attr_accessor :id
  attr_accessor :user_id
  attr_accessor :name
  attr_accessor :description
  attr_accessor :date_created
  attr_accessor :date_updated

  def initialize(id = nil, user_id = nil, name = nil, description = nil, date_created = nil, date_updated = nil)
    @id = id
    @user_id = user_id
    @name = name
    @description = description
    @date_created = date_created
    @date_updated = date_updated
  end
end

# {http://futureware.biz/mantisconnect}TagDataSearchResult
#   results - TagDataArray
#   total_results - SOAP::SOAPInteger
class TagDataSearchResult
  attr_accessor :results
  attr_accessor :total_results

  def initialize(results = nil, total_results = nil)
    @results = results
    @total_results = total_results
  end
end

# {http://futureware.biz/mantisconnect}ProfileData
#   id - SOAP::SOAPInteger
#   user_id - AccountData
#   platform - SOAP::SOAPString
#   os - SOAP::SOAPString
#   os_build - SOAP::SOAPString
#   description - SOAP::SOAPString
class ProfileData
  attr_accessor :id
  attr_accessor :user_id
  attr_accessor :platform
  attr_accessor :os
  attr_accessor :os_build
  attr_accessor :description

  def initialize(id = nil, user_id = nil, platform = nil, os = nil, os_build = nil, description = nil)
    @id = id
    @user_id = user_id
    @platform = platform
    @os = os
    @os_build = os_build
    @description = description
  end
end

# {http://futureware.biz/mantisconnect}ProfileDataSearchResult
#   results - ProfileDataArray
#   total_results - SOAP::SOAPInteger
class ProfileDataSearchResult
  attr_accessor :results
  attr_accessor :total_results

  def initialize(results = nil, total_results = nil)
    @results = results
    @total_results = total_results
  end
end

# {http://futureware.biz/mantisconnect}StringArray
class StringArray < ::Array
end

# {http://futureware.biz/mantisconnect}ObjectRefArray
class ObjectRefArray < ::Array
end

# {http://futureware.biz/mantisconnect}AccountDataArray
class AccountDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}AttachmentDataArray
class AttachmentDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}ProjectAttachmentDataArray
class ProjectAttachmentDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}RelationshipDataArray
class RelationshipDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}IssueNoteDataArray
class IssueNoteDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}IssueDataArray
class IssueDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}IssueHeaderDataArray
class IssueHeaderDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}ProjectDataArray
class ProjectDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}ProjectVersionDataArray
class ProjectVersionDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}FilterDataArray
class FilterDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}CustomFieldDefinitionDataArray
class CustomFieldDefinitionDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}CustomFieldLinkForProjectDataArray
class CustomFieldLinkForProjectDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}CustomFieldValueForIssueDataArray
class CustomFieldValueForIssueDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}TagDataArray
class TagDataArray < ::Array
end

# {http://futureware.biz/mantisconnect}ProfileDataArray
class ProfileDataArray < ::Array
end
