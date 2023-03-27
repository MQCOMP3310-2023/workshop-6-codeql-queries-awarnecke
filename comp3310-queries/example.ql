import java

from LoopStmt loop, MethodAccess call, Method method
where
	loop.getAChild*() = call.getEnclosingStmt() and
	call.getMethod() = method and
	method.hasName("nextLine") and
	method.getDeclaringType().hasQualifiedName("java.util", "Scanner")
select loop, call, "nextLine of Scanner called in a loop"