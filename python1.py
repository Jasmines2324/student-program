def menu():
     print("\t\tMenu")  
     print("1. Display the whole file")  
     print("2. Display the student list with student IDs")  
     print("3. Display the student name given a student ID")
     print("4. Display the student's mark given a student ID")
     print("5. Display the maximum mark")  
     print("6. Display the minimum mark and corresponding student ID")
     print("7. Display all the students who has a pass mark")  
     print("8. Display student list in grade groups")  
     print("9. Quit")  
     option = input("\nEnter the number shown to select a menu item: ")
     return option


def display_whole_file(file_path):# display the whole file
     with open("C:\Users\Ciel\Desktop\class.txt", 'r') as file:  
         print(file.read())



def display_student_list(file_path):#display student list with students id
     with open("C:\Users\Ciel\Desktop\class.txt", 'r') as file:
         lines = file.readlines()  
         for line in lines:  
             print(line.strip())
             break


def display_student_name(file_path, student_id): #display the student name given student id
     with open("C:\Users\Ciel\Desktop\class.txt", 'r') as file:  
         lines = file.readlines()  
         for line in lines:
             parts = line.split(',')  
             if int(parts[0]) == int(student_id):  
                 print(parts[1])  
                 break


def display_student_mark(file_path, student_id): #display the student mark given student id
        with open("C:\Users\Ciel\Desktop\class.txt", 'r') as file:
            line = file.readlines()
            for line in lines:
                part = line.spilt(',')
                if int(parts[0]) == int(student_id):
                    print(parts[2])
                    break



def display_max_mark(file_path):  #display the maximum mark
        with open("C:\Users\Ciel\Desktop\class.txt", 'r') as file:  
            lines = file.readlines()  
            max_mark = float('-inf')  
            for line in lines:
                parts = line.split(',')  
                mark = float(parts[2])  
                if mark > max_mark:  
                   max_mark = mark  
                   print("Maximum mark: ", max_mark)
                   break



def display_min_mark_and_student_id(file_path):#display the minimum mark with student id
        with open("C:\Users\Ciel\Desktop\class.txt", 'r') as file:  
             lines = file.readlines()  
             min_mark = float('inf')  
             min_student_id = 0  
             for line in lines:  
                 parts = line.split(',')  
                 mark = float(parts[2])  
                 if mark < min_mark:  
                    min_mark = mark  
                    min_student_id = int(parts[0])  
                    print("Minimum mark: ", min_mark)  
                    print("Student ID: ", min_student_id)
                    break




def display_pass_students(file_path):  #display the pass studnets
        with open("C:\Users\Ciel\Desktop\class.txt", 'r') as file:  
             lines = file.readlines()  
             pass_students = []  
             for line in lines:  
                 parts = line.split(',')  
                 mark = float(parts[2])  
                 if mark >= 60:  
                    pass_students.append((int(parts[0]), parts[1]))  
             pass_students.sort()    
             for student in pass_students:  
                 print(student)
                 break


def display_group_1(file_path):
        with open("C:\Users\Ciel\Desktop\class.txt",'r') as file:
            lines = file.readliness()
            gruop_1 = []
            for line in lines:
                parts = line.spilt(',')
                mark = float(part[2])
                if mark >= 60:
                    group_1.append((int(parts[0]),parts[1]))
            group_1.sort()
            for student in group_1:
                print(student)
                break


def system_quit(system):
    sys.exit()
raw_input()



