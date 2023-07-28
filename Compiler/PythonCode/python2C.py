import ast

classes = []
classes_id = []

indent = 0

def make_indent():
    c_code = ""
    global indent
    for i in range(indent):
        c_code += "    "
    return c_code

def inc_indent():
    global indent
    indent += 1

def dec_indent():
    global indent
    indent -= 1

def collect_classes(node):
        classes = []
        for item in ast.walk(node):
            if isinstance(item, ast.ClassDef):
                classes.append(item)
        return classes
    

def handle_if_block(node):
    print(ast.dump(node, indent=4))
    condition = ast.unparse(node.test)
    c_code = make_indent()+ f"if ({condition}) {{\n"

    for stmt in node.body:
        inc_indent()
        if isinstance(stmt, ast.BinOp):
            print("BINOP!!!!!!!!!!!!!!!!!!!!!!!!")
                
        elif isinstance(stmt, ast.Expression):
            c_code += make_indent()+f"{stmt.body.value};\n"
        
        elif isinstance(stmt, ast.Expr):
            var_value = ast.unparse(stmt.value)
            c_code += make_indent()+f"{var_value};\n"
                
        elif isinstance(stmt, ast.Assign):
            for target in stmt.targets:
                if isinstance(target, ast.Name):
                    if hasattr(stmt.value,'func') and (stmt.value.func.id in classes_id):
                        var_name = target.id
                        var_value = ast.unparse(stmt.value)
                        c_code += make_indent()+f"{var_name} = {var_value};\n"
                    else:
                        var_name = target.id

                        for target in stmt.targets:
                            var_name = target.id
                            var_value = ast.unparse(stmt.value)
                            c_code += make_indent()+f"{var_name} = {var_value};\n"
        elif isinstance(stmt, ast.Return):
            return_value = ast.unparse(stmt.value)
            c_code += make_indent()+f"return {return_value};\n"
        
        elif isinstance(stmt, ast.If):
            c_code += handle_if_block(stmt)
        dec_indent()
    c_code += make_indent()+"}\n"
    
    for stmt in node.orelse:
        c_code += handle_elif_blocks(stmt)

    return c_code

def handle_elif_blocks(node):
    c_code = ""
    # print(ast.dump(node, indent=4))
    if isinstance(node, ast.If):
        condition = ast.unparse(node.test)
        c_code += make_indent()+f"else if ({condition}) {{\n"

        for stmt in node.body:
            inc_indent()
            if isinstance(stmt, ast.BinOp):
                print("BINOP!!!!!!!!!!!!!!!!!!!!!!!!")
                    
            elif isinstance(stmt, ast.Expression):
                c_code += make_indent()+f"{stmt.body.value};\n"
            
            elif isinstance(stmt, ast.Expr):
                var_value = ast.unparse(stmt.value)
                c_code += make_indent()+f"{var_value};\n"
                    
            elif isinstance(stmt, ast.Assign):
                for target in stmt.targets:
                    if isinstance(target, ast.Name):
                        if hasattr(stmt.value,'func') and (stmt.value.func.id in classes_id):
                            var_name = target.id
                            var_value = ast.unparse(stmt.value)
                            c_code += make_indent()+f"{var_name} = {var_value};\n"
                        else:
                            var_name = target.id

                            for target in stmt.targets:
                                var_name = target.id
                                var_value = ast.unparse(stmt.value)
                                c_code += make_indent()+f"{var_name} = {var_value};\n"
            elif isinstance(stmt, ast.Return):
                return_value = ast.unparse(stmt.value)
                c_code += make_indent()+f"return {return_value};\n"
            
            elif isinstance(stmt, ast.If):
                c_code += handle_if_block(stmt)
            dec_indent()
        c_code += make_indent()+"}\n"
        
        for stmt in node.orelse:
            c_code += handle_elif_blocks(stmt)
            
    elif isinstance(node, ast.Expr):# Need to be fixed!!!
        print("else")
        c_code = make_indent()+"else {\n"
        c_code += make_indent()+ ast.unparse(node) + "\n"+make_indent()+"}\n"
            
    else:
        print("nothing")
        return ""

    return c_code

