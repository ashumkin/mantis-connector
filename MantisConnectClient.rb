#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = MantisConnectPortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   mc_version
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.mc_version

# SYNOPSIS
#   mc_login(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        UserData - {http://futureware.biz/mantisconnect}UserData
#
username = password = nil
puts obj.mc_login(username, password)

# SYNOPSIS
#   mc_enum_status(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_status(username, password)

# SYNOPSIS
#   mc_enum_priorities(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_priorities(username, password)

# SYNOPSIS
#   mc_enum_severities(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_severities(username, password)

# SYNOPSIS
#   mc_enum_reproducibilities(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_reproducibilities(username, password)

# SYNOPSIS
#   mc_enum_projections(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_projections(username, password)

# SYNOPSIS
#   mc_enum_etas(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_etas(username, password)

# SYNOPSIS
#   mc_enum_resolutions(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_resolutions(username, password)

# SYNOPSIS
#   mc_enum_access_levels(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_access_levels(username, password)

# SYNOPSIS
#   mc_enum_project_status(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_project_status(username, password)

# SYNOPSIS
#   mc_enum_project_view_states(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_project_view_states(username, password)

# SYNOPSIS
#   mc_enum_view_states(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_view_states(username, password)

# SYNOPSIS
#   mc_enum_custom_field_types(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ObjectRefArray - {http://futureware.biz/mantisconnect}ObjectRefArray
#
username = password = nil
puts obj.mc_enum_custom_field_types(username, password)

# SYNOPSIS
#   mc_enum_get(username, password, enumeration)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   enumeration     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
username = password = enumeration = nil
puts obj.mc_enum_get(username, password, enumeration)

# SYNOPSIS
#   mc_issue_exists(username, password, issue_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issue_id = nil
puts obj.mc_issue_exists(username, password, issue_id)

# SYNOPSIS
#   mc_issue_get(username, password, issue_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        IssueData - {http://futureware.biz/mantisconnect}IssueData
#
username = password = issue_id = nil
puts obj.mc_issue_get(username, password, issue_id)

# SYNOPSIS
#   mc_issue_get_biggest_id(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = project_id = nil
puts obj.mc_issue_get_biggest_id(username, password, project_id)

# SYNOPSIS
#   mc_issue_get_id_from_summary(username, password, summary)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   summary         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = summary = nil
puts obj.mc_issue_get_id_from_summary(username, password, summary)

# SYNOPSIS
#   mc_issue_add(username, password, issue)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue           IssueData - {http://futureware.biz/mantisconnect}IssueData
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = issue = nil
puts obj.mc_issue_add(username, password, issue)

# SYNOPSIS
#   mc_issue_update(username, password, issueId, issue)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issueId         C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   issue           IssueData - {http://futureware.biz/mantisconnect}IssueData
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issueId = issue = nil
puts obj.mc_issue_update(username, password, issueId, issue)

# SYNOPSIS
#   mc_issue_set_tags(username, password, issue_id, tags)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   tags            TagDataArray - {http://futureware.biz/mantisconnect}TagDataArray
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issue_id = tags = nil
puts obj.mc_issue_set_tags(username, password, issue_id, tags)

# SYNOPSIS
#   mc_issue_delete(username, password, issue_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issue_id = nil
puts obj.mc_issue_delete(username, password, issue_id)

# SYNOPSIS
#   mc_issue_note_add(username, password, issue_id, note)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   note            IssueNoteData - {http://futureware.biz/mantisconnect}IssueNoteData
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = issue_id = note = nil
puts obj.mc_issue_note_add(username, password, issue_id, note)

# SYNOPSIS
#   mc_issue_note_delete(username, password, issue_note_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_note_id   C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issue_note_id = nil
puts obj.mc_issue_note_delete(username, password, issue_note_id)

# SYNOPSIS
#   mc_issue_note_update(username, password, note)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   note            IssueNoteData - {http://futureware.biz/mantisconnect}IssueNoteData
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = note = nil
puts obj.mc_issue_note_update(username, password, note)

# SYNOPSIS
#   mc_issue_relationship_add(username, password, issue_id, relationship)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   relationship    RelationshipData - {http://futureware.biz/mantisconnect}RelationshipData
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = issue_id = relationship = nil
puts obj.mc_issue_relationship_add(username, password, issue_id, relationship)

# SYNOPSIS
#   mc_issue_relationship_delete(username, password, issue_id, relationship_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   relationship_id C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issue_id = relationship_id = nil
puts obj.mc_issue_relationship_delete(username, password, issue_id, relationship_id)

# SYNOPSIS
#   mc_issue_attachment_add(username, password, issue_id, name, file_type, content)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   file_type       C_String - {http://www.w3.org/2001/XMLSchema}string
#   content         Base64Binary - {http://www.w3.org/2001/XMLSchema}base64Binary
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = issue_id = name = file_type = content = nil
puts obj.mc_issue_attachment_add(username, password, issue_id, name, file_type, content)

# SYNOPSIS
#   mc_issue_attachment_delete(username, password, issue_attachment_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_attachment_id C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issue_attachment_id = nil
puts obj.mc_issue_attachment_delete(username, password, issue_attachment_id)

