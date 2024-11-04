# Using curl with the app

* GET index

```
curl --header "Content-Type: application/json" \
  --request GET \
  http://localhost:3000/users
```

* GET show

```
curl --header "Content-Type: application/json" \
  --request GET \
  http://localhost:3000/users/1
```

* POST create

```
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"first_name":"Bob","last_name":"Evans","email":"b.evans@example.com"}' \
  http://localhost:3000/users
```

* PUT update

```
curl --header "Content-Type: application/json" \
  --request PUT \
  --data '{"email":"b.evans@gmail.org"}' \
  http://localhost:3000/users/1
```

* DELETE destroy

```
curl --header "Content-Type: application/json" \
  --request DELETE \
  http://localhost:3000/users/2
```
