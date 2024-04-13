bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/items  -H "apikey: password"
bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/items 

#tenant one 
curl bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/walt-test-go-phylax/items -H "apikey: password"


 curl bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/walt-api-2-phylax/items -H "apikey: password"

# tests that run du
curl  -X POST bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/walt-test-go-phylax/items -H -d '{"id":"1", "name":"Item 1"}' "Content-Type: application/json" -H "apikey: password"

curl bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/walt-test-go-phylax/items -H "apikey: walt-test-go-phylax"


#2nd tenant 
curl bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/walt-api-2-phylax/items -H "apikey: walt-api-2-phylax"

curl -X POST http://bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/walt-api-2-phylax/items \
-H "apikey: walt-api-2-phylax" \
-H "Content-Type: application/json" \
-d '{"id":"2", "name":"Item 2"}'

curl bf33ac78-29f3-4b53-9a3e-67dd293f9a70.lb.civo.com/walt-api-2-phylax/items -H "apikey: walt-api-2-phylax"
