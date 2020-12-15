@RestResource(urlMapping='/Reservations/*')
global class ReservationsAPIClass {
    @HttpGet
    global static List<Reservation__c> name() {
        List<Reservation__c> res;
        
        try{
            res = [SELECT Id, Name FROM Reservation__c];
        } catch(Exception e){
            System.debug(e.getMessage());
        }
        
        return res;
    }
}
