# select organization into var
o=Membership.where(slug:"Winter2020")

# send email invitation for organization
Membership.create_membership(o, "email@address.com", 2)
