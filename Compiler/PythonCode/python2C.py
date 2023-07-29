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
    

class Basic_Statement:
    def __init__(self):
        print('basic')
        
    def normal_statement(self,node):
        # print(ast.dump(node, indent=4))
        
        c_code = ""
        if isinstance(node, ast.BinOp):
            left_code = self.normal_statement(node.left)
            right_code = self.normal_statement(node.right)
            op_code = self.operator_to_c(node.op)
            return f"({left_code} {op_code} {right_code})"
        elif isinstance(node, ast.Constant):
            return str(node.value)
        
        elif isinstance(node, ast.Expr):
            return f"{self.normal_statement(node.value)};"
        
        elif isinstance(node, ast.Call):
            if hasattr(node.func, 'value'):
                if node.func.value.id in self.declared_class:
                    c_code = ""
                    c_code += f"{self.declared_class[node.func.value.id]}_{node.func.attr}(&{node.func.value.id},"
                    param_num = len(node.args)
                    param_index = 0
                    for stmt in node.args:
                        c_code += self.normal_statement(stmt)
                        param_index += 1
                        if not param_index == param_num:
                            c_code += ', '
                    c_code += ')'
                    return c_code
            else:
                c_code = ""
                c_code += f"{node.func.id}("
                param_num = len(node.args)
                param_index = 0
                for stmt in node.args:
                    c_code += self.normal_statement(stmt)
                    param_index += 1
                    if not param_index == param_num:
                        c_code += ', '
                c_code += ')'
                return c_code
        elif isinstance(node, ast.Name):
            return node.id
        
        elif isinstance(node, ast.Compare):
            return f'( {self.normal_statement(node.left)} {self.operator_to_c(node.ops[0])} {self.normal_statement(node.comparators[0])} )'
    
        elif isinstance(node, ast.Attribute):
            if node.value.id == 'self':
                return 'self_'+self.class_name+f'-> {node.attr}'
        
        elif isinstance(node, ast.BoolOp):
            stmt_num = len(node.values)
            stmt_index = 0
            c_code = ""
            
            for stmt in node.values:
                c_code += self.normal_statement(stmt)
                stmt_index += 1
                if stmt_index != stmt_num:
                    c_code += self.operator_to_c(node.op)
                
            return c_code
            
    def operator_to_c(self, op_node):
        operators_map = {
            ast.Add: "+",
            ast.Sub: "-",
            ast.Mult: "*",
            ast.Div: "/",
            ast.Gt: ">",
            ast.Lt:"<",
            ast.And:"&&",
            ast.Or:"||",
            ast.Eq:"=="
        }
        return operators_map[type(op_node)]
    

    def handle_if_block(self, node):
        print(ast.dump(node, indent=4))
        condition = self.normal_statement(node.test)
        c_code = make_indent()+ f"if ({condition}) {{\n"
    
        for stmt in node.body:
            inc_indent()
            if isinstance(stmt, ast.BinOp):
                c_code += self.normal_statement(stmt)
                    
            elif isinstance(stmt, ast.Expression):
                c_code += make_indent()+f"{stmt.body.value};\n"
            
            elif isinstance(stmt, ast.Expr):
                var_value = self.normal_statement(stmt.value)
                c_code += make_indent()+f"{var_value};\n"
                    
            elif isinstance(stmt, ast.Assign):
                for target in stmt.targets:
                    if isinstance(target, ast.Name):
                        if hasattr(stmt.value,'func') and (stmt.value.func.id in classes_id):
                            var_name = target.id
                            var_value = self.normal_statement(stmt.value)
                            c_code += make_indent()+f"{var_name} = {var_value};\n"
                        else:
                            var_name = target.id
    
                            for target in stmt.targets:
                                var_name = target.id
                                var_value = self.normal_statement(stmt.value)
                                c_code += make_indent()+f"{var_name} = {var_value};\n"
            elif isinstance(stmt, ast.Return):
                return_value = self.normal_statement(stmt.value)
                c_code += make_indent()+f"return {return_value};\n"
            
            elif isinstance(stmt, ast.If):
                c_code += self.handle_if_block(stmt)
            dec_indent()
        c_code += make_indent()+"}\n"
        
        for stmt in node.orelse:
            c_code += self.handle_elif_blocks(stmt)
    
        return c_code
    
    def handle_elif_blocks(self, node):
        c_code = ""
        # print(ast.dump(node, indent=4))
        if isinstance(node, ast.If):
            condition = self.normal_statement(node.test)
            c_code += make_indent()+f"else if ({condition}) {{\n"
    
            for stmt in node.body:
                inc_indent()
                if isinstance(stmt, ast.BinOp):
                    c_code += self.normal_statement(stmt)
                        
                elif isinstance(stmt, ast.Expression):
                    c_code += make_indent()+f"{stmt.body.value};\n"
                
                elif isinstance(stmt, ast.Expr):
                    var_value = self.normal_statement(stmt.value)
                    c_code += make_indent()+f"{var_value};\n"
                        
                elif isinstance(stmt, ast.Assign):
                    for target in stmt.targets:
                        if isinstance(target, ast.Name):
                            if hasattr(stmt.value,'func') and (stmt.value.func.id in classes_id):
                                var_name = target.id
                                var_value = self.normal_statement(stmt.value)
                                c_code += make_indent()+f"{var_name} = {var_value};\n"
                            else:
                                var_name = target.id
    
                                for target in stmt.targets:
                                    var_name = target.id
                                    var_value = self.normal_statement(stmt.value)
                                    c_code += make_indent()+f"{var_name} = {var_value};\n"
                elif isinstance(stmt, ast.Return):
                    return_value = self.normal_statement(stmt.value)
                    c_code += make_indent()+f"return {return_value};\n"
                
                elif isinstance(stmt, ast.If):
                    c_code += self.handle_if_block(stmt)
                dec_indent()
            c_code += make_indent()+"}\n"
            
            for stmt in node.orelse:
                c_code += self.handle_elif_blocks(stmt)
                
        elif isinstance(node, ast.Expr):# Need to be fixed!!!
            print("else")
            c_code = make_indent()+"else {\n"
            c_code += make_indent()+ self.normal_statement(node) + "\n"+make_indent()+"}\n"
                
        else:
            print("nothing")
            return ""
    
        return c_code

