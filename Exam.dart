class Employee {
  int id;
  String fullName;
  DateTime birthday;
  String address;
  String phoneNumber;

  Employee({
    required this.id,
    required this.fullName,
    required this.birthday,
    required this.address,
    required this.phoneNumber,
  });
}

class EmployeeManagementSystem {
  List<Employee> employees = [];

  // Function to add a new employee
  void addNewEmployee(Employee employee) {
    employees.add(employee);
  }

  // Function to get all employees
  List<Employee> getAllEmployees() {
    return employees;
  }

  // Function to update an employee
  void updateEmployee(int id, Employee updatedEmployee) {
    for (int i = 0; i < employees.length; i++) {
      if (employees[i].id == id) {
        employees[i] = updatedEmployee;
        break;
      }
    }
  }

  // Function to show all employees
  void showAllEmployees() {
    for (var employee in employees) {
      print("Employee ID: ${employee.id}");
      print("Full Name: ${employee.fullName}");
      print("Birthday: ${employee.birthday}");
      print("Address: ${employee.address}");
      print("Phone Number: ${employee.phoneNumber}");
      print("-----------------------");
    }
  }
}

void main() {
  var employeeSystem = EmployeeManagementSystem();

  // Adding employees
  employeeSystem.addNewEmployee(Employee(
    id: 1,
    fullName: "Quynh Nga",
    birthday: DateTime(2003, 5, 10),
    address: "Thai Binh",
    phoneNumber: "0182631818",
  ));

  employeeSystem.addNewEmployee(Employee(
    id: 2,
    fullName: "Van A",
    birthday: DateTime(1990, 8, 15),
    address: "Ha Noi",
    phoneNumber: "0876543210",
  ));

  // Showing all employees
  print("All Employees:");
  employeeSystem.showAllEmployees();

  // Updating an employee
  employeeSystem.updateEmployee(1, Employee(
    id: 1,
    fullName: "Hoa Phuong",
    birthday: DateTime(2003, 3, 20),
    address: "Hai Phong",
    phoneNumber: "0555558255",
  ));

  // Showing all employees after update
  print("\nUpdated Employees:");
  employeeSystem.showAllEmployees();
}