# SYNOPSIS
#   mc_issue_attachment_get(username, password, issue_attachment_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_attachment_id C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Base64Binary - {http://www.w3.org/2001/XMLSchema}base64Binary
#
username = password = issue_attachment_id = nil
puts obj.mc_issue_attachment_get(username, password, issue_attachment_id)

# SYNOPSIS
#   mc_project_add(username, password, project)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project         ProjectData - {http://futureware.biz/mantisconnect}ProjectData
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = project = nil
puts obj.mc_project_add(username, password, project)

# SYNOPSIS
#   mc_project_delete(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = project_id = nil
puts obj.mc_project_delete(username, password, project_id)

# SYNOPSIS
#   mc_project_update(username, password, project_id, project)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   project         ProjectData - {http://futureware.biz/mantisconnect}ProjectData
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = project_id = project = nil
puts obj.mc_project_update(username, password, project_id, project)

# SYNOPSIS
#   mc_project_get_id_from_name(username, password, project_name)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_name    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = project_name = nil
puts obj.mc_project_get_id_from_name(username, password, project_name)

# SYNOPSIS
#   mc_project_get_issues(username, password, project_id, page_number, per_page)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   page_number     C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   per_page        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        IssueDataArray - {http://futureware.biz/mantisconnect}IssueDataArray
#
username = password = project_id = page_number = per_page = nil
puts obj.mc_project_get_issues(username, password, project_id, page_number, per_page)

# SYNOPSIS
#   mc_project_get_issue_headers(username, password, project_id, page_number, per_page)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   page_number     C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   per_page        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        IssueHeaderDataArray - {http://futureware.biz/mantisconnect}IssueHeaderDataArray
#
username = password = project_id = page_number = per_page = nil
puts obj.mc_project_get_issue_headers(username, password, project_id, page_number, per_page)

# SYNOPSIS
#   mc_project_get_users(username, password, project_id, access)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   access          C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        AccountDataArray - {http://futureware.biz/mantisconnect}AccountDataArray
#
username = password = project_id = access = nil
puts obj.mc_project_get_users(username, password, project_id, access)

# SYNOPSIS
#   mc_projects_get_user_accessible(username, password)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ProjectDataArray - {http://futureware.biz/mantisconnect}ProjectDataArray
#
username = password = nil
puts obj.mc_projects_get_user_accessible(username, password)

# SYNOPSIS
#   mc_project_get_categories(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        StringArray - {http://futureware.biz/mantisconnect}StringArray
#
username = password = project_id = nil
puts obj.mc_project_get_categories(username, password, project_id)

# SYNOPSIS
#   mc_project_add_category(username, password, project_id, p_category_name)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   p_category_name C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = project_id = p_category_name = nil
puts obj.mc_project_add_category(username, password, project_id, p_category_name)

# SYNOPSIS
#   mc_project_delete_category(username, password, project_id, p_category_name)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   p_category_name C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = project_id = p_category_name = nil
puts obj.mc_project_delete_category(username, password, project_id, p_category_name)

# SYNOPSIS
#   mc_project_rename_category_by_name(username, password, project_id, p_category_name, p_category_name_new, p_assigned_to)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   p_category_name C_String - {http://www.w3.org/2001/XMLSchema}string
#   p_category_name_new C_String - {http://www.w3.org/2001/XMLSchema}string
#   p_assigned_to   C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = project_id = p_category_name = p_category_name_new = p_assigned_to = nil
puts obj.mc_project_rename_category_by_name(username, password, project_id, p_category_name, p_category_name_new, p_assigned_to)

# SYNOPSIS
#   mc_project_get_versions(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        ProjectVersionDataArray - {http://futureware.biz/mantisconnect}ProjectVersionDataArray
#
username = password = project_id = nil
puts obj.mc_project_get_versions(username, password, project_id)

# SYNOPSIS
#   mc_project_version_add(username, password, version)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   version         ProjectVersionData - {http://futureware.biz/mantisconnect}ProjectVersionData
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = version = nil
puts obj.mc_project_version_add(username, password, version)

# SYNOPSIS
#   mc_project_version_update(username, password, version_id, version)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   version_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   version         ProjectVersionData - {http://futureware.biz/mantisconnect}ProjectVersionData
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = version_id = version = nil
puts obj.mc_project_version_update(username, password, version_id, version)

# SYNOPSIS
#   mc_project_version_delete(username, password, version_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   version_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = version_id = nil
puts obj.mc_project_version_delete(username, password, version_id)

# SYNOPSIS
#   mc_project_get_released_versions(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        ProjectVersionDataArray - {http://futureware.biz/mantisconnect}ProjectVersionDataArray
#
username = password = project_id = nil
puts obj.mc_project_get_released_versions(username, password, project_id)

# SYNOPSIS
#   mc_project_get_unreleased_versions(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        ProjectVersionDataArray - {http://futureware.biz/mantisconnect}ProjectVersionDataArray
#
username = password = project_id = nil
puts obj.mc_project_get_unreleased_versions(username, password, project_id)