class Class_Maker(Basic_Statement):
    def __init__(self):
        self.declared_vars = set()
        self.declared_class = {}
        self.class_name = None
        
    def translate_class(self,node):
        if isinstance(node, ast.ClassDef):
            # print(ast.dump(node, indent=4))
            class_name = node.name
            self.class_name = class_name
            c_code = f"struct {class_name} {{\n"
    
            for stmt in node.body:
                inc_indent()
                if isinstance(stmt, ast.FunctionDef):
                    if stmt.name == "__init__":
                        for arg in stmt.body:
                            if isinstance(arg, ast.AnnAssign):
                                self.declared_vars.add(arg.target.attr)
                                if hasattr(arg,"value") and arg.value != None:
                                    var_name = arg.target.attr
                                    var_value = self.normal_statement(arg.value)
                                    c_code += make_indent() + f"{arg.annotation.id} {var_name} = {var_value};\n"
                                else:
                                    c_code += make_indent() + f"{arg.annotation.id} {arg.target.attr};\n"
                                
                                
                                
                            elif isinstance(stmt, ast.BinOp):
                                c_code += self.normal_statement(stmt)
                                    
                            elif isinstance(stmt, ast.Expression):
                                c_code += make_indent() + f"{stmt.body.value};\n"
                            
                            elif isinstance(stmt, ast.Expr):
                                var_value = self.normal_statement(stmt.value)
                                c_code += make_indent() + f"{var_value};\n"
                                    
                            elif isinstance(stmt, ast.Assign):
                                for target in stmt.targets:
                                    if isinstance(target, ast.Name):
                                        var_name = target.id
                                        if var_name not in self.declared_vars:
                                            c_code += make_indent() + f"int {var_name};\n"
                                            self.declared_vars.add(var_name)
    
                                for target in stmt.targets:
                                    var_name = target.id
                                    var_value = self.normal_statement(stmt.value)
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
                            func_name = self.normal_statement(sub_stmt.value.func)
                            c_code += make_indent()+f"{func_name}(self_{class_name}->"
    
                            for arg in sub_stmt.value.args:
                                if isinstance(arg, ast.Attribute) and isinstance(arg.value, ast.Name) and arg.value.id == "self":
                                    arg_name = arg.attr
                                    c_code += f"{arg_name}->"
    
                            c_code = c_code[:-2] + ");\n"
                        elif isinstance(sub_stmt, ast.AnnAssign):
                            self.declared_vars.add(sub_stmt.target.id)
                            c_code += make_indent()+f"{sub_stmt.annotation.id} {sub_stmt.target.id};\n"
                            
                            var_name = sub_stmt.target.id
                            var_value = self.normal_statement(sub_stmt.value)
                            c_code += make_indent()+f"{var_name} = {var_value};\n"
                            
                        
                        elif isinstance(sub_stmt, ast.BinOp):
                            self.normal_statement(sub_stmt)
                                
                        elif isinstance(sub_stmt, ast.Expression):
                            c_code += f"    {sub_stmt.body.value};\n"
                        
                        elif isinstance(sub_stmt, ast.Expr):
                            var_value = self.normal_statement(sub_stmt.value)
                            c_code += f"    {var_value};\n"
                                
                        elif isinstance(sub_stmt, ast.Assign):
                            for target in sub_stmt.targets:
                                if isinstance(target, ast.Name):
                                    if hasattr(sub_stmt.value,'func') and (sub_stmt.value.func.id in classes_id):
                                        var_name = target.id
                                        var_value = self.normal_statement(sub_stmt.value)
                                        c_code += f"    {var_name} = {var_value};\n"
                                    else:
                                        var_name = target.id
                                        if var_name not in self.declared_vars:
                                            c_code += f"    int {var_name};\n"
                                            self.declared_vars.add(var_name)
    
                                        for target in sub_stmt.targets:
                                            var_name = target.id
                                            var_value = self.normal_statement(sub_stmt.value)
                                            c_code += f"    {var_name} = {var_value};\n"
                        elif isinstance(sub_stmt, ast.Return):
                            return_value = self.normal_statement(sub_stmt.value)
                            c_code += f"    return {return_value};\n"
                        
                        elif isinstance(sub_stmt, ast.If):
                            c_code += self.handle_if_block(sub_stmt)
    
                        dec_indent()
                    c_code += "}\n\n"
    
            return c_code