def translate_class(node):
    if isinstance(node, ast.ClassDef):
        # print(ast.dump(node, indent=4))
        class_name = node.name
        declared_vars = set()
        c_code = f"struct {class_name} {{\n"

        for stmt in node.body:
            inc_indent()
            if isinstance(stmt, ast.FunctionDef):
                if stmt.name == "__init__":
                    for arg in stmt.body:
                        if isinstance(arg, ast.AnnAssign):
                            declared_vars.add(arg.target.attr)
                            if hasattr(arg,"value") and arg.value != None:
                                var_name = arg.target.attr
                                var_value = ast.unparse(arg.value)
                                c_code += make_indent() + f"{arg.annotation.id} {var_name} = {var_value};\n"
                            else:
                                c_code += make_indent() + f"{arg.annotation.id} {arg.target.attr};\n"
                            
                            
                            
                        elif isinstance(stmt, ast.BinOp):
                            print("BINOP!!!!!!!!!!!!!!!!!!!!!!!!")
                                
                        elif isinstance(stmt, ast.Expression):
                            c_code += make_indent() + f"{stmt.body.value};\n"
                        
                        elif isinstance(stmt, ast.Expr):
                            var_value = ast.unparse(stmt.value)
                            c_code += make_indent() + f"{var_value};\n"
                                
                        elif isinstance(stmt, ast.Assign):
                            for target in stmt.targets:
                                if isinstance(target, ast.Name):
                                    var_name = target.id
                                    if var_name not in declared_vars:
                                        c_code += make_indent() + f"int {var_name};\n"
                                        declared_vars.add(var_name)

                            for target in stmt.targets:
                                var_name = target.id
                                var_value = ast.unparse(stmt.value)
                                c_code += make_indent() + f"{var_name} = {var_value};\n"
            dec_indent()

        c_code += "};\n\n"

        for stmt in node.body:
            if isinstance(stmt, ast.FunctionDef) and stmt.name != "__init__":
                c_code += f"{class_name}_{stmt.name}(struct {class_name} * self_{class_name}, "
                
                param_num = -len(stmt.args.defaults)
                param_index = 0
                
                for arg in stmt.args.args:
                    if arg.arg != 'self':
                        c_code +=f" {arg.annotation.id} {arg.arg}"
                        if param_num >= 0:
                            c_code += " = " + str(stmt.args.defaults[param_num].value) + " "
                        param_num += 1
                        param_index += 1
                        if param_index != len(stmt.args.args):
                            c_code += ","
                
                c_code += ") {\n"

                for sub_stmt in stmt.body:
                    inc_indent()
                    if isinstance(sub_stmt, ast.Expr) and isinstance(sub_stmt.value, ast.Call):
                        func_name = ast.unparse(sub_stmt.value.func)
                        c_code += make_indent()+f"{func_name}(self_{class_name}->"

                        for arg in sub_stmt.value.args:
                            if isinstance(arg, ast.Attribute) and isinstance(arg.value, ast.Name) and arg.value.id == "self":
                                arg_name = arg.attr
                                c_code += f"{arg_name}->"

                        c_code = c_code[:-2] + ");\n"
                    elif isinstance(sub_stmt, ast.AnnAssign):
                        declared_vars.add(sub_stmt.target.id)
                        c_code += make_indent()+f"{sub_stmt.annotation.id} {sub_stmt.target.id};\n"
                        
                        var_name = sub_stmt.target.id
                        var_value = ast.unparse(sub_stmt.value)
                        c_code += make_indent()+f"{var_name} = {var_value};\n"
                        
                    
                    elif isinstance(sub_stmt, ast.BinOp):
                        print("BINOP!!!!!!!!!!!!!!!!!!!!!!!!")
                            
                    elif isinstance(sub_stmt, ast.Expression):
                        c_code += f"    {sub_stmt.body.value};\n"
                    
                    elif isinstance(sub_stmt, ast.Expr):
                        var_value = ast.unparse(sub_stmt.value)
                        c_code += f"    {var_value};\n"
                            
                    elif isinstance(sub_stmt, ast.Assign):
                        for target in sub_stmt.targets:
                            if isinstance(target, ast.Name):
                                if hasattr(sub_stmt.value,'func') and (sub_stmt.value.func.id in classes_id):
                                    var_name = target.id
                                    var_value = ast.unparse(sub_stmt.value)
                                    c_code += f"    {var_name} = {var_value};\n"
                                else:
                                    var_name = target.id
                                    if var_name not in declared_vars:
                                        c_code += f"    int {var_name};\n"
                                        declared_vars.add(var_name)

                                    for target in sub_stmt.targets:
                                        var_name = target.id
                                        var_value = ast.unparse(sub_stmt.value)
                                        c_code += f"    {var_name} = {var_value};\n"
                    elif isinstance(sub_stmt, ast.Return):
                        return_value = ast.unparse(sub_stmt.value)
                        c_code += f"    return {return_value};\n"
                    
                    elif isinstance(sub_stmt, ast.If):
                        c_code += handle_if_block(sub_stmt)

                    dec_indent()
                c_code += "}\n\n"

        return c_code


