<%
    from pwnlib.shellcraft.i386.linux import syscall
%>
<%page args="status = 'ebx'"/>
<%docstring>
Invokes the syscall exit.  See 'man 2 exit' for more information.

Arguments:
    status(int): status

Doctest

    >>> run_assembly_exitcode(shellcraft.i386.linux.exit(33))
    33

</%docstring>

    ${syscall('SYS_exit', status)}
