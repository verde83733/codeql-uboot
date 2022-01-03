import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(MacroInvocation mi |
        mi.getMacro().getName() in ["ntohs", "ntohl", "ntohll"]
        and mi.getExpr() = this
      // TODO: <condition>
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"