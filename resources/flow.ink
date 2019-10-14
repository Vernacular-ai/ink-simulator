-> call_start

=== call_start
Hello, I am an automated assistant. -> call_root

=== call_root
{ call_root > 2: -> exit}

How can I help you?

+ [change] I wanted to change # p:0.9
  -> change_flow
+ [inform] Inform about a product
  -> inform_flow
+ [request_statement] I wanted statement
  -> request_statement_flow
+ [request_agent] Connect me to an agent
  -> request_agent_flow
+ [request_language_change] Request to change language
    Sorry, we only support one language at the moment. -> call_root
+ [_oos_] OOS
  -> oos_flow
+ [_ood_] OOD
  -> ood_flow

=== address_kind_flow
Which address do you want to change?
-> change_flow

=== change_flow
+ [object_to_change\[:address_kind physical\]] my home address
+ [object_to_change\[:address_kind email\]] my email address
* null
    -> address_kind_flow

- {~You need to go to your branch for that|Your bank branch can help you with this}
    -> call_root

=== inform_flow
okay
-> call_root

=== request_statement_flow
done
-> call_root

=== request_agent_flow
Sure. -> transfer

=== oos_flow
I don't know about that. -> call_root

=== ood_flow
I don't understand that. -> call_root

=== exit
Goodbye, have a nice day.
-> END

=== transfer
For better assistance, I am transferring to an agent. Kindly hold.
-> END