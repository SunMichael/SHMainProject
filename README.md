# SHMainProject    
##  代码组件化常用的2种实现protocol和target-action     

### Protocol实现      
1. 声明一个管理协议的类protocolManager，用于保存对应协议的实现对象    
2. 需要被组件的代码模块（GoodsDetailController），需要提供对外的接口，接收参数或者handler
3. 在实现过程中为了拓展性，可以提供一个provide类，用于对协议的注册和实现，以及被组件模块的功能拓展       


### target-action实现           
1. 声明一个执行方法触发的类TAManager，里面利用runtime和约定的合成方法来触发动作。      
2. 生成组件代码模块的分类，可以在里面定义一些接口，连接外部和模块，传递参数等，不需要具体的实现。
3. 生成单独的方法实现类target， 主要用来对具体逻辑的实现。
