# select organization into var
o=Membership.where(slug:"Winter2020")

# send email invitation for organization
Membership.create_membership(o, "email@address.com", 2)

# delete memberships (revoke access) to all users in organization
Membership.where(organization_id: 9).each do |ma|
       to_remove << ma
end
to_remove.each do |t|
    t.delete
end
