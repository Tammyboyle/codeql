// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from
  ConcreteVarDecl x, ModuleDecl getModule, Type getInterfaceType, string getName, Type getType,
  int getIntroducerInt
where
  toBeTested(x) and
  not x.isUnknown() and
  getModule = x.getModule() and
  getInterfaceType = x.getInterfaceType() and
  getName = x.getName() and
  getType = x.getType() and
  getIntroducerInt = x.getIntroducerInt()
select x, "getModule:", getModule, "getInterfaceType:", getInterfaceType, "getName:", getName,
  "getType:", getType, "getIntroducerInt:", getIntroducerInt