# SYNOPSIS
#   mc_project_get_attachments(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        ProjectAttachmentDataArray - {http://futureware.biz/mantisconnect}ProjectAttachmentDataArray
#
username = password = project_id = nil
puts obj.mc_project_get_attachments(username, password, project_id)

# SYNOPSIS
#   mc_project_get_custom_fields(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        CustomFieldDefinitionDataArray - {http://futureware.biz/mantisconnect}CustomFieldDefinitionDataArray
#
username = password = project_id = nil
puts obj.mc_project_get_custom_fields(username, password, project_id)

# SYNOPSIS
#   mc_project_attachment_get(username, password, project_attachment_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_attachment_id C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Base64Binary - {http://www.w3.org/2001/XMLSchema}base64Binary
#
username = password = project_attachment_id = nil
puts obj.mc_project_attachment_get(username, password, project_attachment_id)

# SYNOPSIS
#   mc_project_attachment_add(username, password, project_id, name, title, description, file_type, content)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   title           C_String - {http://www.w3.org/2001/XMLSchema}string
#   description     C_String - {http://www.w3.org/2001/XMLSchema}string
#   file_type       C_String - {http://www.w3.org/2001/XMLSchema}string
#   content         Base64Binary - {http://www.w3.org/2001/XMLSchema}base64Binary
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = project_id = name = title = description = file_type = content = nil
puts obj.mc_project_attachment_add(username, password, project_id, name, title, description, file_type, content)

# SYNOPSIS
#   mc_project_attachment_delete(username, password, project_attachment_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_attachment_id C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = project_attachment_id = nil
puts obj.mc_project_attachment_delete(username, password, project_attachment_id)

# SYNOPSIS
#   mc_project_get_all_subprojects(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        StringArray - {http://futureware.biz/mantisconnect}StringArray
#
username = password = project_id = nil
puts obj.mc_project_get_all_subprojects(username, password, project_id)

# SYNOPSIS
#   mc_filter_get(username, password, project_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        FilterDataArray - {http://futureware.biz/mantisconnect}FilterDataArray
#
username = password = project_id = nil
puts obj.mc_filter_get(username, password, project_id)

# SYNOPSIS
#   mc_filter_get_issues(username, password, project_id, filter_id, page_number, per_page)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   filter_id       C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   page_number     C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   per_page        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        IssueDataArray - {http://futureware.biz/mantisconnect}IssueDataArray
#
username = password = project_id = filter_id = page_number = per_page = nil
puts obj.mc_filter_get_issues(username, password, project_id, filter_id, page_number, per_page)

# SYNOPSIS
#   mc_filter_get_issue_headers(username, password, project_id, filter_id, page_number, per_page)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   filter_id       C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   page_number     C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   per_page        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        IssueHeaderDataArray - {http://futureware.biz/mantisconnect}IssueHeaderDataArray
#
username = password = project_id = filter_id = page_number = per_page = nil
puts obj.mc_filter_get_issue_headers(username, password, project_id, filter_id, page_number, per_page)

# SYNOPSIS
#   mc_config_get_string(username, password, config_var)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   config_var      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
username = password = config_var = nil
puts obj.mc_config_get_string(username, password, config_var)

# SYNOPSIS
#   mc_issue_checkin(username, password, issue_id, comment, fixed)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   issue_id        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   comment         C_String - {http://www.w3.org/2001/XMLSchema}string
#   fixed           Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = issue_id = comment = fixed = nil
puts obj.mc_issue_checkin(username, password, issue_id, comment, fixed)

# SYNOPSIS
#   mc_user_pref_get_pref(username, password, project_id, pref_name)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   project_id      C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   pref_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
username = password = project_id = pref_name = nil
puts obj.mc_user_pref_get_pref(username, password, project_id, pref_name)

# SYNOPSIS
#   mc_user_profiles_get_all(username, password, page_number, per_page)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   page_number     C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   per_page        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        ProfileDataSearchResult - {http://futureware.biz/mantisconnect}ProfileDataSearchResult
#
username = password = page_number = per_page = nil
puts obj.mc_user_profiles_get_all(username, password, page_number, per_page)

# SYNOPSIS
#   mc_tag_get_all(username, password, page_number, per_page)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   page_number     C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#   per_page        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        TagDataSearchResult - {http://futureware.biz/mantisconnect}TagDataSearchResult
#
username = password = page_number = per_page = nil
puts obj.mc_tag_get_all(username, password, page_number, per_page)

# SYNOPSIS
#   mc_tag_add(username, password, tag)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   tag             TagData - {http://futureware.biz/mantisconnect}TagData
#
# RETURNS
#   v_return        C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
username = password = tag = nil
puts obj.mc_tag_add(username, password, tag)

# SYNOPSIS
#   mc_tag_delete(username, password, tag_id)
#
# ARGS
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   tag_id          C_Integer - {http://www.w3.org/2001/XMLSchema}integer
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
username = password = tag_id = nil
puts obj.mc_tag_delete(username, password, tag_id)


