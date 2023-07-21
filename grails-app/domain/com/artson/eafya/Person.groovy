package com.artson.eafya

class Person {

    int id
    String patientId
    String email
    String phoneNumber
    String city
    String address
    String postalCode
    Date dateCreated
    Date lastUpdated
    Boolean isDeceasedPatient = false
    String firstName
    String lastName
    String otherName
    String gender
    Date birthDate
    String maritalStatus
    String idNo
    String subLocation
    String village

    static constraints = {
        id unique: true
        patientId nullable: true
        maritalStatus nullable:true
        idNo nullable:true, unique:true
        firstName nullable: true
        otherName nullable:true
        lastName nullable:true
        birthDate nullable: true
        dateCreated nullable: true
        lastUpdated nullable: true
        subLocation nullable:true
        village nullable:true
        maritalStatus(inList:["Unknown", "Single", "Married", "Separated", "Divorced", "Widowed"])
        gender(inList:["Male", "Female"] )
        isDeceasedPatient nullable: true
        email nullable:true, email:true, unique:true
        dateCreated nullable:true
        phoneNumber nullable: true
        lastUpdated nullable:true
        city nullable:true
        address nullable:true
        postalCode nullable:true
    }

}
