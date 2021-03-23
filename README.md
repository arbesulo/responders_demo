# README

demo app using responders that demonstrates an unexpected behaviour of the gem

```bash
# works as expected
curl -XPOST localhost:3000/users -H "Accept: application/json" -d "name=foo"
{"id":1,"name":"foo","created_at":"2021-03-23T08:45:45.017Z","updated_at":"2021-03-23T08:45:45.017Z"}

# unexpected
curl -XPOST localhost:3000/users -H "Accept: application/json"
{"errors":"#<ActiveModel::Errors:0x00007f99e7036000>"}
```
