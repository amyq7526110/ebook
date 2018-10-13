#!/bin/bash 


  #   ${string#substring}

  #      从$string 的左边截掉第一个匹配的$substring

  #   ${string##substring}

  #      从$string 的左边截掉最后一个个匹配的$substring

  stringZ=abcABC123ABCabc

  #    |------|

  #    |-----------|

  echo ${stringZ#a*C}    # 123ABCabc

  # 截掉'a'和'C' 之间最近的匹配

  echo ${stringZ##a*C}  # abc

  # 截掉'a'和'C'之间最远的匹配

  # ${string%substring}

  #     从$string 的右边截掉第一个匹配的$substring

  # ${string%%substring}

  #     从$string的右边截掉最后一个匹配的$substring

  #          ||

  #    |------|


  echo ${stringZ%b*c}      #  abcABC123ABCaa

  #  从$stringZ 的后边开始截掉最后一个匹配的$substring

  echo ${stringZ%%b*c}     #  a



  
