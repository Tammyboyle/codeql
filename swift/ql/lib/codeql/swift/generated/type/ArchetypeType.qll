// generated by codegen/codegen.py
import codeql.swift.elements.decl.ProtocolDecl
import codeql.swift.elements.type.SubstitutableType
import codeql.swift.elements.type.Type

class ArchetypeTypeBase extends @archetype_type, SubstitutableType {
  string getName() { archetype_types(this, result, _) }

  Type getInterfaceType() {
    exists(Type x |
      archetype_types(this, _, x) and
      result = x.resolve()
    )
  }

  Type getSuperclass() {
    exists(Type x |
      archetype_type_superclasses(this, x) and
      result = x.resolve()
    )
  }

  predicate hasSuperclass() { exists(getSuperclass()) }

  ProtocolDecl getProtocol(int index) {
    exists(ProtocolDecl x |
      archetype_type_protocols(this, index, x) and
      result = x.resolve()
    )
  }

  ProtocolDecl getAProtocol() { result = getProtocol(_) }

  int getNumberOfProtocols() { result = count(getAProtocol()) }
}