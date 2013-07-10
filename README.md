This project was created at LambdaJam on 2012.7.9.  This project follows the tutorial at http://e2project.org/tutorial.html .

# Notes

make shell (rails c)

Unit of library abstraction is called an application.  Erlang uses OS metaphors.  Erlang applications can be started.

appmon:start(). - GUI for exploring applications

Erlang is not data centric (like MVC) but process centric.

"Fault tolerance comes form an intolerance of problems."

e2 is an abstraction layer on top of OTP.

## How this app was created

```bash
make new-project appid=mydb appdir=mydb
cd mydb/
./rebar get-deps
make
```
