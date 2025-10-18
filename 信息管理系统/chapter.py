str_print = "姓名：{}\t数学：{}\t语文：{}\t英语：{}\t总分：{}"
grade_list = []
while 1:
    print("欢迎使用信息管理系统")
    print("1. 添加学生信息")
    print("2. 全部学生信息")
    print("3. 查询学生信息")
    print("4. 删除学生信息")
    print("5. 修改学生信息")
    print("0. 退出系统")
    action =input("请输入你的操作:")
    
    if action == "1":
        name = input("请输入你的姓名:")
        math = int(input("请输入你的数学成绩:"))
        chinese = int(input("请输入你的语文成绩:"))
        english = int(input("请输入你的英语成绩:"))
        total =math + chinese + english
        grade_list.append([name,math,chinese,english,total])
        print([name,math,chinese,english,total])
        print(str_print.format(name,math,chinese,english,total))
    elif action == "2":
        for info in grade_list:
            print(str_print.format(*info))
    elif action =="3":
        name = input("请输入你需要查询学生的姓名:")
        for info in grade_list:
            if name in info:
                print(str_print.format(*info))
                break
        else:
            print("此学生不存在")
    elif action == "4":
        name = input("请输入你需要查询学生的姓名:")
        for info in grade_list:
            if name in info:
                info_=grade_list.pop(grade_list.index(info))
                print(f"删除{info_}成功")
                break
        else:
            print("此学生不存在")
            
        
    elif action == "5":
        name = input("请输入你需要查询学生的姓名:")
        for info in grade_list:
            if name in info:
                index = grade_list.index(info)
                break
        else:
            print("此学生不存在")
            continue
        math = int(input("请输入你的数学成绩:"))
        chinese = int(input("请输入你的语文成绩:"))
        english = int(input("请输入你的英语成绩:"))
        total =math + chinese + english
        grade_list[index][1:] = [math,chinese,english,total]
        print("修改成功",grade_list[index])
        


    elif action == "0":
        print("退出系统")
        break
    else:
        print("输入信息有误,请重新输入")