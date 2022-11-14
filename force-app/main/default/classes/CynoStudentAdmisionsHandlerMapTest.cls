@IsTest
public with sharing class CynoStudentAdmisionsHandlerMapTest {
    testMethod static void testMapAdmissionHandler() {
        CynoStudentAdmisionsHandlerMap handler = new CynoStudentAdmisionsHandlerMap();
        System.assertEquals(0, handler.studentsMap.size());
    }
}