def translate_function(node):
    if isinstance(node, ast.FunctionDef):
        print(ast.dump(node, indent=4))
        if hasattr(node.returns,"id") and node.returns != None:
            c_code = f"{node.returns.id} {node.name}("
        else:
            c_code = f"int {node.name}("
        
        #For check delcared variable
        declared_vars = set()
        declared_class = {}
        print(ast.dump(node, indent=4))
        
        param_num = -len(node.args.defaults)
        param_index = 0
        
        for arg in node.args.args:
            c_code += f" {arg.annotation.id} {arg.arg}"
            if param_num >= 0:
                c_code += " = " + str(node.args.defaults[param_num].value) + " "
            param_num += 1
            param_index += 1
            if param_index != len(node.args.args):
                c_code += ","
        
        c_code += ") {\n"
        
        for arg in node.args.args:
            declared_vars.add(arg.arg) 
            
        inc_indent()
        

        for stmt in node.body:
            if isinstance(stmt, ast.AnnAssign):
                declared_vars.add(stmt.target.id)
                c_code += make_indent()+f"{stmt.annotation.id} {stmt.target.id};\n"
                
                var_name = stmt.target.id
                var_value = noraml_statement(stmt.value)
                c_code += make_indent()+f"{var_name} = {var_value};\n"
                
            
            elif isinstance(stmt, ast.BinOp):
                print("BINOP!!!!!!!!!!!!!!!!!!!!!!!!")
                    
            elif isinstance(stmt, ast.Expression):
                c_code += f"    {stmt.body.value};\n"
            
            elif isinstance(stmt, ast.Expr):
                var_value = ast.unparse(stmt.value)
                c_code += f"    {var_value};\n"
                    
            elif isinstance(stmt, ast.Assign):
                for target in stmt.targets:
                    if isinstance(target, ast.Name):
                        if hasattr(stmt.value,'func') and (stmt.value.func.id in classes_id):
                            var_name = target.id
                            var_value = ast.unparse(stmt.value)
                            c_code += f"    {var_name} = {var_value};\n"
                            declared_class[var_name] = stmt.value.func.id
                        else:
                            var_name = target.id
                            if var_name not in declared_vars:
                                c_code += f"    int {var_name};\n"
                                declared_vars.add(var_name)

                            for target in stmt.targets:
                                var_name = target.id
                                var_value = ast.unparse(stmt.value)
                                c_code += f"    {var_name} = {var_value};\n"
            elif isinstance(stmt, ast.Return):
                return_value = ast.unparse(stmt.value)
                c_code += f"    return {return_value};\n"
            
            elif isinstance(stmt, ast.If):
                c_code += handle_if_block(stmt)
                
        dec_indent()
        c_code += make_indent()+"}\n"
        
        return c_code

def noraml_statement(node):
    print("hello")
    
def python_to_c(source_code):
    tree = ast.parse(source_code)

    c_code = ""
    global classes
    global classes_id
    classes = collect_classes(tree)
    for classes_ in classes:
        classes_id.append(classes_.name)
    for node in ast.walk(tree):
        if isinstance(node, ast.ClassDef):
            c_code += translate_class(node)
        elif isinstance(node, ast.FunctionDef) and node not in (func_node for class_node in classes for func_node in class_node.body):
            print(node.name)
            c_code += translate_function(node)

    return c_code

if __name__ == "__main__":
#     python_code = """
# def foo(a: int = 10) -> char:
#     b:int = a + 10
#     30
#     10+90
#     goo(20+goo(30))
#     a = 20
#     return b

# def bar(x: int, y: float = 10.3) -> int:
#     z = x * (y + foo(10))
#     z = 30 + 60
#     return z
# """

    python_code = """
class dds:
    def __init__(self):
        self.a:int 
    def out(self, b:int, c:int = 10):
        print(self.a)
        if self.a > 0:
            print("hello")
        
def foo( a:int = 10 ):
    new_dds = dds(30+40,50)
    dds_new.out(30,40)
    x:int = 15
    print(a)
"""

    c_code = python_to_c(python_code)
    print('Converted C')
    print('##################################################################')
    print('##################################################################')
    print('##################################################################')
    print(c_code)
