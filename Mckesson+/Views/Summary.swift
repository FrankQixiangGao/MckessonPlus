// app

import SwiftUI


struct Patient: Identifiable, Hashable {
    var id = UUID()
    let name: String
}

struct Summary: View {
    let PatientsMonday: [Patient] =
    [
        .init(name: "John Smith, 10:00am - 10:30am"),
        .init(name: "Jamie Johnson, 2:00pm - 2:30pm"),
    ]
    
    let PatientsTuesday: [Patient] =
    [
        .init(name: "Telly Miller, 11:00am - 11:30am"),
        .init(name: "Jamie Thompson, 3:00pm - 3:30pm"),
    ]
    
    let PatientsWednesday: [Patient] =
    [
        .init(name: "Luke Jones, 10:30am - 11:0am"),
        .init(name: "Jamie Davis, 2:00pm - 2:40pm"),
    ]
    
    let PatientsThursday: [Patient] =
    [
        .init(name: "John Wilson, 10:00am - 10:30am"),
        .init(name: "Walker Clark, 2:00pm - 3:30pm"),
    ]
    
    let PatientsFriday: [Patient] =
    [
        .init(name: "John Lewis, 10:00am - 10:30am"),
        .init(name: "Nelson Robinson, 2:00pm - 2:15pm"),
    ]
    
    var body: some View{
        NavigationStack{
            List(PatientsMonday){ patient in
                Section("Monday"){
                    ForEach(PatientsMonday) { patient in NavigationLink(patient.name,
                                            value: patient)
                    }
                }
                Section("Tuesday"){
                    ForEach(PatientsTuesday) { patient in NavigationLink(patient.name,
                                            value: patient)
                    }
                }
                Section("Wednesday"){
                    ForEach(PatientsWednesday) { patient in NavigationLink(patient.name,
                                            value: patient)
                    }
                }
                Section("Thursday"){
                    ForEach(PatientsThursday) { patient in NavigationLink(patient.name,
                                            value: patient)
                    }
                }
                Section("Friday"){
                    ForEach(PatientsFriday) { patient in NavigationLink(patient.name,
                                            value: patient)
                    }
                }
            }
            .navigationDestination(for: Patient.self){
                patient in Text(patient.name)
            }
        }
    }
}

struct Summary_Previews: PreviewProvider {
    static var previews: some View {
        Summary()
    }
}

