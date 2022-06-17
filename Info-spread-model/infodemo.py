import sys
import time
import nl4py 

print("\n1) Starting the NetLogoControllerServer with: nl4py.startServer()\n")

nl4py.initialize(sys.argv[1])

print('\n2) Starting the model runs... ')

model = "./infoDemV1.nlogo"

print('\n2.1) Starting the NetLogo Application with: n = nl4py.NetLogoApp()')
n = nl4py.netlogo_app()
print(f'\n2.2) Opening the model at {model} on the NetLogo application with: n.openModel("model")')
n.open_model(model)


print('\n2.4) Send setup-agent and go commands to the model: n.command("setup-agent") and: n.command("go") ')
n.command("setup-agent")
n.command("go")


time.sleep(5000)