class Func_Maker(Basic_Statement):
    def __init__(self):
        self.declared_vars = set()
        self.declared_class = {}
        self.func_name = None
        
    def translate_function(self,node):
        if isinstance(node, ast.FunctionDef):
            if hasattr(node.returns,"id") and node.returns != None:
                c_code = f"{node.returns.id} {node.name}("
            else:
                c_code = f"int {node.name}("
            
            self.func_name = node.name
            #For check delcared variable
            # print(ast.dump(node, indent=4))
            
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
                self.declared_vars.add(arg.arg) 
                
            inc_indent()
            
    
            for stmt in node.body:
                if isinstance(stmt, ast.AnnAssign):
                    self.declared_vars.add(stmt.target.id)
                    c_code += make_indent()+f"{stmt.annotation.id} {stmt.target.id};\n"
                    
                    var_name = stmt.target.id
                    var_value = self.normal_statement(stmt.value)
                    c_code += make_indent()+f"{var_name} = {var_value};\n"
                    
                
                elif isinstance(stmt, ast.BinOp):
                    c_code += self.normal_statement(stmt)
                        
                elif isinstance(stmt, ast.Expression):
                    c_code += make_indent() + f"{stmt.body.value};\n"
                
                elif isinstance(stmt, ast.Expr):
                    var_value = self.normal_statement(stmt.value)
                    c_code += make_indent() +  f"{var_value};\n"
                        
                elif isinstance(stmt, ast.Assign):
                    for target in stmt.targets:
                        if isinstance(target, ast.Name):
                            if hasattr(stmt.value,'func') and (stmt.value.func.id in classes_id):
                                var_name = target.id
                                var_value = self.normal_statement(stmt.value)
                                c_code += make_indent() + f"{var_name} = {var_value};\n"
                                self.declared_class[var_name] = stmt.value.func.id
                            else:
                                var_name = target.id
                                if var_name not in self.declared_vars:
                                    c_code += make_indent() + f"int {var_name};\n"
                                    self.declared_vars.add(var_name)
    
                                for target in stmt.targets:
                                    var_name = target.id
                                    var_value = self.normal_statement(stmt.value)
                                    c_code += make_indent() + f"{var_name} = {var_value};\n"
                elif isinstance(stmt, ast.Return):
                    return_value = self.normal_statement(stmt.value)
                    c_code += make_indent() + f"return {return_value};\n"
                
                elif isinstance(stmt, ast.If):
                    c_code += self.handle_if_block(stmt)
                    
                elif isinstance(stmt, ast.For):
                    print(ast.dump(stmt, indent=4))
                    loop_var = stmt.target.id
                    if len(stmt.iter.args) == 3:
                        start = self.normal_statement(stmt.iter.args[0])
                        end = self.normal_statement(stmt.iter.args[1])
                        step = self.normal_statement(stmt.iter.args[2])
                    elif len(stmt.iter.args) == 2:
                        start = self.normal_statement(stmt.iter.args[0])
                        end = self.normal_statement(stmt.iter.args[1])
                        step = "1"
                    
                    else:
                        start = "0"
                        end = self.normal_statement(stmt.iter.args[0])
                        step = "1"
            
                    c_code += make_indent() + f"for (int {loop_var} = {start}; {loop_var} < {end}; {loop_var} += {step}) {{\n"
                    
                    inc_indent()
                    c_code += self.translate_function(stmt)
                    dec_indent()
            
                    c_code += make_indent() + "}\n"
                    
            dec_indent()
            c_code += make_indent()+"}\n"
            
            return c_code
        
        else:
            c_code = ""
            for stmt in node.body:
                if isinstance(stmt, ast.AnnAssign):
                    self.declared_vars.add(stmt.target.id)
                    c_code += make_indent()+f"{stmt.annotation.id} {stmt.target.id};\n"
                    
                    var_name = stmt.target.id
                    var_value = self.normal_statement(stmt.value)
                    c_code += make_indent()+f"{var_name} = {var_value};\n"
                    
                
                elif isinstance(stmt, ast.BinOp):
                    c_code += self.normal_statement(stmt)
                        
                elif isinstance(stmt, ast.Expression):
                    c_code += make_indent() + f"{stmt.body.value};\n"
                
                elif isinstance(stmt, ast.Expr):
                    var_value = self.normal_statement(stmt.value)
                    c_code += make_indent() + f"{var_value};\n"
                        
                elif isinstance(stmt, ast.Assign):
                    for target in stmt.targets:
                        if isinstance(target, ast.Name):
                            if hasattr(stmt.value,'func') and (stmt.value.func.id in classes_id):
                                var_name = target.id
                                var_value = self.normal_statement(stmt.value)
                                c_code += make_indent() + f"{var_name} = {var_value};\n"
                                self.declared_class[var_name] = stmt.value.func.id
                            else:
                                var_name = target.id
                                if var_name not in self.declared_vars:
                                    c_code += make_indent() + f"int {var_name};\n"
                                    self.declared_vars.add(var_name)
    
                                for target in stmt.targets:
                                    var_name = target.id
                                    var_value = self.normal_statement(stmt.value)
                                    c_code += make_indent() + f"{var_name} = {var_value};\n"
                elif isinstance(stmt, ast.Return):
                    return_value = self.normal_statement(stmt.value)
                    c_code += make_indent() + f"return {return_value};\n"
                
                elif isinstance(stmt, ast.If):
                    c_code += self.handle_if_block(stmt)
                    
                elif isinstance(stmt, ast.For):
                    print(ast.dump(stmt, indent=4))
                    loop_var = stmt.target.id
                    if len(stmt.iter.args) == 3:
                        start = self.normal_statement(stmt.iter.args[0])
                        end = self.normal_statement(stmt.iter.args[1])
                        step = self.normal_statement(stmt.iter.args[2])
                    elif len(stmt.iter.args) == 2:
                        start = self.normal_statement(stmt.iter.args[0])
                        end = self.normal_statement(stmt.iter.args[1])
                        step = "1"
                    
                    else:
                        start = "0"
                        end = self.normal_statement(stmt.iter.args[0])
                        step = "1"
            
                    c_code += make_indent() + f"for (int {loop_var} = {start}; {loop_var} < {end}; {loop_var} += {step}) {{\n"
                    
                    inc_indent()
                    c_code += self.translate_function(stmt)
                    dec_indent()
            
                    c_code += make_indent() + "}\n"
                    
            return c_code

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
            temp_class_maker = Class_Maker()
            c_code += temp_class_maker.translate_class(node)
        elif isinstance(node, ast.FunctionDef) and node not in (func_node for class_node in classes for func_node in class_node.body):
            print(node.name)
            temp_func_maker = Func_Maker()
            c_code += temp_func_maker.translate_function(node)

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
        self.a = 30 + 50
        b:int = 30
        print(self.a)
        if b < 0:
            print("oh")
        if self.a > 0 and b < 10 and 3 == 4:
            print("hello")
            
def foo( a:int = 10 ):
    new_dds = dds(30+40,50)
    new_dds.out(30,40)
    x:int = new_dds.out(20,30,60) + 20
    x = (30 + 50)
    
    i:int;
    k:int =10
    
    for i in range(6):
        print(i)
        k = i
        
    print(a)
"""

    c_code = python_to_c(python_code)
    print('Converted C')
    print('##################################################################')
    print('##################################################################')
    print('##################################################################')
    print(c_code)
