Factory.define(:user) do |f|
  f.name {Random.firstname}
  f.role {%w(Developer Manager Customer).rand}
end