# SHMainProject    
##  代码组件化常用的2种实现protocol和target-action     

### Protocol实现      
1. 声明一个管理协议的类protocolManager，用于保存对应协议的实现对象    
2. 需要被组件的代码模块（GoodsDetailController），需要提供对外的接口，接收参数或者handler
3. 在实现过程中为了拓展性，可以提供一个provide类，用于对协议的注册和实现，以及被组件模块的功能拓展
